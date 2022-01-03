#!/bin/bash

curadd=""
while true; do
    mainsel=$(whiptail --title "Dev Package Installer" --menu "MAIN MENU\nChoose an option" 25 78 16 \
        "1" "Languages" \
        "2" "IDE/Text Editors" \
        "3" "Android Dev" \
        "4" "Delete a Record" \
        "5" "Modify a Record" \
        "6" "Exit" 3>&1 1>&2 2>&3)
        case "$mainsel" in
            1)
                selectapps=$(whiptail --checklist "Web Development Apps" 25 78 16\
                    clojure "Lisp dialect for the JVM" off \
                    gcc "Gcc 11 - The GNU Compiler Collection - C and C++ frontends" off \
                    gcc10 "Gcc 10 - The GNU Compiler Collection - C and C++ frontends (Version 10)" off \
                    rust "Rust" off \
                    jdk8-openjdk "OpenJDK Java 8 development kit" off  \
                    jdk11-openjdk "OpenJDK Java 11 development kit" off  \
                    jdk-openjdk "OpenJDK Java 17 development kit" off  \
                    openjdk8-src "OpenJDK Java 8 sources" off  \
                    openjdk11-src "OpenJDK Java 11 sources" off  \
                    openjdk "OpenJDK Java 17 sources" off  \
                    nodejs-lts-erbium "NodeJS 12 LTS" off \
                    nodejs-lts-fermium "NodeJS 14 LTS" off \
                    nodejs-lts-gallium "NodeJS 16 LTS" off \
                    nodejs "NodeJS 17" off \
                    python "Python Latest version" off \
                    typescript "Typescript - language for application scale JavaScript development" off \
                    elixir "Elixir - a functional meta-programming aware language built on top of the Erlang VM" off \
                    julia "Julia - High-level, high-performance, dynamic programming language" off \
                    dart "Dart - The dart programming language SDK" off \
                    scala "Scala - A Java-interoperable language with object-oriented and functional features" off \
                    go "GoLang" off 3>&1 1>&2 2>&3)

                    finalselection=$(tr -d "\"" <<<"$selectapps")
                    echo $finalselection
                    pacman -S $finalselection
                    ;;
            2)
                selectapps=$(whiptail --checklist "IDE/Text Editors" 25 78 16\
                    atom "Atom - A hackable text editor for the 21st Century" off \
                    code "VSCode - The Open Source build of Visual Studio Code (vscode) editor" off \
                    android-studio "Android Studio - The official Android IDE (Stable branch)" off \
                    intellij-idea-community-edition "Intellij Idea Community Edition" off  \
                    intellij-idea-ultimate-edition "Intellij Idea Ultimate Edition" off  \
                    notepadqq "Notepad++-like text editor for Linux" off  \
                    vim "Vi Improved, a highly configurable, improved version of the vi text editor" off  \
                    neovim "Fork of Vim aiming to improve user experience, plugins, and GUIs" off  \
                    sublime-text-4 "Sophisticated text editor for code, html and prose" off  \
                    emacs "The extensible, customizable, self-documenting real-time display editor" off  3>&1 1>&2 2>&3)

                    finalselection=$(tr -d "\"" <<<"$selectapps")
                    echo $finalselection
                    pacman -S $finalselection
                ;;
            3)
            insowner=$(whiptail --title "Insert Details" --inputbox "Enter the name of the owner to be inserted" --nocancel 25 78 3>&1 1>&2 2>&3)
            insaddress=$(whiptail --title "Insert Details" --inputbox "Enter the address to be inserted" --nocancel 25 78 3>&1 1>&2 2>&3)
            inspnumber=""
            while [[ ! $inspnumber =~ ^[0-9]{10}$ ]]; do
                inspnumber=$(whiptail --title "Insert Details" --inputbox "Enter the Phone number to be inserted" --nocancel 25 78 3>&1 1>&2 2>&3)
            done
            if grep -EFxq "$insaddress" "$curadd"; then
                whiptail --title "INSERT ISSUE DETECTED!" --msgbox "\nAddress Already Exists !" 25 78
            break
            else
                {
                    echo "$insowner"
                    echo "$insaddress"
                    echo "$inspnumber"
                    echo ""
                } >>"$curadd"
            fi
            ;;
        4)
            deladd=$(whiptail --title "DELETE MENU" --inputbox "Enter the address details you want to delete" 25 78 3>&1 1>&2 2>&3)
            deline=$(grep -n "$deladd" "$curadd" | cut -f1 -d:)
            delstart=$((deline - 1))
            delend=$((deline + 1))
            sed -i "$delstart,$delend D" "$curadd"
            whiptail --title "DELETE MENU" --msgbox "\n Deleted !" 25 78
            ;;
        5)
            modifyloop="true"
            modify_addressInput=$(whiptail --title "MODIFY MENU" --inputbox "Enter the address details you want to modify" 25 78 3>&1 1>&2 2>&3)
            modify_line=$(grep -n "$modify_addressInput" "$curadd" | cut -f1 -d:)
            modify_start=$((modify_line - 1))
            modify_add=$((modify_line))
            modify_pnum=$((modify_line + 1))
            while "$modifyloop" -eq "true"; do
                modifyinput=$(whiptail --title "MODIFY MENU" --menu "What do you want to modify ?\nChoose an option" 25 78 16 \
                    "1" "Modify All Details" \
                    "2" "Modify Owner Name" \
                    "3" "Modify Address" \
                    "4" "Modify Phone number" \
                    "5" "Go back" 3>&1 1>&2 2>&3)
                    case $modifyinput in
                    1)
                        modiowner=$(whiptail --title "MODIFY MENU" --inputbox "Enter the owner of modified info" 25 78 3>&1 1>&2 2>&3)
                        modiaddress=$(whiptail --title "MODIFY MENU" --inputbox "Enter the Address of modified info" 25 78 3>&1 1>&2 2>&3)
                        modiphone=""
                        while [[ ! $modiphone =~ ^[0-9]{10}$ ]]; do
                            modiphone=$(whiptail --title "MODIFY MENU" --inputbox "Enter the Phone Number of modified info" 25 78 3>&1 1>&2 2>&3)
                        done
                        sed -i "s/$(head -$modify_start "$curadd" | tail -1)/$modiowner/" "$curadd"
                        sed -i "s/$(head -$modify_add "$curadd" | tail -1)/$modiaddress/" "$curadd"
                        sed -i "s/$(head -$modify_pnum "$curadd" | tail -1)/$modiphone/" "$curadd"
                        ;;
                    2)
                        modiowner=$(whiptail --title "MODIFY MENU" --inputbox "Enter the owner of modified info" 25 78 3>&1 1>&2 2>&3)
                        sed -i "s/$(head -$modify_start "$curadd" | tail -1)/$modiowner/" "$curadd"
                        ;;
                    3)
                        modiaddress=$(whiptail --title "MODIFY MENU" --inputbox "Enter the Address of modified info" 25 78 3>&1 1>&2 2>&3)
                        sed -i "s/$(head -$modify_add "$curadd" | tail -1)/$modiaddress/" "$curadd"
                        ;;
                    4)
                        modiphone=""
                        while [[ ! $modiphone =~ ^[0-9]{10}$ ]]; do
                            modiphone=$(whiptail --title "MODIFY MENU" --inputbox "Enter the Phone Number of modified info" 25 78 3>&1 1>&2 2>&3)
                        done
                        sed -i "s/$(head -$modify_pnum "$curadd" | tail -1)/$modiphone/" "$curadd"
                        ;;
                    5)
                        modifyloop="false"
                    ;;
                esac
            done
            ;;
        6)
            exit
            ;;
    esac
done
