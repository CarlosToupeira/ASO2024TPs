#!/bin/bash
echo "Ingrese su nombre para mostrar su edad probable: "
read nombreindividuo

respuesta=$(curl -s "https://api.agify.io/?name=${nombreindividuo}")

edad=$(echo $respuesta | jq '.age')

echo "La edad probable del nombre ingresado '$nombreindividuo' es: $edad años."