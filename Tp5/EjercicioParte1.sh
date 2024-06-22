#!/bin/bash
echo "Calculadora con suma, resta, multiplicación, división"

# Solicitar al usuario que ingrese los números
echo "Ingrese el primer número: "
read numero1
echo "Ingrese el segundo número: "
read numero2

# Solicitar al usuario que seleccione la operación
echo "¿Qué operación le gustaría hacer? (suma | resta | multiplicacion | division)"
read operador

# Realizar la operación seleccionada utilizando un case
case $operador in
    suma)
        resultado=$((numero1 + numero2))
        echo "La suma de los números es: $resultado"
        ;;
    resta)
        resultado=$((numero1 - numero2))
        echo "La resta de los números es: $resultado"
        ;;
    multiplicacion)
        resultado=$((numero1 * numero2))
        echo "La multiplicación de los números es: $resultado"
        ;;
    division)
        if [ $numero2 -ne 0 ]; then
            resultado=$(echo "scale=2; $numero1 / $numero2" | bc)
            echo "La división de los números es: $resultado"
        else
            echo "Error: División por cero no permitida"
        fi
        ;;
    *)
        echo "Operador no válido. Intente otra vez."
        ;;
esac
