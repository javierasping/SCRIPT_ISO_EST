# SCRIPT_ISO_EST
Grupo conformado por Jose Carlos Rodriguez , Jairo Dominguez , Miguel Figueroa , Noelia Medina , Pedro Pozo y Francisco Javier Cruces 
El programa esta conformado por dos ficheros uno principal y uno que contiene las funciones .

Crearemos el siguiente esquema :

![](./LVM_R5.png)

Funciones:
1. Comprobar si tenemos conexion a internet 
2. Comprobar en que sistemas operativo estamos
3. Actualizar los repositorios (dependiendo si es Debian o Rocky)
4. Ver si los paquetes lvm2 mdadm dosfstools sgdisk  
5. Comprobar el numero de dispositivos libres hay y ademas que estos esten vacios (Necesitamos 4 )
6. Si hay 4 , particionaremos 1 disco como en la practica 5
7. Copiaremos la tabla de particiones del disco 1 al disco 2,3,4.
8. Crearemos el raid 5
9. Creamos el volumen fisico
10. Creamos el grupo de volumenes
11. Creamos los discos logicos 

### Acceso a instancia:
IP: 172.22.201.199

Usuario: debian

Contraseña: debian
