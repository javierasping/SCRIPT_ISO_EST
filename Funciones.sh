#!/bin/bash
#Fichero de funciones

#comprobamos si tenemos conexión

function f_conexion {
         if ping -c 1 -q 8.8.8.8 > /dev/null; then
         echo -e "Tiene conexión"
         return 0
         else
         echo -e "No tiene conexión"
         return 1
         fi
 }