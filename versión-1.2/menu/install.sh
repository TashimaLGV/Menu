#!/bin/bash

clear
echo "==============================="
echo "|Menú de instalación.         |"
echo "==============================="
echo "|¿Qué le gustaria hacer hoy?  |"
echo "|(1) Instalar Menú.           |"
echo "|(2) Desinstalar Menú.        |"
echo "==============================="
read -p "Opciones: " option

case $option in

    1)
        echo "==============================="
        echo "Instalando Menú.              |" 
        sudo cp menu /usr/local/bin
        sudo cp menu_help /usr/local/bin
        sudo cp menu_update /usr/local/bin
        sudo cp menu_uninstall /usr/local/bin
        cd /usr/local/bin && sudo chmod 755 menu
        cd /usr/local/bin && sudo chmod 755 menu_help
        cd /usr/local/bin && sudo chmod 755 menu_update
        cd /usr/local/bin && sudo chmod 755 menu_uninstall
        echo "Se acaba de instalar el Menú. |"
        echo "Cerrando el archivo bash      |"
        echo "==============================="
        sleep 1
        clear
        exit
    ;;
    2)
        echo "==============================="
        echo "Desinstalar Menú              |"
        sudo rm /usr/local/bin/menu
        sudo rm /usr/local/bin/menu_help
        sudo rm /usr/local/bin/menu_update
        sudo rm /usr/local/bin/menu_unistall
        echo "Desinstalando Menú            |"
        echo "Cerrando el archivo bash      |"
        echo "==============================="
        sleep 1
        clear
        exit
    ;;
    *)
        echo "==============================="
        echo "Cerrando el archivo bash      |"
        echo "==============================="
        sleep 1
        clear
        exit
    ;;

esac