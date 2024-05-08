#!/bin/bash
INTERFAZ="enp2s0"
#función
obtener_bytes_recibidos() {
    cat "/sys/class/net/$INTERFAZ/statistics/rx_bytes"
}

> /tmp/datos # se crea la carpeta vacía

while true; do #creo el bucle, que es infinito
    hora=$(date +"%H:%M:%S") #se obtiene el tiempo
    bytes_recibidos=$(obtener_bytes_recibidos) #se obtienen los bytes
    echo "$hora $bytes_recibidos" >> /tmp/datos # y se guardan en el archivo creado, hay un espacio entre ellos
    sleep 1 #es para recopilar datos cada 1 segundo
done
