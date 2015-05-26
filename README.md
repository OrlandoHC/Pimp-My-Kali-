<span style="word-wrap: break-word; -webkit-nbsp-mode: space; -webkit-line-break: after-white-space;"><div style="text-align: justify;"><b>Pimp My Kali</b>  es un script no oficial desarrollado en <a href="http://es.wikipedia.org/wiki/Bash" target="_blank">Bash</a> que <b>recopila e instala modificaciones y aplicaciones a Kali Linux despues de su instalación.</b></div><div style="text-align: justify;"><br/><a name="more"></a><b>¿A quien va enfocado? </b><br/><b>R: Tanto si eres novato como si eres experto nada mejor que un script automatizado que personalice nuestro entorno para hacerlo mas ameno siendo así live cd o instalación en el equipo; <span style="font-size: large;">pmk.sh</span> proporciona las herramientas imprescindibles así como las modificaciones necesarias (listadas mas abajo de este post) para desempeñar las tareas cotidianas al utilizar nuestra distro de seguridad.</b><br/><b><br/></b> <b>¿Funciona en Todas las Imagenes de Kali Linux?</b><br/><b>R: Si!, pmk.sh ha sido testeado en casi todas las imágenes de kali linux, desde un raspberry pi hasta una tablet note y una samsung chromebook. Así que sin problemas corre en tu distro.</b><br/><b><br/></b><br/><div><b>¿Para que personalizar una distro de seguridad enfocada solo a eso? </b></div><div><b>R: Mi respuesta es, un arma más al arsenal de un entusiasta de la seguridad de sistemas y las herramientas de hacking/cracking, y a quien no le gusta tener su distro pimpeada (personalizada) y lista para una auditoria, montaje de un escenario informatico-forense o incluso Cyber Guerra (en el peor pero nada imposible de los casos), A mi en lo personal, Si, ya que poseo dual boot entre Windows 8.1 (10) y Kali Linux 1.1.0a. </b></div></div><div style="text-align: justify;"><br/></div><div style="text-align: justify;"><b>Mods:</b><br/><ul><li><b>Condición de Ejecución restrictiva para usuarios Root.</b></li><li><b>Comprobación de Conexión a Internet, En caso de no contar con conexión el script aborta el proceso. </b></li><li><b>Al finalizar, Pimp My Kali reinicia el sistema en 1 minuto para que surtan efecto las modificaciones permitiendo así salvar nuestro trabajo.</b></li><li><b>Dentro del Banner se agrego la dirección de mi blog www.orlandohc.org y el @OrlandoHC de mi Twitter esto con fines informativos y didácticos.</b></li><li><b>Marcas Sleep para facil comprensión del usuario acerca proceso que se lleva a cabo en tiempo real. </b></li><li><b>Interfaz que lanza el script correspondiente para personalizar Kali Linux.</b></li><li><b>Desactivación DeLmolesto Cursos Parpadeante.</b></li><li><b>Instalación de GKrellM Barra de Herramientas.</b></li><li><b>Activación De Configuración Avanzada, Escritorio, Extensiones, Gnome-Shell.</b></li><li><b>Tipografias y Ventanas (<a href="https://apps.ubuntu.com/cat/applications/gnome-tweak-tool/" target="_blank">Gnome Tweak Tool</a>).</b></li><li><b>Activación de Temas.</b></li><li><b>Personalización Del Entorno con el tema Numix e Iconos Elementary.</b></li><li><b>El Audio ya no inicia en 0, o en Mute.</b></li><li><b>Ejecución de Si/No Insensible a Mayusculas y Minusculas</b></li><li><b>Condición para Selección de Arquitectura x86/x64.</b></li><li><b>Se creó un Repositorio para las apps dedicadas (Minidwep, Feeding Bootle y Sublime Text.</b></li><li><b>Se Movieron los antiguos archivos numix.zip y elementary al nuevo repositorio.</b></li><li><b>GkrellM ha sido Movido al nuevo repositorio</b></li><li><b>Enlace al Repositorio ---&gt; <a href="http://orlandohc.ddns.net/repo" target="_blank">http://orlandohc.ddns.net/repo</a></b></li><li><b>Leyenda Para Cancelación de Reinicio.</b></li></ul></div><div style="text-align: justify;"><b>Apps:</b></div><ul><li style="text-align: justify;"><b>Ark .-</b> Utilidad De Archivos (Alternativa a File Roller)<b>.</b></li><li style="text-align: justify;"><b>HTop .-</b> Visor De Procesos Interactivo<b>.</b></li><li style="text-align: justify;"><b>Audacious .-</b> Reproductor Multimedia.</li><li style="text-align: justify;"><b>Shutter .-</b> Capturador De Imagenes de Escritorio<b>.</b></li><li style="text-align: justify;"><b>Filezilla .-</b> Cliente SFTP Y FTP De Codigo Abierto<b>.</b></li><li style="text-align: justify;"><b>Puty .-</b> Cliente para gestionar SSH y Telnet.<b><br/></b></li><li style="text-align: justify;"><b>K3b .-</b> Grabación de DVD/CD.<b><br/></b></li><li style="text-align: justify;"><b>Tor .-</b> Navegador Anonimo (Interfaz completa de Anonimato en la Web)<b>.</b></li><li style="text-align: justify;"><b>Nethogs .-</b> Supervisor De Trafico De Red<b>.</b></li><li style="text-align: justify;"><b>GTKRecord My Desktop -</b> Grabar Video Del Entorno <b>Kali Linux.</b></li><li style="text-align: justify;"><b>Gdebi .-</b> Herramienta para la Gestión de Paquetes .deb </li><li style="text-align: justify;"><b>File Roller</b> .- Utilidad Multi-Descompresor de Archivos</li><li style="text-align: justify;"><b>Sublime Text</b> .- Editor De Texto y Editor de Codigo Fuente</li><li style="text-align: justify;"><b>MinidWep</b>.- Interfaz Grafica para Auditorias WLAN (Novato).</li><li style="text-align: justify;"><b>Feeding Bootle</b> .- Interfaz Grafica para Auditorias WLAN (Avanzado) .</li></ul>
Se continuarán agregando mas apps, Recomendaciónes? ---&gt; <a href="https://plus.google.com/102357370164109266073" target="_blank">+TI. Orlando Hernandez Cruz</a>  / <a href="https://www.blogger.com/">@OrlandoHC</a><br/><div style="text-align: justify;"><b>Tecnologias Utilizadas en el Desarollo de Pimp My Kali</b><br/><ul><li><b>Sublime Text</b></li><li><b>Atom</b></li><li><b>Shell Script Manual</b></li><li><b>Oracle VM VirtualBox</b></li><li><b>Putty</b></li><li><b>Filezilla</b></li><li><b>Evernote</b></li><li><b>Spotify (para eso de la música HAHA)</b></li></ul></div></span>
</div>
