# Práctica de Compiladores y Lenguajes — 13 ejercicios Lex/Flex

**Escuela Politécnica Nacional**  
**Asignatura:** Compiladores y Lenguajes  
**Integrantes:** John Durán, Emily Pacheco y Emily Vargas  
**Período:** 2026-B

## Descripción del proyecto

Este repositorio reúne **13 ejercicios prácticos de análisis léxico** desarrollados con **Lex/Flex y GCC en Linux**. La práctica permite explorar cómo las expresiones regulares definen patrones de entrada y cómo el analizador ejecuta acciones cuando reconoce esos patrones.

Los ejercicios avanzan desde reglas sencillas de reconocimiento hasta el procesamiento de tokens, operadores, normalización de texto y conteo de caracteres. Cada carpeta contiene el código y las evidencias correspondientes.

## Organización del repositorio

Los ejercicios están disponibles en la carpeta [`IB`](IB/):

| Ejercicio | Carpeta | Tema |
|:--:|:--|:--|
| 1 | [UNO](IB/UNO/) | Consultar código e informe de la práctica |
| 2 | [DOS](IB/DOS/) | Reconocimiento de comandos y coincidencias en cadenas |
| 3 | [TRES](IB/TRES/) | Consultar código e informe de la práctica |
| 4 | [CUATRO](IB/CUATRO/) | Reconocimiento de identificadores y tipos de números |
| 5 | [CINCO](IB/CINCO/) | Consultar código e informe de la práctica |
| 6 | [SEIS](IB/SEIS/) | Identificadores, palabras reservadas y números enteros |
| 7 | [SIETE](IB/SIETE/) | Operadores aritméticos y relacionales |
| 8 | [OCHO](IB/OCHO/) | Conversión de mayúsculas a minúsculas |
| 9 | [NUEVE](IB/NUEVE/) | Conteo de ocurrencias de los dígitos del 0 al 9 |
| 10 | [DIEZ](IB/DIEZ/) | Consultar código e informe de la práctica |
| 11 | [ONCE](IB/ONCE/) | Consultar código e informe de la práctica |
| 12 | [DOCE](IB/DOCE/) | Consultar código e informe de la práctica |
| 13 | [TRECE](IB/TRECE/) | Consultar código e informe de la práctica |

> Los detalles de cada ejercicio se documentan en su carpeta y en el informe correspondiente.

## Herramientas utilizadas

- **Lex/Flex:** generación de analizadores léxicos a partir de patrones y reglas.
- **GCC:** compilación del código C generado por Flex.
- **Linux/Ubuntu:** entorno de ejecución y pruebas.
- **Git y GitHub:** organización y entrega colaborativa de los archivos.

## Cómo ejecutar un ejercicio

En una terminal Linux con Flex y GCC instalados, entra en la carpeta del ejercicio que quieras probar. Por ejemplo, para **SEIS**:

```bash
cd IB/SEIS
flex seis.l
gcc lex.yy.c -lfl -o a.out
./a.out < entrada.txt
```

Para guardar la salida y revisarla:

```bash
./a.out < entrada.txt > salida.txt
cat salida.txt
```

En los demás ejercicios, reemplaza `SEIS` y `seis.l` por el directorio y archivo `.l` correspondientes. Algunos analizadores pueden requerir entradas o instrucciones específicas descritas en su informe.

## Archivos de cada práctica

La estructura de entrega contempla:

| Archivo | Función |
|---|---|
| `*.l` | Reglas y acciones del analizador léxico |
| `entrada.txt` | Datos de prueba utilizados |
| `salida.txt` | Resultados de la ejecución |
| `lex.yy.c` | Código C generado por Flex |
| `a.out` | Ejecutable generado por GCC en Linux |
| Informe en PDF | Explicación, capturas y verificación de resultados |

Los ejecutables `a.out` están compilados para un entorno Linux compatible; no se ejecutan directamente en Windows PowerShell.

## Video de presentación y demostración

Como complemento de la práctica, el equipo realizó una presentación conversada donde explica decisiones de implementación, resultados y pruebas de algunos de los analizadores, mostrando su funcionamiento en la terminal.

**[▶ Ver el podcast completo en Google Drive](https://drive.google.com/file/d/18yJQ2ILMRZHlpX3a5zWHsbN-_Im9c0yi/view?usp=sharing)**

## Objetivo académico

Comprender el papel del **análisis léxico** en el proceso de compilación, mediante la definición de expresiones regulares, el reconocimiento de lexemas, la clasificación de tokens y la validación práctica de entradas y salidas.
