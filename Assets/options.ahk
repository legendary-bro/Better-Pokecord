optionsmenu:
    gui, destroy
    gui, add, button, gsaveandexit x0 y0 w160 h20 , exit
    gui, add, button, greload x0 y20 w160 h30 , reload
    gui, add, button, ghotkeysmenu x170 y0 w50 h120, hotkeys
    gui, add, button, gspammenu x220 y0 w40 h120 , spam
    gui, add, button, gbalance x260 y0 w30 h120 , bal
    gui, add, button, gdaily x290 y0 w30 h120 , daily
    gui, add, button, gsave x0 y60 w80 h20 , set prefix
    gui, add, edit, vprefix x80 y60 w80 h20 , %prefix%
    gui, add, button, gsave x0 y80 w80 h20 , set min ms
    gui, add, edit, vmininterval x80 y80 w80 h20 , %mininterval%
    gui, add, button, gsave x0 y100 w80 h20 , set max ms
    gui, add, edit, vmaxinterval x80 y100 w80 h20 , %maxinterval%
    showgui(320,120,"Better Pokecord - Options")
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
    gosub, optionsmenu
    return

balance:
    send(prefix,"bal")
    gosub, optionsmenu
    return

daily:
    send(prefix,"daily")
    gosub, optionsmenu
    return

hotkeysmenu:
    gui, destroy
    gui, add, text, x10 y0 w120 h20 center border, gui windows
    gui, add, text, x140 y0 w120 h20 center border, my pokemon
    gui, add, text, x270 y0 w120 h20 center border, market
    gui, add, text, x400 y0 w120 h20 center border, spam
    gui, add, text, x10 y30 w70 h20 center, options menu
    gui, add, text, x10 y80 w70 h20 center, status menu
    gui, add, text, x10 y130 w70 h20 center, shop menu
    gui, add, text, x10 y180 w70 h20 center, search menu
    gui, add, text, x140 y30 w70 h20 center, catch
    gui, add, text, x140 y80 w70 h20 center, set pokemon
    gui, add, text, x140 y130 w70 h20 center, latest catch
    gui, add, text, x140 y180 w70 h20 center, check species
    gui, add, text, x270 y30 w70 h20 center, search iv
    gui, add, text, x270 y60 w70 h20 center, search price
    gui, add, text, x270 y90 w70 h20 center, sell
    gui, add, text, x270 y120 w70 h20 center, trade
    gui, add, text, x270 y150 w70 h20 center, buy
    gui, add, text, x270 y180 w70 h20 center, info
    gui, add, text, x400 y30 w70 h20 center, numerical
    gui, add, text, x400 y80 w70 h20 center, time
    gui, add, text, x400 y130 w70 h20 center, scrambled
    gui, add, text, x400 y180 w70 h20 center, pause
    gui, add, hotkey, vhoptions x80 y30 w50 h20 , %hoptions%
    gui, add, hotkey, vhstatus x80 y80 w50 h20 , %hstatus%
    gui, add, hotkey, vhshop x80 y130 w50 h20 , %hshop%
    gui, add, hotkey, vhmarket x80 y180 w50 h20 , %hmarket%
    gui, add, hotkey, vhcatch x210 y30 w50 h20 , %hcatch%
    gui, add, hotkey, vhset x210 y80 w50 h20 , %hset%
    gui, add, hotkey, vhlatest x210 y130 w50 h20 , %hlatest%
    gui, add, hotkey, vhspecies x210 y180 w50 h20 , %hspecies%
    gui, add, hotkey, vhsearchiv x340 y30 w50 h20 , %hsearchiv%
    gui, add, hotkey, vhsearchprice x340 y60 w50 h20 , %hsearchprice%
    gui, add, hotkey, vhquicksell x340 y90 w50 h20 , %hquicksell%
    gui, add, hotkey, vhtrade x340 y120 w50 h20 , %htrade%
    gui, add, hotkey, vhquickbuy x340 y150 w50 h20 , %hquickbuy%
    gui, add, hotkey, vhinfo x340 y180 w50 h20 , %hinfo%
    gui, add, hotkey, vhnumerical x470 y30 w50 h20 , %hnumerical%
    gui, add, hotkey, vhtime x470 y80 w50 h20 , %htime%
    gui, add, hotkey, vhscrambled x470 y130 w50 h20 , %hscrambled%
    gui, add, hotkey, vhpause x470 y180 w50 h20 , %hpause%
    gui, add, button, ghotkeysupdate x10 y210 w510 h30 , submit
    gui, add, button, ghotkeysreset x10 y240 w510 h20, reset
    showgui(530,270,"Better Pokecord - Hotkeys")
return

hotkeysupdate:
    gui, submit
    gosub, hotkeys
    gosub, optionsmenu
    return

hotkeysreset:
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
    hinfo:="^NumpadAdd"
    hnumerical:="!["
    htime:="^["
    hpause:="["
    gosub, hotkeys
    gosub, hotkeysmenu
    return

spammenu:
    gui, destroy
    gui, add, text, x10 y0 w300 h20 center border, spam options
    gui, add, button, x10 y40 w100 h30 gspamnum, counting
    gui, add, button, x110 y40 w100 h30 gspamtime, time
    gui, add, button, x210 y40 w100 h30 gspamscrambled, scrambled
    showgui(320,80,"Better Pokecord - Spam")
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
