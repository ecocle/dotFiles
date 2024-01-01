#!/bin/bash

defaultDir="$HOME/.config/hypr/configs"
userDir="$HOME/.config/hypr/UserConfigs"

menu(){
  printf "1. view Env-variables\n"
  printf "2. view Window-Rules\n"
  printf "3. view Startup_Apps\n"
  printf "4. view User-Keybinds\n"
  printf "5. view Monitors\n"
  printf "6. view Laptop-Keybinds\n"
  printf "7. view User-Settings\n"
  printf "8. view Default-Settings\n"
  printf "9. view Default-Keybinds\n"
}

main() {
    choice=$(menu | rofi -dmenu -config ~/.config/rofi/config-compact.rasi | cut -d. -f1)
    case $choice in
        1)
            kitty -e nvim "$userDir/ENVariables.conf"
            ;;
        2)
            kitty -e nvim "$userDir/WindowRules.conf"
            ;;
        3)
            kitty -e nvim "$userDir/Startup_Apps.conf"
            ;;
        4)
            kitty -e nvim "$userDir/UserKeybinds.conf"
            ;;
        5)
            kitty -e nvim "$userDir/Monitors.conf"
            ;;
        6)
            kitty -e nvim "$userDir/Laptops.conf"
            ;;
        7)
            kitty -e nvim "$userDir/UserSettings.conf"
            ;;
        8)
            kitty -e nvim "$defaultDir/Settings.conf"
            ;;
        9)
            kitty -e nvim "$defaultDir/Keybinds.conf"
            ;;
        *)
            ;;
    esac
}

main
