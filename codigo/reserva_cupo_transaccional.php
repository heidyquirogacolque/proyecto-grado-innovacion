<?php
/**
 * Modulo Transaccional de Reserva Atomica de Cupos
 * Sistema Web de Inscripcion BTH San Julian - Version 2.0
 * Backend: PHP 8.x | Base de Datos: PostgreSQL 16
 */

declare(strict_types=1);

require_once __DIR__ . '/conexion.php';

function reservarCupoVocacional(
    PDO $pdo,
    string $ci,
    string $nombres,
    string $apellidos,
    string $fechaNacimiento,
    string $unidadEducativa,
    int $idEspecialidad
): array {
    try {
        $pdo->beginTransaction();
        $sqlLock = "SELECT cupos_disponibles, nombre FROM especialidad WHERE id_especialidad = :id_esp FOR UPDATE";
        $stmtLock = $pdo->prepare($sqlLock);
        $stmtLock->execute([':id_esp' => $idEspecialidad]);
        $carrera = $stmtLock->fetch(PDO::FETCH_ASSOC);
        if (!$carrera) {
            $pdo->rollBack();
            return ['status' => false, 'mensaje' => 'La especialidad solicitada no existe.'];
        }
        if ((int)$carrera['cupos_disponibles'] <= 0) {
            $pdo->rollBack();
            return ['status' => false, 'mensaje' => 'Vacantes agotadas para esta carrera.'];
        }
        $sqlInsert = "INSERT INTO postulante (ci, nombres, apellidos, fecha_nacimiento, unidad_educativa_origen, id_especialidad_fk) VALUES (:ci, :nom, :ape, :fnac, :ue, :id_esp)";
        $stmtInsert = $pdo->prepare($sqlInsert);
        $stmtInsert->execute([
            ':ci' => $ci,
            ':nom' => $nombres,
            ':ape' => $apellidos,
            ':fnac' => $fechaNacimiento,
            ':ue' => $unidadEducativa,
            ':id_esp' => $idEspecialidad
        ]);
        $sqlUpdate = "UPDATE especialidad SET cupos_disponibles = cupos_disponibles - 1 WHERE id_especialidad = :id_esp";
        $stmtUpdate = $pdo->prepare($sqlUpdate);
        $stmtUpdate->execute([':id_esp' => $idEspecialidad]);
        $pdo->commit();
        return [
            'status' => true,
            'mensaje' => 'Reserva de cupo confirmada exitosamente.',
            'carrera' => $carrera['nombre']
        ];
    } catch (PDOException $e) {
        if ($pdo->inTransaction()) {
            $pdo->rollBack();
        }
        return ['status' => false, 'mensaje' => 'Error transaccional: ' . $e->getMessage()];
    }
}
