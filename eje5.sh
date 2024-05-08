echo "Ingrese un número natural entre 1 y 10:"
read num_usuario

num_aleatorio=$((RANDOM % 10 + 1))

echo "El número aleatorio es: $num_aleatorio"
