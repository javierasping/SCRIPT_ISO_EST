#!/bin/bash
#Fichero de funciones

#1. comprobamos si tenemos conexión

function f_conexion {
         if ping -c 1 -q 8.8.8.8 > /dev/null; then
         echo -e "Tiene conexión"
         return 0
         else
         echo -e "No tiene conexión"
         return 1
         fi
 }

 #4. Comprobar si están los paquetes

 function f_existeLVM2 {
        if  which lvm2; then
        echo "El comando lvm2 se encuentra en el sistema."
        return 0
        else
        echo "El comando lvm2 no se encuentra en el sistema."
        return 1
        fi
}

function f_existemdadm {
        if  which mdadm; then
        echo "El comando mdadm se encuentra en el sistema."
        return 0
        else
        echo "El comando mdadm no se encuentra en el sistema."
        return 1
        fi
}