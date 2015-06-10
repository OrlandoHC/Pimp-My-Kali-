#!/bin/bash
if [[ $EUID -ne 0 ]]; then
echo "Este script debe ser ejecutado por el usuario Root" 1>&2
exit 1
fi
# LISTA DE CAMBIOS 
# Version 1.1 Beta (25/05/15)
#-MODS
#	- Ejecucion de Si/No Insensible a Mayusculas o Minusculas.
#	- Condicion para seleccion de Arquitectura x86/x64.
#	- Se creo un repositporio para las apps dedicadas (Minidwep,Feeding Bootle y Sublime Text).
#	- Se Movieron los antiguos archivos numix.zip y elementary al nuevo repositorio.
#	- Gkrellm ha sido movido al nuevo repositorio.
#	- Enlace al repositorio ---> http://orlandohc.ddns.net/repo
#	- Leyenda para cancelacion de reinicio presionando CTRL + C.
#-APPS
#	- MinidWep
#	- Feeding Bootle
#	- Sublime Text
#	- File Roller
#
# Versión 1.0 beta (22/03/15)
#-MODS
#	- Condición de Ejecución restrictiva para usuarios Root.
#	- Comprobación de Conexion a Internet, En caso de no contar con conexión el script aborta.
#	- Al finalizar, Pimp My Kali reinicia el sistema en 1 minuto para que surtan efecto las modificaciones.
#	- Dentro del Banner se agrego mi pagina web www.orlandohc.org y el @OrlandoHC esto con fines informativos y didácticos.
#	- Marcas Sleep para facil comprensión del usuario acerca proceso que se lleva a cabo en tiempo real.
#-APPS
#	- Se Eliminó Open Office de la lista de Apps, esto para disminuir el tiempo.
#
# Versión 1.1 alpha
#-MODS
#	- Interfaz que lanza el script correspondiente para personalizar Kali Linux.
#	- Desactivación De Cursos Parpadeante.
#	- Instalación de GKrellM Barra de Herramientas.
#	- Activación De Configuración Avanzada, Escritorio, Extensiones, Gnome-Shell,
#	Nautilus, Tema, Tipografias y Ventanas (Mejor Conocido como Gnome Tweak Tool).
#	- Personalización Del Entorno Tema Numix e Iconos Elementary.
#-APPS
#	- Ark
#	- HTop
#	- Open Office
#	- Audacious
#	- Shutter
#	- Filezilla
#	- Puty
#	- K3b
#
# Versión 1.0 alpha (Inicial - No Disponible)
#-MODS
#	- Mejoras estéticas.
#	- Se cambio el nombre del dominio del server a orlandohc.ddns.net.
#	- Creación de log lista de cambios.
#	- Alsa Util (Audio Ya no Inicia en Mute)
#-APPS
#	- Tor
#	- Nethogs
#	- GTKRecord My Desktop
#	- Gdebi
#	- Flash Plugin
#
sc(){
echo -e "
############################################################
##                                                        ##
##    __           __                                     ##
##   |__) |  |\/| |__)     |\/| \ /    |__/  /\  |    |   ##
##   |    |  |  | |        |  |  |     |  \ /~~\ |___ |   ##
##                                                        ##
##                         1.1-beta                       ##
##                By: Masterk3y (@OrlandoHC) 	          ##
##                    www.orlandohc.org      	          ##
##                                                        ##
############################################################
"
echo -e "\033[1;37m[- Script Automatizado para Personalizar Kali Linux x86/x64 -]\033[0m \n "
echo -e "\033[1;37mInstrucciones: S/s = Instalar  N/n = Cancelar Instalacion \033[0m \n "
echo -e "Deseas Personalizar tu Kali Linux? [ \033[0;32mS/s\033[0m / \033[0;31mN/n\033[0m ]: \c ";
read respuesta
if [ $(echo $respuesta | tr -s '[:upper:]' '[:lower:]') = "s" ]; then
echo -e "\033[0;31m[+]\033[0m Comprobando Conexion a Internet...";
sleep 3
if [ "`ping -c 1 www.google.com`" ]
then
	echo -e "\033[0;31m[+]\033[0m Ping Exitoso, Status = Conectado";
	sleep 3
	else
	echo -e "\033[0;31m[+]\033[0m Ping Muerto, Al parecer no tienes conexion a Internet, Verifica y reintenta nuevamente."; exit 1
fi
sleep 3
echo -e "\033[0;31m[+]\033[0m Comenzando Personalizacion, No Apague ni Desconecte su Equipo";
echo -e "\033[0;31m[+]\033[0m Deshabilitando Cursor Parpadeante";
gsettings set org.gnome.desktop.interface cursor-blink false
echo -e "\033[0;31m[+]\033[0m Instalando Ark ";
apt-get install ark
echo -e "\033[0;31m[+]\033[0m Instalando Gnome Tweak Tool";
apt-get install gnome-tweak-tool
echo -e "\033[0;31m[+]\033[0m Instalando HTop";
apt-get install htop
echo -e "\033[0;31m[+]\033[0m Instalando Audacious ";
apt-get install audacious
echo -e "\033[0;31m[+]\033[0m Instalando Shutter";
apt-get install shutter
echo -e "\033[0;31m[+]\033[0m Instalando Filezilla";
apt-get install filezilla
echo -e "\033[0;31m[+]\033[0m Instalando Putty";
apt-get install putty
echo -e "\033[0;31m[+]\033[0m Instalando K3b";
apt-get install k3b
echo -e "\033[0;31m[+]\033[0m Instalando TOR";
apt-get install tor
echo -e "\033[0;31m[+]\033[0m Instalando NetHogs";
apt-get install nethogs
echo -e "\033[0;31m[+]\033[0m Instalando GTk Record My Desktop";
apt-get install gtk-recordmydesktop recordmydesktop remmina -y
echo -e "\033[0;31m[+]\033[0m Instalando GDeby";
apt-get install gdebi -y
echo -e "\033[0;31m[+]\033[0m Instalando File Roller";
apt-get install file-roller
echo -e "\033[0;31m[+]\033[0m Incorporando Flash Plugin";
apt-get install apt-get flashplugin-nonfree
echo -e "\033[0;31m[+]\033[0m Configurando Audio";
apt-get install alsa-utils -y
echo -e "\033[0;31m[+]\033[0m Instalando GKrellM";
apt-get install gkrellm
echo -e "\033[0;31m[+]\033[0m Descargando Skins De GKrellM";
wget http://orlandohc.ddns.net/repo/gkrellm/GKrellM-Skins.tar.gz
echo -e "\033[0;31m[+]\033[0m Descomprimiendo Skins";
for i in $(ls *.tar.gz)
do
tar -xzvf $i;
done
for i in *.tar.gz;
do
tar -xzvf $i;
done
mv GKrellM-skins/  ~/home
echo -e "\033[0;31m[+]\033[0m Descargando Archivos Para Personalizar Entorno";
wget http://orlandohc.ddns.net/repo/gnome/numix.zip
wget http://orlandohc.ddns.net/repo/gnome/elementary.zip
echo -e "\033[0;31m[+]\033[0m Descomprimiendo Archivos Para Personalizar Entorno";
for i in $(ls *.zip)
do
unzip $i
done
mv Numix/ /usr/share/themes
mv elementary/ /usr/share/icons
sleep 3
echo -e "\033[1;37mPara x64 Escribe = 64 / Para x86 Escribe = 86 \033[0m "
echo -e "Cual es tu Arquitectura de Kali Linux? [ \033[0;32m64\033[0m / \033[0;31m86\033[0m ]: \c";
read answ2
if [ $answ2 = "64" ]; then
echo -e "\033[0;31m[+]\033[0m Descargando Paquetes Minidwep, Feeding Bootle y Sublime Text para Kali Linux x64";
sleep 3
wget http://orlandohc.ddns.net/repo/minidwep/minidwep-gtk-40420-bt5-64bit.deb
wget http://orlandohc.ddns.net/repo/feedingbootle/feedingbottle3.2.3.deb
wget http://orlandohc.ddns.net/repo/sublimetext/sublime-text_build-3047_amd64.deb
echo -e "\033[0;31m[+]\033[0m Descomprimiendo Minidwep...";
sleep 3
dpkg -i minidwep-gtk-40420-bt5-64bit.deb
sleep 3
echo -e "\033[0;31m[+]\033[0m Descomprimiendo FeedingBootle...";
sleep 3
dpkg -i feedingbottle3.2.3.deb
sleep 3
echo -e "\033[0;31m[+]\033[0m Descomprimiendo Sublime Text...";
sleep 3
dpkg -i sublime-text_build-3047_amd64.deb
echo -e "\033[0;31m[+]\033[0m Paquetes Instalados Correctamente."
fi
sleep 3
if [ $answ2 = "86" ]; then
echo -e "\033[0;31m[+]\033[0m Descargando Paquetes Minidwep, Feeding Bootle y Sublime Text para Kali Linux x86";
sleep 3
wget http://orlandohc.ddns.net/repo/minidwep/minidwep-gtk-40420-bt5-32bit.deb
wget http://orlandohc.ddns.net/repo/feedingbootle/feedingbottle3.2.3.deb
wget http://orlandohc.ddns.net/repo/sublimetext/sublime-text_build-3047_i386.deb
echo -e "\033[0;31m[+]\033[0m Descomprimiendo Minidwep...";
sleep 3
dpkg -i minidwep-gtk-40420-bt5-32bit.deb
sleep 3
echo -e "\033[0;31m[+]\033[0m Descomprimiendo FeedingBootle...";
sleep 3
dpkg -i feedingbottle3.2.3.deb
echo -e "\033[0;31m[+]\033[0m Descomprimiendo Sublime Text...";
sleep 3
dpkg -i sublime-text_build-3047_i386.deb
sleep 3
echo -e "\033[0;31m[+]\033[0m Paquetes Instalados Correctamente."
fi
sleep 3
echo -e $green"\033[0;31m[+]\033[0m Instalacion de Pimp My Kali Exitosa!";
sleep 3
echo -e "\033[0;31m[+]\033[0m Kali Se Reiniciara para que los cambios surtan efecto. Guarda tu trabajo!"
echo -e "\033[0;31m[+]\033[0m Para Cancelar El Reinicio presiona: CTRL + C"
shutdown -r +1
fi
if [ $(echo $respuesta | tr -s '[:upper:]' '[:lower:]') = "n" ]; then
echo -e "\033[0;31m \n[-] Operacion Cancelada [-]\033[0m";
fi
}
sc
