.data
 /* Definicion de datos */
 mensaje: .ascii "Ingresar texto 4 caracteres!:\n"
 cadena:  .ascii "     "


.text                   @ Defincion de codigo del programa
.global main            @ global, visible en todo el programa

main:
        // -------- Salida por pantalla ----------
                mov r7, #4              // Salida por pantalla
                mov r0, #1              // Salida de cadena
                mov r2, #32             // Tamaño de la cadena
                ldr r1, =mensaje
                swi 0                   // invoca a la subrutina de so

                // --------- Ingreso por teclado -----------
                mov r7, #3              // Lectura por teclado
                mov r0, #0              // Ingresa cadena
                mov r2, #5              // Leer # caracteres
                ldr r1, =cadena // donde se guarda la cadena ingresada
                swi 0

                // -------- Salida por pantalla ----------
                mov r7, #4              // Salida por pantalla
                mov r0, #1              // Salida de cadena
                mov r2, #4              // Tamaño de la cadena
                ldr r1, =cadena
                swi 0                   // invoca a la subrutina de so


                mov r7, #1      // Salida al sistema
                swi 0