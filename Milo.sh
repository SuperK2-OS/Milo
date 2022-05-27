#!/usr/bin/env bash

# MiLO™ - v3 Beta - OSIRIS™ Multihack Loader Script
# By SuperK2 - superk2_cu@protonmail.com
# www.CheatersUnidos.com - discord.gg/4XatbjTZzS

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
echo "   |     ${txtpur}${txtbld} MiLO™ - v3 Beta - OSIRIS™ Multihack Loader Script${txtrst}     |"
echo "   |     ${txtgrn}${txtbld}···················································${txtrst}    |"
echo "   |                                                            |"
echo "   |     By ${txtpur}${txtbld}SuperK2${txtrst} - superk2_cu@protonmail.com                 |"
echo "   |     ${txtcyn}www.CheatersUnidos.com${txtrst}                                 |"
echo "   |     ${txtcyn}discord.gg/4XatbjTZzS${txtrst}                          |"
echo "   |____________________________________________________________|"
echo "   |                                                            |"
echo "   |   ${txtred}No nos hacemos responsables de posibles daños en tu${txtrst}      |"
echo "   |   ${txtred}sistema. Este script experimental está desarrollado${txtrst}      |"
echo "   |   ${txtred}exclusivamente con fines de investigación, educativos${txtrst}    |"
echo "   |   ${txtred}y/o de formación.${txtrst}                                        |"
echo "   |                                                            |"
echo "   |   28 de Mayo de 2022                                       |"
echo "   |____________________________________________________________|"
echo "  "

pause "   >>>  Por favor, pulsa ${txtgrn}[ENTER] para CONTINUAR${txtrst} o ${txtred}[CTRL+C] para CANCELAR${txtrst} ..."

clear

echo "   ______________________________________________________________"
echo "   |                                                            |"
echo "   |     ${txtpur}${txtbld} MiLO™ - v3 Beta - OSIRIS™ Multihack Loader Script${txtrst}     |"
echo "   |     ${txtgrn}${txtbld}Instalando Dependencias${txtrst}                                |"
echo "   |     ${txtcyn}www.CheatersUnidos.com${txtrst}                                 |"
echo "   |____________________________________________________________|"
echo "   |                                                            |"
echo "   |     ${txtgrn}${txtbld}Instalando dependencias...${txtrst}                             |"
echo "   |____________________________________________________________|"
echo "  "
echo "  "
sleep 1
sudo apt -qq install gh -y
sudo apt -qq install cmake -y
sudo apt -qq install libsdl2-dev -y
sudo apt -qq install libfreetype-dev -y
sudo apt -qq install g++-10 -y
sudo apt -qq install libgmock-dev -y

clear

echo "   ______________________________________________________________"
echo "   |                                                            |"
echo "   |     ${txtpur}${txtbld} MiLO™ - v3 Beta - OSIRIS™ Multihack Loader Script${txtrst}     |"
echo "   |     ${txtgrn}${txtbld}Eliminando versión anterior${txtrst}                            |"
echo "   |     ${txtcyn}www.CheatersUnidos.com${txtrst}                                 |"
echo "   |____________________________________________________________|"
echo "   |                                                            |"
echo "   |       - ${txtgrn}${txtbld}Borrar ficheros y carpetas antigüos.${txtrst}               |"
echo "   |       - ${txtgrn}${txtbld}Clonar Repositorio GitHub de Osiris.${txtrst}               |"
echo "   |____________________________________________________________|"
echo "  "
echo "  "

sleep 1

sudo rm -f master.zip
sudo rm -R --force Osiris-master/
sudo wget -qq https://github.com/danielkrupinski/Osiris/archive/refs/heads/master.zip
sudo chmod +x master.zip
sudo unzip -o -qq master.zip

clear

echo "   ______________________________________________________________"
echo "   |                                                            |"
echo "   |     ${txtpur}${txtbld} MiLO™ - v3 Beta - OSIRIS™ Multihack Loader Script${txtrst}     |"
echo "   |     ${txtgrn}${txtbld}Compilación${txtrst}                                            |"
echo "   |     ${txtcyn}www.CheatersUnidos.com${txtrst}                                 |"
echo "   |____________________________________________________________|"
echo "   |                                                            |"
echo "   |       - ${txtgrn}${txtbld}Compilando ... Tardará menos de un minuto${txtrst}          |"
echo "   |       - ${txtgrn}${txtbld}Espera... a que termine el proceso${txtrst}                 |"
echo "   |____________________________________________________________|"
echo "  "
echo "  "
sleep 5
cd Osiris-master

cmake -D CMAKE_BUILD_TYPE=Release -D CMAKE_CXX_COMPILER=g++-10 -D BUILD_TESTS=1 -S . -B Release

cmake --build Release -j $(nproc --all)

cd Release

sudo touch build_id

sudo cd ..

sudo cd ..

sudo cp Osiris-master/Release/libOsiris.so

sudo cp Osiris-master/Release/build_id

clear

echo "   ______________________________________________________________"
echo "   |                                                            |"
echo "   |     ${txtpur}${txtbld} MiLO™ - v3 Beta - OSIRIS™ Multihack Loader Script${txtrst}     |"
echo "   |     ${txtgrn}${txtbld}Inyección${txtrst}                                              |"
echo "   |     ${txtcyn}www.CheatersUnidos.com${txtrst}                                 |"
echo "   |____________________________________________________________|"
echo "   |                                                            |"
echo "   |       - ${txtgrn}${txtbld}RECUERDA TENER FUNCIONANDO CS:GO${txtrst}                   |"
echo "   |       - ${txtgrn}${txtbld}Inyectar Osiris Multihack${txtrst}                          |"
echo "   |____________________________________________________________|"
echo "  "
echo "  "
sleep 2
pause "ATENCIÓN: ${txtpur}[PULSA ENTER] para INYECTAR${txtrst} o ${txtred}[CTRL+C] para CANCELAR${txtrst}"
clear

csgo_pid=$(pidof csgo_linux64)
if [ -z "$csgo_pid" ]; then

echo "   ______________________________________________________________"
echo "   |                                                            |"
echo "   |     ${txtpur}${txtbld} MiLO™ - v3 Beta - OSIRIS™ Multihack Loader Script${txtrst}     |"
echo "   |     ${txtred}${txtbld}ERROR${txtrst}                                                  |"
echo "   |     ${txtcyn}www.CheatersUnidos.com${txtrst}                                 |"
echo "   |____________________________________________________________|"
echo "   |                                                            |"
echo "   |       - ${txtred}${txtbld}ERROR${txtrst}                                              |"
echo "   |       - ${txtgrn}${txtbld}Debe ejecutar CS:GO entes de Inyectar${txtrst}              |"
echo "   |____________________________________________________________|"
echo "  "
echo "  "

    exit 1
fi

# pBypass for crash dumps being sent
# You may also want to consider using -nobreakpad in your launch options.

sudo rm -rf /tmp/dumps # Remove if it exists
sudo mkdir --mode=000 /tmp/dumps # Make it as root with no permissions

if [ ! -f build_id ]; then
    echo "Build ID no encontrado. Por favor ejecuta el Scrip de Compilación de nuevo."
    exit
fi

filename="libOsiris.so"

# Credit: Aixxe @ aixxe.net
if grep -q "$filename" /proc/"$csgo_pid"/maps; then
    echo "Osiris ya ha sido inyectado, abortando..."
    echo "¿Necesitas ayuda? ${txtcyn}CheatersUnidos.com${txtrst} - ${txtcyn}discord.gg/4XatbjTZzS${txtrst}"
    exit
fi
echo "Injectando Build ID: $filename"

echo "2" | sudo tee /proc/sys/kernel/yama/ptrace_scope # Only allows root to inject code. This is temporary until reboot.

sudo cp "$filename" "/usr/lib/${filename}"

sudo killall -19 steam
sudo killall -19 steamwebhelper

lib_dir_name="lib"

input="$(
sudo gdb -n -q -batch-silent \
        -ex "set logging file /dev/null" \
        -ex "set logging redirect on" \
        -ex "set logging on" \
        -ex "attach $csgo_pid" \
        -ex "call ((void*(*)(const char*, int))dlopen)(\"/usr/lib/$filename\", 1)"   \
        -ex "detach" \
        -ex "quit"
)"

sleep 1
sudo killall -18 steamwebhelper
sudo killall -18 steam

sudo rm "/usr/lib/${filename}"

last_line="${input##*$'\n'}"

clear

if [ "$last_line" != "\$1 = (void *) 0x0" ]; then

echo "⠀⠀⠀⠀⠀⠀⣿⣿                                                      "
echo "⠀⠀⠀⠀⠀⢸⣿⣿   ${txtpur}${txtbld}MiLO™ - v3 Beta - OSIRIS™ Multihack Loader Script${txtrst}"
echo "⠀⠀⠀⠀⠀⠘⣿⣟   ${txtgrn}${txtbld}CHEAT INYECTADO CORRECTAMENTE !!!${txtrst}"
echo "⠀⠀⠀⢀⡀⠀⣿⣇   ${txtgrn}${txtbld}RECUERDA${txtrst} USAR LA TECLA "${txtgrn}INSERT${txtrst}" para Activar el Hack${txtrst} "
echo "⠀⠀⠀⠘⠁⠀⣿⣿   ${txtcyn}CheatersUnidos.com${txtrst} - ${txtcyn}discord.gg/4XatbjTZzS${txtrst}"
echo "⠀⠀⠀⢠⡄⠀⣿⣿   "
echo "⠀⠀⠀⠈⠀⠀⣿⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣀⣤⣤⠤⠤⡤⣤⣄⡀                           "
echo "⠀⠀⠀⠠⠀⢀⣿⣿⠀⠀⠀⠀⠀⠀⠀⢠⡄⢴⡵⠛⠉⠉⠻⣮⠀⠀⠐⣆⣩⣻⣷⣦⡄                       "
echo "⠀⠀⠀⠀⡾⣿⣿⣿⠀⠀⠀⠀⠀⠀⠀⠈⣳⡟⠚⠃⠀⠀⠀⢸⣧⣠⣾⡿⠭⣍⢻⣿⣿⣦⡀                    "
echo "⠀⠀⠀⠀⡇⣿⣿⣿⠀⠀⠀⠀⠀⠀⠀⢸⣿⡅⠀⠀⠀⠀⠀⣸⣿⣿⣏⣀⡰⠜⡆⣿⣿⣿⣿⡄                   "
echo "⠀⠀⠀⠀⣇⣿⣿⣿⣿⣷⣶⡆⠀⠀⠀⣼⣏⢷⣄⣀⣀⣤⠾⠋⢼⣏⠳⣤⣭⠟⣱⠿⣿⣿⣿⣿⡀                  "
echo "⠀⢀⣤⣾⣿⡿⢿⣿⣿⣿⣿⡇⠀⠀⠀⣿⡏⠀⢙⣩⣍⡁⠀⠀⠆⠙⡶⣤⡴⠾⠋⢰⣿⣿⣿⣿⡇⠀⠀               "
echo "⠀⢸⣿⣿⣿⣿⣄⢻⣿⣿⡿⠀⠀⠀⠀⢿⡇⡀⠀⠸⣿⣻⣿⣿⣶⢶⣶⣶⣶⣦⠀⣾⣿⣿⣿⣿⠁⠀⠀⠀⠀⠀⠀⣀⣀⣀⣄⠀⠐⠄"
echo "⠀⠸⣿⣿⣿⣿⡋⢧⣿⣿⣷⠀⠀⠀⠀⠘⣷⣡⠀⣠⡿⢋⡵⠛⢙⣿⣽⣾⠿⢫⣼⣿⣿⣿⣿⠏⠀⠀⠀⠀⠀⠀⠀⣿⣿⣋⣽⣧⡄⠙"
echo "⠀⢀⡿⢟⣹⣧⡷⡞⣿⣿⡇⠀⠀⠀⠀⢀⣹⣷⣴⡿⢁⡟⢀⡴⠛⠉⠉⣁⣐⣾⣿⣿⣿⡿⠋⠀⠀⠀⠀⠀⠀⠀⠀⣿⣿⡿⠶⣾⣿⣶"
echo "⠀⣾⢡⡿⢿⣿⣵⣿⣿⣿⡇⠀⢀⣤⠞⠋⣰⠉⣻⣧⣈⣴⣿⡇⣐⣮⣿⣿⣿⡿⣿⣿⠟⣿⠓⢦⣄⠀⠀⠀⠀⠀⢀⣿⣿⣿⡄⢹⣿⣿"
echo "⠀⢿⣸⣿⣿⣿⣷⣿⣿⣿⣇⡴⠛⠁⠀⢠⠇⢀⡿⠈⠉⢿⡿⠿⣿⣿⢿⡿⣿⡿⠋⢀⣾⠃⠀⣰⠋⠛⢦⣄⠀⣠⡿⠁⠹⣿⣧⠸⣿⣿"
echo "⠀⢘⣿⣿⣺⣿⣿⣿⣿⣿⣏⠀⠀⠀⠀⣿⠀⢸⠿⠟⠳⣼⡷⣥⣤⣤⣭⡾⠋⠀⣰⣿⠃⠀⢠⠇⠀⠀⠀⢹⢿⡟⠀⠀⠀⠸⣿⡆⠻⣿"
echo "⠀⠸⣧⣽⣿⣿⡿⠋⣿⣿⣿⡆⠀⠀⠀⣿⠀⢸⠀⠀⠀⠈⠻⡍⠒⣰⡏⠉⠳⣴⣿⠇⠀⠀⡿⠀⢠⠀⠀⣾⠀⣧⠀⠀⠀⢀⡿⣧⠴⠖"
echo "⡤⣾⣿⣿⣿⣿⠀⠈⠛⣿⠋⡇⠀⠀⣰⡇⠀⢸⣧⠀⠀⠀⠀⢧⠀⢹⠆⠀⠀⠘⡟⠀⠀⣸⠁⠀⡏⠀⠀⢹⠀⠸⡄⠀⠀⡼⠁⠀⠀⠀"
echo "⣧⢻⣏⢀⣿⣿⡇⠀⠀⣿⠀⡇⣠⡷⢻⣃⣀⣸⡝⣧⡀⠀⠀⢸⣠⠏⠀⠀⢀⣼⡇⠀⠀⣏⠀⣰⣇⡀⠀⠘⣧⠀⠹⡄⣸⠃⠀⠀⠀⠀"
echo "⠈⢳⣝⢿⣿⣿⣯⠓⠒⠿⠚⠋⠁⠀⣸⠻⣄⢰⡃⠈⠳⢶⣤⣜⣃⣠⣤⠖⠋⠈⡷⠤⣴⡟⠶⣿⠈⠙⠶⣤⣙⣧⣤⡿⠃⠀⠀⠀⠀⠀"
echo "⠀⢸⣿⣷⣭⣿⣿⠀⠀⠀⠀⠀⠀⠀⡇⠀⠈⠚⠁⠀⠀⠀⠉⠉⠉⠉⠀⠀⠀⠀⢱⣀⡏⠀⠀⢸⡄⠀⠀⠀⠈⠉⠉⠀⠀⠀⠀⠀⠀⠀"

sleep 5
exit
else
      echo "Inyección fallida, comprueba que has compilado el cheat... Más ayuda ? "
      echo "¿Necesitas ayuda? ${txtcyn}CheatersUnidos.com${txtrst} - ${txtcyn}discord.gg/4XatbjTZzS${txtrst}"
      exit
fi
