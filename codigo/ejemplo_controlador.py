#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Módulo de Monitoreo y Control Automatizado
Proyecto de Grado - Bachillerato Técnico Humanístico (BTH)
Año: 2026
"""

import time


def leer_sensor(pin_sensor: int) -> float:
    """Simula la lectura de un sensor analógico."""
    # Lectura de voltaje y conversión a unidades porcentuales
    lectura_cruda = 512  # Valor leído del conversor ADC
    porcentaje = (lectura_cruda / 1023.0) * 100.0
    return round(porcentaje, 2)


def evaluar_condiciones(valor: float, umbral: float) -> bool:
    """Verifica si el valor excede el límite de seguridad establecido."""
    if valor > umbral:
        print(f"[ALERTA] Valor actual ({valor}%) superó el umbral máximo ({umbral}%).")
        return False
    print(f"[OK] Sistema en estado óptimo ({valor}% <= {umbral}%).")
    return True


def ejecutar_ciclo_control():
    """Ejecuta el bucle principal de adquisición y procesamiento."""
    pin_entrada = 4
    umbral_limite = 75.0
    print("Iniciando monitoreo del sistema automatizado...")

    for ciclo in range(1, 4):
        valor_actual = leer_sensor(pin_entrada)
        estado = evaluar_condiciones(valor_actual, umbral_limite)
        time.sleep(1)


if __name__ == "__main__":
    ejecutar_ciclo_control()
