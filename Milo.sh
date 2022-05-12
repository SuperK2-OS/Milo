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

clear

echo "   ______________________________________________________________"
echo "   |                                                            |"
echo "   |     ${txtpur}${txtbld}MiLO™ - OSIRIS™ Multihack Loader Script${txtrst}                |"
echo "   |     ${txtgrn}${txtbld}Script de Inyección${txtrst}                                    |"
echo "   |     By ${txtpur}${txtbld}SuperK2${txtrst}                                             |"
echo "   |     ${txtcyn}www.CheatersUnidos.com${txtrst}                                 |"
echo "   |____________________________________________________________|"
echo "   |                                                            |"
echo "   |       - ${txtgrn}${txtbld}Localizar el proceso cs_go_linux64 en Memoria${txtrst}      |"
echo "   |       - ${txtgrn}${txtbld}Inyectar Osiris Multihack${txtrst}                          |"
echo "   |____________________________________________________________|"
echo "  "
echo "  "

pause "Por favor, pulsa ${txtpur}[ENTER] para INYECTAR${txtrst} o ${txtred}[CTRL+C] para CANCELAR${txtrst} ..."

csgo_pid=$(pidof csgo_linux64)
if [ -z "$csgo_pid" ]; then
    echo "   ______________________________________________________________"
echo "   |                                                            |"
echo "   |     ${txtpur}${txtbld}MiLO™ - OSIRIS™ Multihack Loader Script${txtrst}                |"
echo "   |     ${txtgrn}${txtbld}Script de Inyección${txtrst}                                    |"
echo "   |     By ${txtpur}${txtbld}SuperK2${txtrst}                                             |"
echo "   |     ${txtcyn}www.CheatersUnidos.com${txtrst}                                 |"
echo "   |____________________________________________________________|"
echo "   |                                                            |"
echo "   |       - ${txtgrn}${txtbld}ERROR${txtrst}                                              |"
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
    exit
fi
echo "Injecting Build ID: $filename"

# https://www.kernel.org/doc/Documentation/security/Yama.txt
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

if [ "$last_line" != "\$1 = (void *) 0x0" ]; then
    echo "   ______________________________________________________________"
echo "   |                                                            |"
echo "   |     ${txtpur}${txtbld}MiLO™ - v1 Beta - OSIRIS™ Multihack Loader Script${txtrst}      |"
echo "   |     ${txtgrn}${txtbld}Script de Inyección${txtrst}                                    |"
echo "   |     By ${txtpur}${txtbld}SuperK2${txtrst}                                             |"
echo "   |     ${txtcyn}www.CheatersUnidos.com${txtrst}                                 |"
echo "   |____________________________________________________________|"
echo "   |                                                            |"
echo "   |       - ${txtgrn}${txtbld}CHEAT INYECTADO CORRECTAMENTE !!!${txtrst}                  |"
echo "   |       - ${txtgrn}${txtbld}GO GO GO !!!${txtrst}                                       |"
echo "   |____________________________________________________________|"
echo "  "
echo "  "
sleep 1
else
    echo "Inyección fallida, comprueba que has compilado el cheat..."
fi