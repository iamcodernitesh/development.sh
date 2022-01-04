#!/bin/bash

curadd=""
while true; do
    mainsel=$(whiptail --title "Dev Package Installer" --menu "MAIN MENU\nChoose an option" 25 78 16 \
        "1" "Languages" \
        "2" "IDE/Text Editors" \
        "3" "Documentation" \
        "4" "Man Pages" \
        "5" "Modify a Record" \
        "6" "Exit" 3>&1 1>&2 2>&3)
        case "$mainsel" in
            1)
                selectapps=$(whiptail --checklist "Web Development Apps" 25 120 16\
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
                elixir "Elixir - a functional meta-programming aware language built on top of the Erlang VM " off \
                julia "Julia - High-level, high-performance, dynamic programming language" off \
                dart "Dart - The dart programming language SDK" off \
                scala "Scala - A Java-interoperable language with object-oriented and functional features" off \
                go "GoLang" off 3>&1 1>&2 2>&3)

                finalselection=$(tr -d "\"" <<<"$selectapps")
                echo $finalselection
                pacman -S $finalselection
                ;;
            2)
                selectapps=$(whiptail --checklist "IDE/Text Editors" 25 120 16\
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
                docsel=$(whiptail --title "Documentation" --menu "List of Documentations\nChoose an option" 25 78 16 \
                "1" "Angular" \
                "2" "Angular.JS v1.8" \
                "3" "Ansible v2.11" \
                "4" "Apache HTTP Server" \
                "5" "Async" \
                "6" "Babel v7" \
                "7" "Backbone.js" \
                "8" "Bash" \
                "9" "Bluebird" \
                "10" "Bootstrap v5" \
                "11" "Bottle v0.12" \
                "12" "Bower" \
                "13" "C" \
                "14" "C++" \
                "15" "CakePHP v4.1" \
                "16" "Chai" \
                "17" "Chef v17" \
                "18" "Clojure v1.10 Stable" \
                "19" "CMake v3.21" \
                "20" "Codeception" \
                "21" "CodeceptJS" \
                "22" "CodeIgniter v4" \
                "23" "CoffeeScript v2" \
                "24" "Composer" \
                "25" "Cordova v9" \
                "26" "Crystal" \
                "27" "CSS" \
                "28" "Cypress" \
                "29" "D" \
                "30" "D3.js v7" \
                "31" "Dart v2" \
                "32" "Django v4.0" \
                "33" "Django REST Framework" \
                "34" "Docker v19" \
                "35" "Dojo" \
                "36" "Drupal v8" \
                "37" "Electron" \
                "38" "Elisp" \
                "39" "Elixir v1.12" \
                "40" "Ember.js v3" \
                "41" "Enzyme" \
                "42" "Erlang v24.0" \
                "43" "Esbuild" \
                "44" "ESLint" \
                "45" "Express" \
                "46" "Falcon v2.0" \
                "47" "Fish v3.3" \
                "48" "Flask v2.0" \
                "49" "Flow" \
                "50" "GCC 11" \
                "51" "Git" \
                "52" "GNU Fortan 11" \
                "53" "GNU Make" \
                "54" "GNU Cobol" \
                "55" "GNU Plot" \
                "56" "GO" \
                "57" "Godot v3.3" \
                "58" "Graphite" \
                "59" "Groovy v3.0" \
                "60" "Grunt" \
                "61" "GTK v4.0" \
                "62" "Handlebars.js" \
                "63" "HAProxy v2.4" \
                "64" "Haskell v9" \
                "65" "Homebrew" \
                "66" "HTML" \
                "67" "HTTP" \
                "68" "i3" \
                "69" "Immutable.js" \
                "70" "InfluxData" \
                "71" "Jasmine" \
                "72" "JavaScript" \
                "73" "Jekyll v4" \
                "74" "Jest" \
                "75" "Jinja v3.0" \
                "76" "Jq" \
                "77" "jQuery" \
                "78" "jQuery Mobile" \
                "79" "jQuery UI" \
                "80" "JSDoc" \
                "81" "Julia v1.7" \
                "82" "Knockout.js" \
                "83" "Koa" \
                "84" "Kotlin v1.6" \
                "85" "Laravel v8" \
                "86" "Leaflet v1.7" \
                "87" "Less v4" \
                "88" "Liquid" \
                "89" "Lodash v4" \
                "90" "Lua v5.4" \
                "91" "Love" \
                "92" "MariaDB" \
                "93" "Marionette v4" \
                "94" "Markdown" \
                "95" "Matplotlib v3.4" \
                "96" "Meteor v1.5" \
                "97" "Mocha" \
                "98" "Modernizr" \
                "99" "Moment.js" \
                "100" "Mongoose" \
                "101" "Nginx" \
                "102" "Nginx/Lua Module" \
                "103" "Nim" \
                "104" "Node" \
                "105" "Nokogiri" \
                "106" "NPM" \
                "107" "Numpy v1.21" \
                "108" "Ocaml" \
                "109" "Octave v6" \
                "110" "OpenJDK v17" \
                "111" "OpenTSDB" \
                "112" "Padrino" \
                "113" "Pandas v1" \
                "114" "Perlv5.34" \
                "115" "Phalcon v3" \
                "116" "Phaser" \
                "117" "Phoenix" \
                "118" "PHP" \
                "119" "PHPUnit v9" \
                "119" "Point Cloud Library" \
                "120" "Pony" \
                "121" "PostgreSQL v14" \
                "122" "Prettier" \
                "123" "Pug" \
                "124" "Puppeteer" \
                "125" "Pygame" \
                "126" "Python v3.10" \
                "127" "Pytorch" \
                "128" "Q" \
                "129" "Qt v6.1" \
                "130" "R" \
                "131" "Ramda" \
                "132" "React" \
                "133" "React Bootstrap" \
                "134" "ReactiveX" \
                "135" "ReactNative" \
                "136" "Redis" \
                "137" "Redux" \
                "138" "Relay v10" \
                "139" "RequireJS" \
                "140" "RethinkDB" \
                "141" "Ruby v3" \
                "142" "Ruby/Minitest" \
                "143" "Ruby on Rails v6.1" \
                "144" "Rust" \
                "145" "RxJS" \
                "146" "SaltStack" \
                "147" "Sass" \
                "148" "Scala v2.13" \
                "149" "Scikit-image" \
                "150" "Scikit-learn" \
                "151" "Sequelize v6" \
                "152" "SinonJS v11" \
                "153" "Socket.IO v4" \
                "154" "Spring Boot" \
                "155" "SQLite" \
                "156" "Statsmodels" \
                "157" "Support Tables" \
                "158" "SVG" \
                "159" "Symfony v4.1" \
                "160" "Tcl/Tk" \
                "161" "TensorFlow v2.4" \
                "162" "TensorFlow C++ v2.4" \
                "163" "Terraform" \
                "164" "Twig v3" \
                "165" "Typescript" \
                "166" "Underscore" \
                "167" "Vagrant" \
                "168" "Vite" \
                "169" "Vue Router v4" \
                "170" "VueJS v3" \
                "171" "Vuex v4" \
                "172" "Vulkan" \
                "173" "Werkzeug v2.0" \
                "174" "Wordpress" \
                "175" "XSLT & XPath" \
                "176" "Yarn-berry" \
                "177" "Yii v2.0" \
                "178" "Exit" 3>&1 1>&2 2>&3)
                case "$docsel" in
                    1)
                        xdg-open https://devdocs.io/angular/
                        ;;
                    2)
                        xdg-open https://devdocs.io/angularjs~1.8/
                        ;;

                    3)
                        xdg-open https://devdocs.io/ansible/ 
                        ;;
                    4)
                        xdg-open https://devdocs.io/apache~2.4/
                        ;;
                esac
                ;;
            4)
                echo "Test"
                ;;
            5)
                ;;
            6)
                exit
                ;;
    esac
done
