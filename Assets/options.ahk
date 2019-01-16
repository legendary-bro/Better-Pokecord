optionsmenu:
    gui, destroy
    gui, add, button, gsaveandexit x0 y0 w160 h20 , exit
    gui, add, button, greload x0 y20 w160 h30 , reload
    gui, add, button, gshowstats x170 y0 w40 h120 default , stats
    gui, add, button, ghotkeysmenu x210 y0 w50 h120, hotkeys
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

hotkeysmenu:
    gui, destroy
    gui, add, text, x10 y0 w120 h20 center border, gui windows
    gui, add, text, x140 y0 w120 h20 center border, my pokemon
    gui, add, text, x270 y0 w120 h20 center border, market
    gui, add, text, x400 y0 w120 h20 center border, spam
    gui, add, text, x10 y50 w70 h20 center, options menu
    gui, add, text, x10 y100 w70 h20 center, shop menu
    gui, add, text, x10 y150 w70 h20 center, market menu
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
    gui, add, text, x400 y50 w70 h20 center, numerical
    gui, add, text, x400 y100 w70 h20 center, generator
    gui, add, text, x400 y150 w70 h20 center, pause
    gui, add, hotkey, vhoptions x80 y50 w50 h20 , %hoptions%
    gui, add, hotkey, vhshop x80 y100 w50 h20 , %hshop%
    gui, add, hotkey, vhmarket x80 y150 w50 h20 , %hmarket%
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
    gui, add, hotkey, vhnumerical x470 y50 w50 h20 , %hnumerical%
    gui, add, hotkey, vhgenerator x470 y100 w50 h20 , %hgenerator%
    gui, add, hotkey, vhpause x470 y150 w50 h20 , %hpause%
    gui, add, button, gupdatehotkeys x10 y210 w510 h30 , submit
    showgui(530,250,"Better Pokecord - Hotkeys")
return

save:
    gui, submit
    prefcheck := strsplit(prefix)
    prefix =
    checkfor := "!,#,^,+"
    for each, character in prefcheck {
        if character in %checkfor%
            character := "{" character "}"
        prefix := prefix . character
    }
    gosub, optionsmenu
    return

balance:
    sleepwin("Discord",20)
    send % prefix "bal`r"
    gosub, msgcount
    gosub, optionsmenu
    return

daily:
    sleepwin("Discord",20)
    send % prefix "daily`r"
    gosub, msgcount
    gosub, optionsmenu
    return

reload:
    gosub, updateini
    reload
    return

updatehotkeys:
    gui, submit
    gosub, hotkeys
    gosub, optionsmenu
    return
    