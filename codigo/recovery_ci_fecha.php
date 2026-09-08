<?php
/**
 * Módulo Autónomo de Recuperación de Credenciales (M3)
 * Sistema Web de Inscripción BTH San Julián - Versión 2.0
 * Patrón MVC: Controlador - Validación C.I. + Fecha Nacimiento (<2 min)
 */

declare(strict_types=1);

require_once __DIR__ . '/conexion.php';

function recuperarCredenciales(PDO $pdo, string $ci, string $fechaNacimiento): array {
    $sql = "SELECT id_postulante, ci, nombres, apellidos, unidad_educativa_origen
            FROM postulante
            WHERE ci = :ci AND fecha_nacimiento = :fnac
            LIMIT 1";
    $stmt = $pdo->prepare($sql);
    $stmt->execute([':ci' => $ci, ':fnac' => $fechaNacimiento]);
    $postulante = $stmt->fetch(PDO::FETCH_ASSOC);

    // Auditoría anonimizada
    $log = $pdo->prepare("INSERT INTO auditoria_credenciales (ci, ip_cliente, fecha_hora, resultado_validacion)
                          VALUES (:ci, :ip, NOW(), :res)");
    $log->execute([
        ':ci' => substr($ci, -4), // solo últimos 4 dígitos por privacidad
        ':ip' => $_SERVER['REMOTE_ADDR'] ?? '0.0.0.0',
        ':res' => $postulante ? 'EXITO' : 'FALLO'
    ]);

    if (!$postulante) {
        return ['status' => false, 'mensaje' => 'Datos no coinciden. Verifique C.I. y fecha de nacimiento.'];
    }
    // Generar token temporal (hash) para reseteo - expira en 15 min
    $token = bin2hex(random_bytes(16));
    return ['status' => true, 'postulante' => $postulante, 'token' => $token];
}
