#!/bin/bash


# Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh




#!/bin/bash 




    # ? Allgemein 
    # * Auto Icloud irgendwas aus
    defaults write NSGlobalDomain NSDocumentSaveNewDocumentsToCloud -bool false
    # * Setzt Dark Mode fest
    defaults write NSGlobalDomain AppleInterfaceStyle -string "Dark"
    # * Deaktiviert das automatische hochladne von nutzer Daten
    defaults write com.apple.CrashReporter DialogType -string "none"

    # ? Screenshot einstellungen
    # * Der name eines Screnshotes hat kein Datum
    defaults write com.apple.screencapture "include-date" -bool "false"
    # * Setzt die Default Location für die Screenshots fest
    defaults write com.apple.screencapture "location" -string "~/Desktop" && killall SystemUIServer
    # * Ein Beispiel soll angezeigt werden beim erstellen unten rechts
    defaults write com.apple.screencapture "show-thumbnail" -bool "true"
    # * Setzt das Standard Screenshot Format fest zu png
    defaults write com.apple.screencapture "type" -string "png"

    # ? Spotlight
    defaults write com.apple.Spotlight lastWindowPosition -string "{{800, 400}, {600, 430}}"



    # ? Menu Bar
    # * Macht das der Doppel Punkt nicht jede Sekunde blinkt // nicht blinken
    defaults write com.apple.menuextra.clock "FlashDateSeparators" -bool "false" && killall SystemUIServer 
    # * Versteckt das Spotlight ICons
    defaults write com.apple.Spotlight MenuItemHidden -bool true
    #* Fügt Tastaturbeleuchtung hinzu
    defaults write com.apple.Backlighting MenuItemHidden -bool true
    #* Fügt Das Bluetooth Icons hinzu
    defaults write com.apple.Bluetooth MenuItemHidden -bool true
    # * Entfernt Schnell NeBenutzer wechseln
    defaults write com.apple.FastUserSwitching MenuItemHidden -bool false


    # ?
    # ? Finder/Dock | File 
    # ?


    # ? Mac OS Dock Konfiguration
    # * Setzt das Dock nach unten
    defaults write com.apple.dock "orientation" -string "bottom" && killall Dock
    # * aktiviert autohide
    defaults write com.apple.dock "autohide" -bool "true" && killall Dock
    # * Enfrnt den Delay des Dockes
    defaults write com.apple.dock "autohide-delay" -float "0" && killall Dock
    # * Entfernt die zuletzt benutzen Deteien und Apps
    defaults write com.apple.dock "show-recents" -bool "false" && killall Dock
    #* wenn eine Datei über eine App auf im docke geogen wird // wird die Datei in der App geöffnet
    defaults write com.apple.dock "enable-spring-load-actions-on-all-items" -bool "true" && killall Dock
    # * Verhindert "Bouncen" von Apps
    defaults write com.apple.dock no-bouncing -bool true && killall Dock

    # ? Stellt den Desktop ein
    # * Setzt die Icon Grösse Fest
    defaults write com.apple.dock "tilesize" -int "40" && killall Dock


    # ? Finder und Files  Einstellungen
    # *  Setzt "kill a finder" auf nicht aktiviert 
    defaults write com.apple.finder "QuitMenuItem" -bool "false" && killall Finder
    # *  Zeigt nicht alle File Extansion beispiel (.webloc) in Finder an
    defaults write NSGlobalDomain "AppleShowAllExtensions" -bool "true" && killall Finder
    # * Verstecke Dateien Sollen nicht angesehen werden ohne Key Kombo
    defaults write com.apple.finder "AppleShowAllFiles" -bool "false" && killall Finder
    # * Zeigt zuerst Ordner dann Dateien an
    defaults write com.apple.finder "_FXSortFoldersFirst" -bool "true" && killall Finder
    # * Setzt die Grösse von den Icons im FInder fest auf mittel
    defaults write NSGlobalDomain "NSTableViewDefaultSizeMode" -int "2" && killall Finder
    # * Allowing text selection in Quick Look/Preview in Finder by default
    defaults write com.apple.finder QLEnableTextSelection -bool true
    # * Setzt den Style zu "Spalten | Colum" als Default
    defaults write com.apple.finder FXPreferredViewStyle -string "clmv" && killall Finder


    # TODO Delay bei Hovern auf dem Name vom Ornder zu zeigen des symbols 
    defaults write NSGlobalDomain "NSToolbarTitleViewRolloverDelay" -float "0.5" && killall Finder # Default
    defaults write NSGlobalDomain "NSToolbarTitleViewRolloverDelay" -float "0" && killall Finder
    # TODO Warnung bei ändern von File Extensins 
    defaults write com.apple.finder "FXEnableExtensionChangeWarning" -bool "false" && killall Finder
    # TODO löscht den Papirkorb nach 30 Tagen
    defaults write com.apple.finder "FXRemoveOldTrashItems" -bool "false" && killall Finder # default


    # ? Desktop 
    # *  Macht das Ordner nicht zuerst angezeigt werden 
    defaults write com.apple.finder "_FXSortFoldersFirstOnDesktop" -bool "false" && killall Finder
    # *  Macht das die Harddisk nicht angezeigt wird
    defaults write com.apple.finder "ShowHardDrivesOnDesktop" -bool "false" && killall Finder
    defaults write com.apple.finder "ShowExternalHardDrivesOnDesktop" -bool "true" && killall Finder # an  
    defaults write com.apple.finder "ShowRemovableMediaOnDesktop" -bool "true" && killall Finder # zeigt default



    # ?
    # ? Perphiperie Geräte und Bildschirm
    # ?


    # ? Maus (braucht Neustart zum wirken)
    # * Schaltet "mouse acceleration" ein(default) / bedeutung:: when your cursor in the game moves further depending on how fast you move your mouse on your desk
    defaults write NSGlobalDomain com.apple.mouse.linear -bool "false" # es kann bei manchen games helfen es aus zu haben 

    # Mouse speed
    defaults write NSGlobalDomain com.apple.mouse.scaling -float "1"

    # ? Trackpad
    # * Setzt die Klick stärke fest // default i guess??
    defaults write com.apple.AppleMultitouchTrackpad "FirstClickThreshold" -int "1" # Default

    # ? Tastatur
    # * Wenn lange ein Key gedrückt wird // dann wird das Menü angeueigt 
    defaults write NSGlobalDomain "ApplePressAndHoldEnabled" -bool "true" # Default
    # * Nach 5 Min geht nicht drücken geht Beleuchtung aus
    defaults write com.apple.BezelServices kDimTime -int 300
    #* Deaktiviert Tastauur vom automatischen Helligkeit EInstellen
    sudo defaults write /Library/Preferences/com.apple.iokit.AmbientLightSensor "Automatic Keyboard Enabled" -bool false


    # ? Bildschirm
    # * Deaktiviert Automatisches Anpassen der Helligkeit
    sudo defaults write /Library/Preferences/com.apple.iokit.AmbientLightSensor "Automatic Display Enabled" -bool false




    # ?
    # ? App Einstellungen 
    # ?



    # ? Text Edit
    # * Disable Richt Text // Macht .txt anstlle vonn.rtf in Text edit als standard 
    defaults write com.apple.TextEdit "RichText" -bool "false" && killall TextEdit
    # * Macht smarte Anführungszeichen an // erkennt automatisch den besseren
    defaults write com.apple.TextEdit "SmartQuotes" -bool "true" && killall TextEdit # Default


    # ? Safari Einstellungen 
    # * zeigt nur den Webseiten namen an und nicht volle URL
    defaults write com.apple.Safari "ShowFullURLInSmartSearchField" -bool "false" && killall Safari



    # ? Activity Monitor /  ktivitäts Anzeige
    # * Setzt die Zeit fest wie oft es sich aktualisiert in Sekunden // default 5s // setzt es zu 7s // aku gründe
    defaults write com.apple.ActivityMonitor "UpdatePeriod" -int "7" && killall Activity\ Monitor 
    # * "Show Disk usage over time, as two mirrored line graphs. The top (blue) chart shows disk read traffic. The bottom (red) chart shows disk write traffic."
    defaults write com.apple.ActivityMonitor "IconType" -int "3" && killall Activity\ Monitor

    # ? Messages /  Immesages
    # * Zeigt ein Subjet Field
    defaults write com.apple.MobileSMS "MMSShowSubject" -bool "true" && killall Messages




    # ? Time Machine
    # * Deaktiviert das Automatiwche Backup
    sudo tmutil disable
    # * Verhindert das Timemachine neue Hard Drives als Backup Nutzt
    defaults write com.apple.TimeMachine DoNotOfferNewDisksForBackup -bool true
    # * Deaktiviert Locale Time Machine Backups
    hash tmutil &> /dev/null && sudo tmutil disablelocal

    # ? Printer
    # * zeigt immer das Volle Druck Menu direkt
    defaults write -g PMPrintingExpandedStateForPrint -bool TRUE
    # * Schaltet Drucker App nach dem Drucker direkt aus // sie bleibt nicht offne 
    defaults write com.apple.print.PrintingPrefs "Quit When Finished" -bool true





#  Network

    name="HDW"
    password_var="wirelessinthehouse"
    command networksetup -addpreferredwirelessnetworkatindex en0 "$name" 0 WPA2 "$PASSWORD"









# * Homebrew


    brew install "sass/sass"
    brew install "asciiquarium"
    brew install "bat"
    brew install "btop"
    brew install "python@3.12"
    brew install "cmatrix"
    brew install "composer"
    brew install "cowsay"
    brew install "docker"
    brew install "fish"
    brew "fortune"
    brew "fzf"
    brew "git"
    brew "htop"
    brew "httpie"
    brew "lsd"
    brew "lynx"
    brew "mkcert"
    brew "mpv"
    brew "mysql"
    brew "mysql@8.4"
    brew "neofetch"
    brew "neovim"
    brew "nginx"
    brew "node@18"
    brew "php@8.2"
    brew "pipx"
    brew "superfile"
    brew "thefuck"
    brew "timg"
    brew "toilet"
    brew "tree"
    brew "wget"
    brew "samtay/tui/tetris"
    brew "sass/sass/sass"
    cask "aldente"
    cask "google-chrome"
    cask "spotify"
    cask "visual-studio-code"
    brew install zen-browser





    vscode "aaron-bond.better-comments"
    vscode "eamodio.gitlens"
    vscode "esbenp.prettier-vscode"
    vscode "fallenmax.mithril-emmet"
    vscode "felipe.nasc-touchbar"
    vscode "formulahendry.auto-rename-tag"
    vscode "mblode.twig-language"
    vscode "mikestead.dotenv"
    vscode "rifi2k.format-html-in-php"
    vscode "ritwickdey.liveserver"
    vscode "sasa.vscode-sass-format"
    vscode "sibiraj-s.vscode-scss-formatter"
    vscode "xdebug.php-debug"
    vscode "xdebug.php-pack"
    vscode "zignd.html-css-class-completion"
    vscode "zobo.php-intellisense"

