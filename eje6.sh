echo "Ingrese el sueldo del empleado:"
read sueldo

echo "Ingrese el rango del empleado (del 1 al 3):"
read rango

case $rango in
    1)
        asignacion=$(echo "$sueldo * 0.83" | bc)
        ;;
    2)
        asignacion=$(echo "$sueldo * 1.2" | bc)
        ;;
    3)
        asignacion=$(echo "$sueldo * 3" | bc)
        ;;
    *)
        echo "Rango inválido. Por favor, ingrese un rango del 1 al 3."
        exit 1
        ;;
esac

echo "La asignación que percibirá el empleado es: $asignacion"
