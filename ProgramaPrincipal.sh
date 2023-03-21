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
if [ $? -eq 2 ]; then
    f_actualización_repositorios_debian
    if [ $? -eq 0 ]; then
        for i in lvm2 mdadm; do
            f_existepaquete_instala_debian $i
        done
    fi
fi
if [ $? -eq 3 ]; then
    f_actualización_repositorios_rocky
    if [ $? -eq 0 ]; then
        for i in lmv2 mdadm; do
            f_existepaquete_instala_rocky $i
        done
    fi
fi




#Detectar discos vacios
f_detectadiscosvacios
if [ $? -ne 0 ]; then
    exit 1
fi

#Particionado del disco1
f_particionaundisco


#Creamos /dev/vdb2 ejmplo
disco1_1=${disco1}1
disco1_2=${disco1}2
disco1_3=${disco1}3
disco1_4=${disco1}4
disco1_5=${disco1}5

disco2_1=${disco2}1
disco2_2=${disco2}2
disco2_3=${disco2}3
disco2_4=${disco2}4
disco2_5=${disco2}5

disco3_1=${disco3}1
disco3_2=${disco3}2
disco3_3=${disco3}3
disco3_4=${disco3}4
disco3_5=${disco3}5

disco4_1=${disco4}1
disco4_2=${disco4}2
disco4_3=${disco4}3
disco4_4=${disco4}4
disco4_5=${disco4}5





f_copiado_tablas_particiones

f_creacion_raid5


