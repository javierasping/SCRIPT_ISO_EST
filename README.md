# SCRIPT_ISO_EST
Grupo conformado por Jose Carlos Rodriguez , Jairo Dominguez , Miguel Figueroa , Noelia Medina , Pedro Pozo y Francisco Javier Cruces 
El programa esta conformado por dos ficheros uno principal y uno que contiene las funciones .

Hacer que las funciones que tengan que devolver algo , lo almacenen en una variable para que podamos reutilizarlo para la ejecucion de la siguiente funcion .

Crearemos el siguiente esquema :

![](./LVM_R5.png)

Funciones:
1. Comprobar si somos root (JAIRO)(FINALIZADA)
2. Comprobar si tenemos conexion a internet (PEDRO)(FINALIZADA)
3. Comprobar en que sistemas operativo estamos (NOELIA)(FINALIZADA)
4. Actualizar los repositorios (dependiendo si es Debian o Rocky)(NOELIA)(FINALIZADA)
5. Ver si los paquetes lvm2 mdadm dosfstools sgdisk(PEDRO)(FINALIZADA)
6. Instalar los paquetes si no estan en el sistema , solo los que falten en la anterior funcion y teniendo en cuenta el SO (JAIRO) (FINALIZADA)
7. Comprobar el numero de dispositivos libres hay y ademas que estos esten vacios (Necesitamos 4 )(MIGUEL)(FINALIZADA)
8. Si hay 4 , particionaremos 1 disco como en la practica 5 (MIGUEL)(PENDIENTE)
9. Copiaremos la tabla de particiones del disco 1 al disco 2,3,4. (PEPE)(PENDIENTE)
10. Crearemos el raid 5 , 4to disco spare (PEPE)(PENDIENTE)
11. Creamos el volumen fisico (JAVIER)(PENDIENTE)
12. Creamos el grupo de volumenes (JAVIER)(PENDIENTE)
13. Creamos los discos logicos (JAVIER)(PENDIENTE)


### Acceso a instancia:
IP: 172.22.201.199

Usuario: debian

Contraseña: 3cvDKOMfOPmZiNHuRG41qZ3QUTgJ5ADuBSbSzOeeC3vHDbwzKL
