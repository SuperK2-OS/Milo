#!/usr/bin/env bash

# función de colores en el texto del terminal texto

txtund=$(tput sgr 0 1)    # Underline
txtbld=$(tput bold)       # Bold
txtred=$(tput setaf 1)    # Red
txtgrn=$(tput setaf 2)    # Green
txtylw=$(tput setaf 3)    # Yellow
txtblu=$(tput setaf 4)    # Blue
txtpur=$(tput setaf 5)    # Purple
txtcyn=$(tput setaf 6)    # Cyan
txtwht=$(tput setaf 7)    # White
txtrst=$(tput sgr0)       # Text reset

# función de pausa

function pause(){
   read -p "$*"
}

clear

echo "   ______________________________________________________________"
echo "   |                                                            |"
echo "   |     ${txtpur}${txtbld}MiLO™ - v1 Beta - OSIRIS™ Multihack Loader Script${txtrst}      |"
echo "   |     ${txtgrn}${txtbld}Script de Descarga + Compilación${txtrst}                       |"
echo "   |     By ${txtpur}${txtbld}SuperK2${txtrst}                                             |"
echo "   |     ${txtcyn}www.CheatersUnidos.com${txtrst}                                 |"
echo "   |____________________________________________________________|"
echo "   |                                                            |"
echo "   |   ${txtred}No nos hacemos responsables de posibles daños en tu${txtrst}      |"
echo "   |   ${txtred}sistema. Este script experimental está desarrollado${txtrst}      |"
echo "   |   ${txtred}exclusivamente con fines de investigación, educativos${txtrst}    |"
echo "   |   ${txtred}o de formación.${txtrst}                                          |"
echo "   |____________________________________________________________|"

echo "  "
echo "    "
echo "  "
echo "  "
echo "  "

pause "Por favor, pulsa ${txtgrn}[ENTER] para CONTINUAR${txtrst} o ${txtred}[CTRL+C] para CANCELAR${txtrst} ..."

clear 

echo "   ______________________________________________________________"
echo "   |                                                            |"
echo "   |     ${txtpur}${txtbld}MiLO™ - OSIRIS™ Multihack Loader Script${txtrst}                |"
echo "   |     ${txtgrn}${txtbld}Script de Descarga + Compilación${txtrst}                       |"
echo "   |     ${txtcyn}www.CheatersUnidos.com${txtrst}                                 |"
echo "   |____________________________________________________________|"
echo "   |                                                            |"
echo "   |     ${txtgrn}${txtbld}Actualizar el sistema...${txtrst}                               |"
echo "   |____________________________________________________________|"
echo "  "
echo "  "

pause "Por favor, pulsa ${txtgrn}[ENTER] para CONTINUAR${txtrst} o ${txtred}[CTRL+C] para CANCELAR${txtrst} ..."

apt update -y && apt upgrade -y

clear

echo "   ______________________________________________________________"
echo "   |                                                            |"
echo "   |     ${txtpur}${txtbld}MiLO™ - OSIRIS™ Multihack Loader Script${txtrst}                |"
echo "   |     ${txtgrn}${txtbld}Script de Descarga + Compilación${txtrst}                       |"
echo "   |     By ${txtpur}${txtbld}SuperK2${txtrst}                                             |"
echo "   |     ${txtcyn}www.CheatersUnidos.com${txtrst}                                 |"
echo "   |____________________________________________________________|"
echo "   |                                                            |"
echo "   |     ${txtgrn}${txtbld}Instalar / Comprobar paquetes...${txtrst}                       |"
echo "   |       - ${txtgrn}${txtbld}gh${txtrst}                                                 |"
echo "   |       - ${txtgrn}${txtbld}cmake${txtrst}                                              |"
echo "   |       - ${txtgrn}${txtbld}libsdl2-dev${txtrst}                                        |"
echo "   |       - ${txtgrn}${txtbld}libfreetype-dev${txtrst}                                    |"
echo "   |       - ${txtgrn}${txtbld}g++-10${txtrst}                                             |"
echo "   |       - ${txtgrn}${txtbld}libgmock-dev${txtrst}                                       |"
echo "   |____________________________________________________________|"
echo "  "
echo "  "

pause "Por favor, pulsa ${txtgrn}[ENTER] para CONTINUAR${txtrst} o ${txtred}[CTRL+C] para CANCELAR${txtrst} ..."

apt install gh -y
apt install cmake -y
apt install libsdl2-dev -y
apt install libfreetype-dev -y
apt install g++-10 -y
apt install libgmock-dev -y

clear

echo "   ______________________________________________________________"
echo "   |                                                            |"
echo "   |     ${txtpur}${txtbld}MiLO™ - OSIRIS™ Multihack Loader Script${txtrst}                |"
echo "   |     ${txtgrn}${txtbld}Script de Descarga + Compilación${txtrst}                       |"
echo "   |     By ${txtpur}${txtbld}SuperK2${txtrst}                                             |"
echo "   |     ${txtcyn}www.CheatersUnidos.com${txtrst}                                 |"
echo "   |____________________________________________________________|"
echo "   |                                                            |"
echo "   |       - ${txtgrn}${txtbld}Borrar ficheros y carpetas antigüos.${txtrst}               |"
echo "   |       - ${txtgrn}${txtbld}Clonar Repositorio GitHub de Osiris.${txtrst}               |"
echo "   |____________________________________________________________|"
echo "  "
echo "  "

pause "Por favor, pulsa ${txtgrn}[ENTER] para CONTINUAR${txtrst} o ${txtred}[CTRL+C] para CANCELAR${txtrst} ..."

rm -f master.zip
rm -rf Master-osiris
wget https://github.com/danielkrupinski/Osiris/archive/refs/heads/master.zip
chmod +x master.zip
unzip -o master.zip

echo "   ______________________________________________________________"
echo "   |                                                            |"
echo "   |     ${txtpur}${txtbld}MiLO™ - OSIRIS™ Multihack Loader Script${txtrst}                |"
echo "   |     ${txtgrn}${txtbld}Script de Descarga + Compilación${txtrst}                       |"
echo "   |     By ${txtpur}${txtbld}SuperK2${txtrst}                                             |"
echo "   |     ${txtcyn}www.CheatersUnidos.com${txtrst}                                 |"
echo "   |____________________________________________________________|"
echo "   |                                                            |"
echo "   |       - ${txtgrn}${txtbld}cmake -D${txtrst}                                  |"
echo "   |       - ${txtgrn}${txtbld}cmake --build${txtrst}                             |"
echo "   |____________________________________________________________|"
echo "  "
echo "  "

pause "Por favor, pulsa ${txtgrn}[ENTER] para CONTINUAR${txtrst} o ${txtred}[CTRL+C] para CANCELAR${txtrst} ..."

cd Osiris-master

cmake -D CMAKE_BUILD_TYPE=Release -D CMAKE_CXX_COMPILER=g++-10 -D BUILD_TESTS=1 -S . -B Release

cmake --build Release -j $(nproc --all)

echo "   ______________________________________________________________"
echo "   |                                                            |"
echo "   |     ${txtpur}${txtbld}MiLO™ - OSIRIS™ Multihack Loader Script${txtrst}                |"
echo "   |     ${txtgrn}${txtbld}Script de Descarga + Compilación${txtrst}                       |"
echo "   |     By ${txtpur}${txtbld}SuperK2${txtrst}                                             |"
echo "   |     ${txtcyn}www.CheatersUnidos.com${txtrst}                                 |"
echo "   |____________________________________________________________|"
echo "   |                                                            |"
echo "   |       - ${txtgrn}${txtbld}cmake -D${txtrst}                                  |"
echo "   |       - ${txtgrn}${txtbld}cmake --build${txtrst}                             |"
echo "   |____________________________________________________________|"
echo "  "
echo "  "

pause "Por favor, pulsa ${txtgrn}[ENTER] para CONTINUAR${txtrst} o ${txtred}[CTRL+C] para CANCELAR${txtrst} ..."

cd Release

touch build_id

cd ..

cd ..

cp Osiris-master/Release/libOsiris.so

cp Osiris-master/Release/build_id

./Milo.sh