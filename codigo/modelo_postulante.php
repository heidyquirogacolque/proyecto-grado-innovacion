<?php
/**
 * Modelo Postulante (M) - PDO PostgreSQL 16.4
 * Sistema Web de Inscripción BTH San Julián - V2.0 MVC
 * Entidad de dominio para persistencia ACID
 */

declare(strict_types=1);

class ModeloPostulante {
    private PDO $pdo;

    public function __construct(PDO $pdo) {
        $this->pdo = $pdo;
    }

    public function obtenerPorCI(string $ci): ?array {
        $stmt = $this->pdo->prepare("SELECT * FROM postulante WHERE ci = :ci LIMIT 1");
        $stmt->execute([':ci' => $ci]);
        $row = $stmt->fetch(PDO::FETCH_ASSOC);
        return $row ?: null;
    }

    public function registrarDocumentacion(int $idPostulante, array $checks, string $funcionario): bool {
        $sql = "UPDATE matricula_documental
                SET libretas_secundaria_ok = :lib, ci_tutor_ok = :cit, ci_postulante_ok = :cip,
                    certificado_nacimiento_ok = :cert, fecha_verificacion = NOW(), funcionario_auditor = :func
                WHERE id_postulante_fk = :id";
        $stmt = $this->pdo->prepare($sql);
        return $stmt->execute([
            ':lib' => $checks['libretas'],
            ':cit' => $checks['ci_tutor'],
            ':cip' => $checks['ci_postulante'],
            ':cert' => $checks['certificado'],
            ':func' => $funcionario,
            ':id' => $idPostulante
        ]);
    }

    public function asignarParalelo(int $idPostulante, string $curso, string $paralelo): bool {
        $sql = "INSERT INTO asignacion_paralelo (id_postulante_fk, curso, paralelo, gestion, unidad_educativa_origen)
                SELECT :id, :cur, :par, '2026', unidad_educativa_origen FROM postulante WHERE id_postulante = :id2";
        $stmt = $this->pdo->prepare($sql);
        return $stmt->execute([':id' => $idPostulante, ':cur' => $curso, ':par' => $paralelo, ':id2' => $idPostulante]);
    }
}
