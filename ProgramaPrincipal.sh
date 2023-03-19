#!/bin/bash
#ProgramaPrincipal

#Enlazar programa funcional con el de funciones
. ./Funciones.sh

#1.Comprobamos si somsos root
f_somosroot
if [ $? -ne 0 ]; then
    exit 1
fi


#2.Comprobar si tenemos conexion a internet 
f_conexion
if [ $? -ne 0 ]; then
    exit 1
fi

#3. Función para comprobar que sistema operativo estamos utilizando.

#f_sistemaoperativo Noelia --> No hace lo que se pide  corregido en f_sistema_operativo_V2
f_sistema_operativo_V2



f_detectadiscosvacios
if [ $? -ne 0 ]; then
    exit 1
fi


#5. Función para ver si los paquetes están el sistema ( lvm2 mdadm dosfstool sgdisk)
f_existepaquete lvm2
f_existepaquete mdadm
f_existepaquete dosfstools
f_existepaquete sgdisk