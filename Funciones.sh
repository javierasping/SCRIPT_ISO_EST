#Fichero de funciones

#1. Función para comprobar que somos root.

#2. Función para comprobar conexión a internet.

function f_conexion {
         if ping -c 1 -q 8.8.8.8 > /dev/null; then
         echo -e "Tiene conexión"
         return 0
         else
         echo -e "No tiene conexión"
         return 1
         fi
 }

#3. Función para comprobar que sistema operativo estamos utilizando.

function f_sistemaoperativo {
                  cat /etc/os-release | grep 'ID'
              echo -e “El sistema $sistema operativo es:”
}


#4. Función para actualizar los repesitorios.

function f_actualización {
            sudo apt update -y
            if [ $? -eq 0 ]; then
            echo -e “Se han actualizado los repositorios”
            else
            echo -e “No se han podido actualizar por repositorios”
            exit 1
            fi
}

#5. Función para ver si los paquetes están el sistema ( lvm2 mdadm dosfstool)

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

#6. Función para instalar dichos paquetes si están el sistema.

#7. Función para comprobar el numero de dispositivos libres hay y además que>

#8. Función para partcionar un disco como en la práctica 5.

#9. Función para copiar la tabla de partciones en los discos 2,3,4.

#10. Función para crear un RAID 5 con el 4 disco como spare.

#11. Función para crear el volumen físico.

#12. Función para crear grupo de volúmenes.

#13. Función creamos los discos lógicos.

