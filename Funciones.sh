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



#3.Comprobar en que sistemas operativo estamos


 #4. Comprobar si están los paquetes LVM2, mdadm, dosfstools, sgdisk

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


function f_existedosfstools {
        if  which dosfstools; then
        echo "El comando dosfstools se encuentra en el sistema."
        return 0
        else
        echo "El comando dosfstools no se encuentra en el sistema."
        return 1
        fi
}


function f_existegdisk {
        if  which sgdisk; then
        echo "El comando sgdisk se encuentra en el sistema."
        return 0
        else
        echo "El comando sgdisk no se encuentra en el sistema."
        return 1
        fi
}