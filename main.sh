#!/bin/bash

curadd=""
while true; do
    mainsel=$(whiptail --title "Dev Package Installer" --menu "MAIN MENU\nChoose an option" 25 78 16 \
        "1" "Languages" \
        "2" "IDE/Text Editors" \
        "3" "Documentation" \
        "4" "Man Pages" \
        "5" "Test API Calls" \
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
                openjdk-src "OpenJDK Java 17 sources" off  \
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
                yay -S $finalselection
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
                "157" "SVG" \
                "158" "Symfony v4.1" \
                "159" "Tcl/Tk" \
                "160" "TensorFlow v2.4" \
                "161" "TensorFlow C++ v2.4" \
                "162" "Terraform" \
                "163" "Twig v3" \
                "164" "Typescript" \
                "165" "Underscore" \
                "166" "Vagrant" \
                "167" "Vite" \
                "168" "Vue Router v4" \
                "169" "VueJS v3" \
                "170" "Vuex v4" \
                "171" "Vulkan" \
                "172" "Werkzeug v2.0" \
                "173" "Wordpress" \
                "174" "XSLT & XPath" \
                "175" "Yarn-berry" \
                "176" "Yii v2.0" \
                "177" "Exit" 3>&1 1>&2 2>&3)
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
                        xdg-open https://devdocs.io/apache_http_server/ 
                        ;;
                    5)
                        xdg-open https://devdocs.io/async/
                        ;;
                    6)
                        xdg-open https://devdocs.io/babel~7/ 
                        ;;
                    7)
                        xdg-open https://devdocs.io/backbone/
                        ;;
                    8)
                        xdg-open https://devdocs.io/bash/ 
                        ;;
                    9)
                        xdg-open https://devdocs.io/bluebird/
                        ;;
                    10)
                        xdg-open https://devdocs.io/bootstrap~5/ 
                        ;;
                    11)
                        xdg-open https://devdocs.io/bottle~0.12/
                        ;;
                    12)
                        xdg-open https://devdocs.io/bower/
                        ;;
                    13)
                        xdg-open https://devdocs.io/c/ 
                        ;;
                    14)
                        xdg-open https://devdocs.io/cpp/ 
                        ;;
                    15)
                        xdg-open https://devdocs.io/cakephp~4.1/ 
                        ;;
                    16)
                        xdg-open https://devdocs.io/chai/ 
                        ;;
                    17)
                        xdg-open https://devdocs.io/chef~17/ 
                        ;;
                    18)
                        xdg-open https://devdocs.io/clojure~1.10/ 
                        ;;
                    19)
                        xdg-open https://devdocs.io/cmake~3.21/ 
                        ;;
                    20)
                        xdg-open https://devdocs.io/codeception/
                        ;;
                    21)
                        xdg-open https://devdocs.io/codeceptjs/
                        ;;
                    22)
                        xdg-open https://devdocs.io/codeigniter~4/ 
                        ;;
                    23)
                        xdg-open https://devdocs.io/coffeescript~2/ 
                        ;;
                    24)
                        xdg-open https://devdocs.io/composer/ 
                        ;;
                    25)
                        xdg-open https://devdocs.io/cordova~9/ 
                        ;;
                    26)
                        xdg-open https://devdocs.io/crystal/ 
                        ;;
                    27)
                        xdg-open https://devdocs.io/css/ 
                        ;;
                    28)
                        xdg-open https://devdocs.io/cypress/ 
                        ;;
                    29)
                        xdg-open https://devdocs.io/d/ 
                        ;;
                    30)
                        xdg-open https://devdocs.io/d3~7/ 
                        ;;
                    31)
                        xdg-open https://devdocs.io/dart~2/  
                        ;;
                    32)
                        xdg-open https://devdocs.io/django~4.0/ 
                        ;;
                    33)
                        xdg-open https://devdocs.io/django_rest_framework/ 
                        ;;
                    34)
                        xdg-open https://devdocs.io/docker~19/ 
                        ;;
                    35)
                        xdg-open https://dojotoolkit.org/api/?qs=1.10/ 
                        ;;
                    36)
                        xdg-open https://api.drupal.org/api/drupal/8.1.x 
                        ;;
                    37)
                        xdg-open https://devdocs.io/electron/ 
                        ;;
                    38)
                        xdg-open https://devdocs.io/elisp/ 
                        ;;
                    39)
                        https://devdocs.io/elixir~1.12/
                        ;;
                    40)
                        xdg-open https://devdocs.io/ember~3/
                        ;;
                    41)
                        xdg-open https://devdocs.io/enzyme/ 
                        ;;
                    42)
                        xdg-open https://devdocs.io/erlang~24/
                        ;;
                    43)
                        xdg-open https://devdocs.io/esbuild/ 
                        ;;
                    44)
                        xdg-open https://devdocs.io/eslint/ 
                        ;;
                    45)
                        xdg-open https://devdocs.io/express/ 
                        ;;
                    46)
                        xdg-open https://devdocs.io/falcon~2.0/
                        ;;
                    47)
                        xdg-open https://devdocs.io/fish~3.3/
                        ;;
                    48)
                        xdg-open https://devdocs.io/flask~2.0/ 
                        ;;
                    49)
                        xdg-open https://devdocs.io/flow/ 
                        ;;
                    50)
                        xdg-open https://devdocs.io/gcc~11/ 
                        ;;
                    51)
                        xdg-open https://devdocs.io/git/ 
                        ;;
                    52)
                        xdg-open https://devdocs.io/gnu_fortran~11/ 
                        ;;
                    53)
                        xdg-open https://devdocs.io/gnu_make/ 
                        ;;
                    54)
                        xdg-open https://devdocs.io/gnu_cobol/
                        ;;
                    55)
                        xdg-open https://devdocs.io/gnuplot/ 
                        ;;
                    56)
                        xdg-open https://devdocs.io/go/ 
                        ;;
                    57)
                        xdg-open https://devdocs.io/godot~3.3/ 
                        ;;
                    58)
                        xdg-open https://devdocs.io/graphite/ 
                        ;;
                    59)
                        xdg-open https://devdocs.io/groovy~3.0/ 
                        ;;
                    60)
                        xdg-open https://devdocs.io/grunt/ 
                        ;;
                    61)
                        xdg-open https://devdocs.io/gtk~4.0/
                        ;;
                    62)
                        xdg-open https://devdocs.io/handlebars/
                        ;;
                    63)
                        xdg-open https://devdocs.io/haproxy~2.4/
                        ;;
                    64)
                        xdg-open https://devdocs.io/haskell~9/ 
                        ;;
                    65)
                        xdg-open https://devdocs.io/homebrew/ 
                        ;;
                    66)
                        xdg-open https://devdocs.io/html/ 
                        ;;
                    67)
                        xdg-open https://devdocs.io/http/
                        ;;
                    68)
                        xdg-open https://devdocs.io/i3/
                        ;;
                    69)
                        xdg-open https://devdocs.io/immutable/
                        ;;
                    70)
                        xdg-open https://devdocs.io/influxdata/
                        ;;
                    71)
                        xdg-open https://devdocs.io/jasmine/
                        ;;
                    72)
                        xdg-open https://devdocs.io/javascript/
                        ;;
                    73)
                        xdg-open https://devdocs.io/jekyll~4/ 
                        ;;
                    74)
                        xdg-open https://devdocs.io/jest/ 
                        ;;
                    75)
                        xdg-open https://devdocs.io/jinja~3.0/ 
                        ;;
                    76)
                        xdg-open https://devdocs.io/jq/
                        ;;
                    77)
                        xdg-open https://devdocs.io/jquery/
                        ;;
                    78)
                        xdg-open https://devdocs.io/jquerymobile/
                        ;;
                    79)
                        xdg-open https://devdocs.io/jqueryui/ 
                        ;;
                    80)
                        xdg-open https://devdocs.io/jsdoc/ 
                        ;;
                    81)
                        xdg-open https://devdocs.io/julia~1.7/ 
                        ;;
                    82)
                        xdg-open https://devdocs.io/knockout/ 
                        ;;
                    83)
                        xdg-open https://devdocs.io/koa/ 
                        ;;
                    84)
                        xdg-open https://devdocs.io/kotlin~1.6/ 
                        ;;
                    85)
                        xdg-open https://devdocs.io/laravel~8/ 
                        ;;
                    86)
                        xdg-open https://devdocs.io/leaflet~1.7/ 
                        ;;
                    87)
                        xdg-open https://devdocs.io/less~4/
                        ;;
                    88)
                        xdg-open https://devdocs.io/liquid/ 
                        ;;
                    89)
                        xdg-open https://devdocs.io/lodash~4/
                        ;;
                    90)
                        xdg-open https://devdocs.io/lua~5.4/
                        ;;
                    91)
                        xdg-open https://devdocs.io/love/ 
                        ;;
                    92)
                        xdg-open https://devdocs.io/mariadb/ 
                        ;;
                    93)
                        xdg-open https://devdocs.io/marionette~4/ 
                        ;;
                    94)
                        xdg-open https://devdocs.io/markdown/ 
                        ;;
                    95)
                        xdg-open https://devdocs.io/matplotlib~3.4/
                        ;;
                    96)
                        xdg-open https://devdocs.io/meteor~1.5/
                        ;;
                    97)
                        xdg-open https://devdocs.io/mocha/ 
                        ;;
                    98)
                        xdg-open https://devdocs.io/modernizr/ 
                        ;;
                    99)
                        xdg-open https://devdocs.io/moment/ 
                        ;;
                    100)
                        xdg-open https://devdocs.io/mongoose/
                        ;;
                    101)
                        xdg-open https://devdocs.io/nginx/ 
                        ;;
                    102)
                        xdg-open https://devdocs.io/nginx_lua_module/ 
                        ;;
                    103)
                        xdg-open https://devdocs.io/nim/ 
                        ;;
                    104)
                        xdg-open https://devdocs.io/node/
                        ;;
                    105)
                        xdg-open https://devdocs.io/nokogiri/ 
                        ;;
                    106)
                        xdg-open https://devdocs.io/npm/ 
                        ;;
                    107)
                        xdg-open https://devdocs.io/numpy~1.21/ 
                        ;;
                    108)
                        xdg-open https://devdocs.io/ocaml/ 
                        ;;
                    109)
                        xdg-open https://devdocs.io/octave~6/ 
                        ;;
                    110)
                        xdg-open https://devdocs.io/openjdk~17/ 
                        ;;
                    111)
                        xdg-open https://devdocs.io/opentsdb/
                        ;;
                    112)
                        xdg-open https://devdocs.io/padrino/
                        ;;
                    113)
                        xdg-open https://devdocs.io/pandas~1/ 
                        ;;
                    114)
                        xdg-open https://devdocs.io/perl~5.34/ 
                        ;;
                    115)
                        xdg-open https://devdocs.io/phalcon~3/ 
                        ;;
                    116)
                        xdg-open https://devdocs.io/phaser/ 
                        ;;
                    117)
                        xdg-open https://devdocs.io/phoenix/
                        ;;
                    118)
                        xdg-open https://devdocs.io/php/ 
                        ;;
                    119)
                        xdg-open https://devdocs.io/phpunit~9/ 
                        ;;
                    120)
                        xdg-open https://devdocs.io/pony/ 
                        ;;
                    121)
                        xdg-open https://devdocs.io/postgresql~14/ 
                        ;;
                    122)
                        xdg-open https://devdocs.io/prettier/ 
                        ;;
                    123)
                        xdg-open https://devdocs.io/pug/ 
                        ;;
                    124)
                        xdg-open https://devdocs.io/puppeteer/ 
                        ;;
                    125)
                        xdg-open https://devdocs.io/pygame/ 
                        ;;
                    126)
                        xdg-open https://devdocs.io/python~3.10/ 
                        ;;
                    127)
                        xdg-open https://devdocs.io/pytorch/ 
                        ;;
                    128)
                        xdg-open https://devdocs.io/q/ 
                        ;;
                    129)
                        xdg-open https://devdocs.io/qt~6.1/ 
                        ;;
                    130)
                        xdg-open https://devdocs.io/r/ 
                        ;;
                    131)
                        xdg-open https://devdocs.io/ramda/ 
                        ;;
                    132)
                        xdg-open https://devdocs.io/react/ 
                        ;;
                    133)
                        xdg-open https://devdocs.io/react_bootstrap/ 
                        ;;
                    134)
                        xdg-open https://devdocs.io/reactivex/ 
                        ;;
                    135)
                        xdg-open https://devdocs.io/react_native/ 
                        ;;
                    136)
                        xdg-open https://devdocs.io/redis/ 
                        ;;
                    137)
                        xdg-open https://devdocs.io/redux/ 
                        ;;
                    138)
                        xdg-open https://devdocs.io/relay~10/ 
                        ;;
                    139)
                        xdg-open https://devdocs.io/requirejs/ 
                        ;;
                    140)
                        xdg-open https://devdocs.io/rethinkdb~javascript/ 
                        ;;
                    141)
                        xdg-open https://devdocs.io/ruby~3/
                        ;;
                    142)
                        xdg-open https://devdocs.io/minitest/ 
                        ;;
                    143)
                        xdg-open https://devdocs.io/rails~6.1/ 
                        ;;
                    144)
                        xdg-open https://devdocs.io/rust/
                        ;;
                    145)
                        xdg-open https://devdocs.io/rxjs/ 
                        ;;
                    146)
                        xdg-open https://devdocs.io/saltstack/ 
                        ;;
                    147)
                        xdg-open https://devdocs.io/sass/ 
                        ;;
                    148)
                        xdg-open https://devdocs.io/scala~2.13_library/ 
                        ;;
                    149)
                        xdg-open https://devdocs.io/scikit_image/ 
                        ;;
                    150)
                        xdg-open https://devdocs.io/scikit_learn/ 
                        ;;
                    151)
                        xdg-open https://devdocs.io/sequelize~6/ 
                        ;;
                    152)
                        xdg-open https://devdocs.io/sinon~11/ 
                        ;;
                    153)
                        xdg-open https://devdocs.io/socketio~4/ 
                        ;;
                    154)
                        xdg-open https://devdocs.io/spring_boot/ 
                        ;;
                    155)
                        xdg-open https://devdocs.io/sqlite/ 
                        ;;
                    156)
                        xdg-open https://devdocs.io/statsmodels/ 
                        ;;
                    157)
                        xdg-open https://devdocs.io/svg/
                        ;;
                    158)
                        xdg-open https://devdocs.io/symfony~4.1/ 
                        ;;
                    159)
                        xdg-open https://devdocs.io/tcl_tk/ 
                        ;;
                    160)
                        xdg-open https://devdocs.io/tensorflow~2.4/
                        ;;
                    161)
                        xdg-open https://devdocs.io/tensorflow_cpp~2.4/ 
                        ;;
                    162)
                        xdg-open https://devdocs.io/terraform/ 
                        ;;
                    163)
                        xdg-open https://devdocs.io/twig~3/ 
                        ;;
                    164)
                        xdg-open https://devdocs.io/typescript/ 
                        ;;
                    165)
                        xdg-open https://devdocs.io/underscore/ 
                        ;;
                    166)
                        xdg-open https://devdocs.io/vagrant/ 
                        ;;
                    167)
                        xdg-open https://devdocs.io/vite/ 
                        ;;
                    168)
                        xdg-open https://devdocs.io/vue_router~4/ 
                        ;;
                    169)
                        xdg-open https://devdocs.io/vue~3/ 
                        ;;
                    170)
                        xdg-open https://devdocs.io/vuex~4/ 
                        ;;
                    171)
                        xdg-open https://devdocs.io/vulkan/ 
                        ;;
                    172)
                        xdg-open https://devdocs.io/werkzeug~2.0/ 
                        ;;
                    173)
                        xdg-open https://devdocs.io/wordpress/ 
                        ;;
                    174)
                        xdg-open https://devdocs.io/xslt_xpath/ 
                        ;;
                    175)
                        xdg-open https://devdocs.io/yarn~berry/ 
                        ;;
                    176)
                        https://devdocs.io/yii~2.0/
                        ;;
                    177)
                        ;;
                esac
                ;;
            4)
                maninput=$(whiptail --title "Manual" --inputbox "Enter the name of the manual you want to open" 8 78 3>&1 1>&2 2>&3)
                output=$(man $maninput)
                whiptail --title "$maninput Man Page" --scrolltext --msgbox "$output" 30 130
                ;;
            5)
                apiinput=$(whiptail --title "Manual" --inputbox "Enter the name of the manual you want to open" 8 78 3>&1 1>&2 2>&3)
                output=$(curl $apiinput | jq)
                whiptail --title "API Call JSON" --scrolltext --msgbox "$output" 30 130
                ;;
            6)
                exit
                ;;
    esac
done
