catchpokemon:
    lastpokemoncaught := vpokemon := selectpkmn(prefix)
    return

checkspecies:
    send(prefix,"pokemon --name " vpokemon)
    return

latestcatch:
    send(prefix,"info latest")
    return

marketbuy:
    for each, pkmn in array := embedids(clipcheck()) {
        send(prefix,"market buy " pkmn,120)
        if (mod(a_index,10) = 0)
            send(prefix,"confirmbuy",120)
        if (a_index = array.maxindex())
            if (mod(a_index,10) != 0)
                send(prefix,"confirmbuy",120)
    }
    return

marketinfo:
    if ((searchtype := substr(clipcheck(),1,5)) = "level")
        for each, pkmn in array := embedids(clipcheck()) {
            send(prefix,"market info " pkmn,160)
            sleep, 2000
        }
    else
        for each, pkmn in array := embedids(clipcheck(),7) {
            send(prefix,"info " pkmn,160)
            sleep, 2000
        }
    return

marketsell:
    inputbox, price, Better Pokecord - Quick Sell, How much would you like to list each one for?
    if (errorlevel = 1)
        return
    for each, pkmn in array := embedids(clipcheck(),7) {
        send(prefix,"market list " pkmn " " price,120)
        if (mod(a_index,10) = 0)
            send(prefix,"confirmlist",120)
        if (a_index = array.maxindex())
            if (mod(a_index,10) != 0)
                send(prefix,"confirmlist",120)
    }
    return

nicknames:
    inputbox, nickname, Better Pokecord - Quick Nickname, What would you like to nickname them?`n`n(You can enter two dash's "--" to reset them)
    if (errorlevel = 1)
        return
    for each, pkmn in array := embedids(clipcheck(),7) {
        send(prefix,"select " pkmn,120)
        sleep, 1000
        if (nickname != "--")
            send(prefix,"nickname " nickname,120)
        else
            send(prefix,"nickname",120)
        sleep, 1000
    }
    return

searchiv:
    send(prefix,"market search --name " vpokemon " --order iv d --showiv")
    return

searchprice:
    send(prefix,"market search --name " vpokemon " --order price a --showiv")
    return

setpokemon:
    vpokemon := selectpkmn(prefix,false)
    return

trade:
    setkeydelay, 30
    send % prefix "p add "
    for each, pkmn in array := embedids(clipboard,7)
       send % pkmn " "
    send % "`r" prefix "confirm"
    gosub, msgcount
    return

pause:
    pause
    return

end::suspend
^end::exit
+end::
    gosub, reload
    return

hotkeys:
    hotkey, ifwinactive, Discord
    hotkey, %hqmenu%, quickmenu
    hotkey, %hshop%, shopmenu
    hotkey, %hpokedex%, pokedex
    hotkey, %hcatch%, catchpokemon
    hotkey, %hset%, setpokemon
    hotkey, %hlatest%, latestcatch
    hotkey, %hspecies%, checkspecies
    hotkey, %hsearchiv%, searchiv
    hotkey, %hsearchprice%, searchprice
    hotkey, %hquicksell%, marketsell
    hotkey, %htrade%, trade
    hotkey, %hquickbuy%, marketbuy
    hotkey, %hnickname%, nicknames
    hotkey, %hinfo%, marketinfo
    hotkey, %hpause%, pause
    hotkey, %hcyclelist%, cyclelist
    return
