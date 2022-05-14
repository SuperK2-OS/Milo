# MiLO™ - OSIRIS™ MultiHack Loader Script
**Script Diseñado para hacer ByPass al sistema de seguridad [**VAC** (Valve Anti-Cheat System)](https://help.steampowered.com/es/faqs/view/571A-97DA-70E9-FF74) de [Valve Corporation](https://www.valvesoftware.com/)**

![text](https://www.ginx.tv/uploads/Shroud_csgo.jpg)

![Steam](https://img.shields.io/badge/steam-%23000000.svg?style=for-the-badge&logo=steam&logoColor=white)
![Shell Script](https://img.shields.io/badge/shell_script-%23121011.svg?style=for-the-badge&logo=gnu-bash&logoColor=white)
![Ubuntu](https://img.shields.io/badge/Ubuntu-E95420?style=for-the-badge&logo=ubuntu&logoColor=white)
![CMake](https://img.shields.io/badge/CMake-%23008FBA.svg?style=for-the-badge&logo=cmake&logoColor=white)
![GitHub](https://img.shields.io/badge/github-%23121011.svg?style=for-the-badge&logo=github&logoColor=white)

# Linux Shell Script para descargar, actualizar, compilar e inyectar de forma automática el Cheat / Hack OSIRIS para Counter-Strike: Global Offensive (CS:GO).

**Prerrequisitos**:

- Una instalación limpia de Ubuntu 22.04 LTS Desktop / Instalación Normal

- Drivers de Terceros (nVidia)

**Cómo usarlo**:

- Descarga el archivo Milo.sh
- Otorga permisos de ejecución al archivo Milo.sh
   - Desde GUI: Botón derecho en Milo.sh > Propiedades > Permisos > Ejecución (Activar)
   - Desde el terminal: sudo chmod +x Milo.sh
- Ejecutar: Una instalación limpia de Ubuntu 22.04 LTS Desktop / Instalación Normal
   - Desde GUI: Botón derecho en Milo.sh > Ejecutar como programa
   - Desde el terminal: sudo ./Milo.sh
    
**Acciones del Script**:

- Actualiza el sistema.

- Instala paquetes necesarios:

    - **gh**: [GitHub© CLI](https://cli.github.com/)

    - **cMake**: [CMake](https://cmake.org/) es una familia de herramientas diseñada para construir, probar y empaquetar software. CMake se utiliza para controlar el proceso de compilación del software usando ficheros de configuración sencillos e independientes de la plataforma.

    - **libsdl2-dev**: [SDL](https://www.libsdl.org/) Simple DirectMedia Layer es una biblioteca de desarrollo multiplataforma diseñada para brindar acceso de bajo nivel a hardware de audio, teclado, mouse, joystick y gráficos a través de OpenGL y Direct3D. Es utilizado por software de reproducción de video, emuladores y juegos populares, incluido el catálogo de Valve.

    - **libfreetype-dev**: [FreeType](https://freetype.org/) Librería de renderización de fuentes TrueType. 

    - **g++-10**: Este es el compilador [GNU C++](https://gcc.gnu.org/), un compilador de optimización para C++.

    - **libgmock-dev**: [Framework de Google](https://github.com/google/googletest) Framework de Google para escribir pruebas en C++.

- Clona el repositorio y compila OSIRIS.
 
**Compatible con **[Counter-Strike: Global Offensive](https://store.steampowered.com/app/730/CounterStrike_Global_Offensive/?l=spanish)**, disponible de forma totalmente gratuita para Windows y Linux en la plataforma **[STEAM](https://store.steampowered.com)** en su juego  (a.k.a: csgo, cs:go).

- Basado en [OSIRIS](https://github.com/danielkrupinski/Osiris)

- Special Thanks to **[Daniel Krupiński](https://github.com/danielkrupinski/Osiris) and [contributors](https://github.com/danielkrupinski/Osiris/graphs/contributors)**, [ocornut](https://github.com/ocornut) and [contributors](https://github.com/ocornut/imgui/graphs/contributors) for [Dear imgui](https://github.com/ocornut/imgui) and [Zer0Mem0ry](https://github.com/Zer0Mem0ry) . Respect! ;-)

- Osiris está escrito en **C++ Moderno** y con GUI [Dear ImGui](https://github.com/ocornut/imgui)

- Cheat / Hack **Multiplataforma Windows / Linux** .

- Diseñado como cheat interno **[Dynamic-link library](https://en.wikipedia.org/wiki/Dynamic-link_library)** inyectable en el proceso del juego.
