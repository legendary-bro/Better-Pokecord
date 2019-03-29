quickmenu:
    menu, system, show
    return

hotkeysmenu:
    gui, destroy
    gui, margin, x0 y0 w0 h0
    gui, font, s14 w700 q5, consolas
    gui, add, text, x0 y0 w120 h25 center border, Menus
    gui, add, text, x125 y0 w120 h25 center border, Selected
    gui, add, text, x250 y0 w120 h25 center border, Highlighted
    gui, add, text, x375 y0 w120 h25 center border, Misc
    gui, font, s14
    gui, add, text, x0 y50 w120 h25 center, Main Menu
    gui, add, text, x0 y100 w120 h25 center, Pokedex
    gui, add, text, x0 y150 w120 h25 center, Shop
    gui, add, text, x125 y50 w120 h25 center, Latest Catch
    gui, add, text, x125 y100 w120 h25 center, Species Owned
    gui, add, text, x125 y150 w120 h25 center, Low Price
    gui, add, text, x125 y200 w120 h25 center, High IV
    gui, add, text, x250 y50 w120 h25 center, Buy
    gui, add, text, x250 y100 w120 h25 center, Sell
    gui, add, text, x250 y150 w120 h25 center, Trade
    gui, add, text, x250 y200 w120 h25 center, Nickname
    gui, add, text, x250 y250 w120 h25 center, Info
    gui, add, text, x375 y50 w120 h25 center, Catch
    gui, add, text, x375 y100 w120 h25 center, Set
    gui, add, text, x375 y150 w120 h25 center, Pause Spam
    gui, font, s12
    gui, add, hotkey, x0 y75 w120 h25 vhqmenu, % hqmenu
    gui, add, hotkey, x0 y125 w120 h25 vhpokedex, % hpokedex
    gui, add, hotkey, x0 y175 w120 h25 vhshop, % hshop
    gui, add, hotkey, x125 y75 w120 h25 vhlatest, % hlatest
    gui, add, hotkey, x125 y125 w120 h25 vhspecies, % hspecies
    gui, add, hotkey, x125 y175 w120 h25 vhsearchprice, % hsearchprice
    gui, add, hotkey, x125 y225 w120 h25 vhsearchiv center, % hsearchiv
    gui, add, hotkey, x250 y75 w120 h25 vhquickbuy, % hquickbuy
    gui, add, hotkey, x250 y125 w120 h25 vhquicksell, % hquicksell
    gui, add, hotkey, x250 y175 w120 h25 vhtrade, % htrade
    gui, add, hotkey, x250 y225 w120 h25 vhnickname, % hnickname
    gui, add, hotkey, x250 y275 w120 h25 vhinfo, % hinfo
    gui, add, hotkey, x375 y75 w120 h25 vhcatch, % hcatch
    gui, add, hotkey, x375 y125 w120 h25 vhset, % hset
    gui, add, hotkey, x375 y175 w120 h25 vhpause, % hpause
    gui, add, text, x0 y0 w120 h300 backgroundtrans border
    gui, add, text, x125 y0 w120 h300 backgroundtrans border
    gui, add, text, x250 y0 w120 h300 backgroundtrans border
    gui, add, text, x375 y0 w120 h300 backgroundtrans border
    gui, add, button, x0 y300 h30 w495 ghotkeysupdate, Submit
    gui, add, button, x0 y330 h20 w495 ghotkeysreset, Reset
    gui, show, h350 w495
    return

optionsmenu:
    gui, destroy
    gui, margin, x0 y0 w0 h0
    gui, font, s16 w700 q5, consolas
    gui, add, button, x0 y0 w80 h200 gsave, Submit
    gui, add, text, x80 y0 w200 h25 center, Prefix
    gui, add, text, x80 y50 w200 h25 center, Transparency
    gui, add, text, x80 y100 w200 h25 center, Spam Min
    gui, add, text, x80 y150 w200 h25 center, Spam Max
    gui, font, s12
    gui, add, edit, x80 y25 w200 h25 center vprefix, % prefix
    gui, add, edit, x80 y75 w200 h25 center vmenutrans, % menutrans
    gui, add, edit, x80 y125 w200 h25 center vmininterval, % mininterval
    gui, add, edit, x80 y175 w200 h25 center vmaxinterval, % maxinterval
    gui, show, w280 h200
    return

save:
    gui, submit
    prefcheck := strsplit(prefix)
    prefix := ""
    for each, character in prefcheck {
        if character in % "!,#,^,+"
            character := "{" character "}"
        prefix .= character
    }
    gui, destroy
    return

hotkeysupdate:
    gui, submit
    gosub, hotkeys
    gui, destroy
    return

hotkeysreset:
    hqmenu:="!z"
    hshop:="^Left"
    hpokedex:="^Right"
    hcatch:="+Enter"
    hset:="+\"
    hlatest:="Numlock"
    hspecies:="Home"
    hsearchiv:="NumpadDiv"
    hsearchprice:="NumpadMult"
    hquicksell:="NumpadSub"
    htrade:="^NumpadSub"
    hquickbuy:="NumpadAdd"
    hnickname:="^NumpadDot"
    hinfo:="^NumpadAdd"
    hnumerical:="!["
    htime:="^["
    hpause:="["
    hcyclelist:="!Space"
    gosub, hotkeys
    gosub, hotkeysmenu
    return

spamnum:
    inputbox, totalmessages, Better Pokecord - Counting Spam, how many messages would you like to send?
    if (errorlevel = 1)
        return
    loop, % totalmessages {
        send("","``" commify(a_index) "/" commify(totalmessages) " (" percentage(a_index,totalmessages) ")``",-1)
        sleep, random(mininterval,maxinterval)
    }
    return

spamtime:
    inputbox, totalmessages, Better Pokecord - Timed Spam, how many minutes while idle would you like to spam for?
    if (errorlevel = 1)
        return
    loop {
        if (a_timeidlephysical >= (totalmessages*60000)) {
            send("","``" millisectotime(totalmessages*60000) " (" percentage(totalmessages*60000,totalmessages*60000) ")``",-1)
            break
        }
        send("","``" millisectotime(a_timeidlephysical) " (" percentage(a_timeidlephysical,totalmessages*60000) ")``",-1)
        sleep, random(mininterval, maxinterval)
    }
    return

spamscrambled:
    inputbox, totalmessages, Better Pokecord - Scrambled Spam, how many messages would you like to send?
    if (errorlevel = 1)
        return
    char := strsplit("abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ@$*")
    loop, % totalmessages {
        clipboard =
        loop, % random(5,12)
            clipboard .= char[random(1,char.maxindex())]
        send("","^v"-1)
        sleep, random(mininterval,maxinterval)
    }
    return
