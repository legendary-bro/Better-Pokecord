statusmenu:
    gui, destroy
    gui, add, text, x10 y0 w160 h20 center border, selected pokemon
    gui, add, text, x10 y40 w160 h20 center, % vpokemon
    gui, add, button, x10 y80 w160 h30 gcheckspecies,  % "show owned " vpokemon "'s"
    gui, add, button, x10 y130 w160 h30 gsearchiv, search high iv
    gui, add, button, x10 y180 w160 h30 gsearchprice, search low price
    gui, add, text, x200 y0 w160 h20 center border, stats
    gui, add, text, x200 y30 w160 h20 center, % "total boots : " commify(bootcount)
    gui, add, text, x200 y60 w160 h20 center, % "messages sent : " commify(messagessent)
    gui, add, text, x200 y90 w160 h20 center, % "total messages sent : " commify(totalmessagessent)
    gui, add, text, x200 y130 w160 h20 center, % "pokemon caught : " commify(pokemoncaught)
    gui, add, text, x200 y160 w160 h20 center, % "latest catch : " lastpokemoncaught
    gui, add, button, x190 y190 w170 h20 glatestcatch, info latest
    gui, add, text, x390 y0 w160 h20 border center, highlighted text
    gui, add, button, x390 y30 w80 h70 gmarketinfo, info
    gui, add, button, x470 y30 w80 h70 gtrade, trade
    gui, add, button, x390 y100 w80 h70 gmarketsell, quick sell
    gui, add, button, x470 y100 w80 h70 gmarketbuy, quick buy
    gui, add, button, x390 y180 w160 h30 gnicknames, set nicknames
    showgui(560,220,"Better Pokecord - Status")
    return

checkspecies:
    send(prefix,"pokemon --name " vpokemon)
    return

searchiv:
    send(prefix,"market search --name " vpokemon " --order iv descending --showiv")
    return

searchprice:
    send(prefix,"market search --name " vpokemon " --order price ascending --showiv")
    return

latestcatch:
    send(prefix,"info latest")
    return

marketbuy:
    send, {ctrldown}c{ctrlup}
    for each, pkmn in array := embedids(clipboard) {
        send(prefix,"market buy " pkmn,120)
        if (mod(a_index,10) = 0)
            send(prefix,"confirmbuy",120)
        if (a_index = array.maxindex())
            if (mod(a_index,10) != 0)
                send(prefix,"confirmbuy",120)
    }
    return

marketsell:
    send, {ctrldown}c{ctrlup}
    inputbox, price, Better Pokecord - Quick Sell, How much would you like to list each one for?
    if (errorlevel = 1)
        return
    for each, pkmn in array := embedids(clipboard,7) {
        send(prefix,"market list " pkmn " " price,120)
        if (mod(a_index,10) = 0) {
            send(prefix,"confirmlist",120)
            break
        }
        if (a_index = array.maxindex())
            if (mod(a_index,10) != 0)
                send(prefix,"confirmlist",120)
    }
    return

trade:
    setkeydelay, 30
    send % prefix "p add "
    for each, pkmn in array := embedids(clipboard,7)
       send % pkmn " "
    send % "`r" prefix "confirm"
    gosub, msgcount
    return

marketinfo:
    send, {ctrldown}c{ctrlup}
    if ((searchtype := substr(clipboard,1,5)) = "level")
        for each, pkmn in array := embedids(clipboard) {
            send(prefix,"market info " pkmn,160)
            sleep, 2000
        }
    else
        for each, pkmn in array := embedids(clipboard,7) {
            send(prefix,"info " pkmn,160)
            sleep, 2000
        }
    return

nicknames:
    sleepwin("Discord")
    send, {ctrldown}c{ctrlup}
    inputbox, nickname, Better Pokecord - Quick Nickname, What would you like to nickname them?`n`n(You can enter two dash's "--" to reset them)
    if (errorlevel = 1)
        return
    for each, pkmn in array := embedids(clipboard,7) {
        send(prefix,"select " pkmn,120)
        sleep, 1000
        if (nickname != "--")
            send(prefix,"nickname " nickname,120)
        else
            send(prefix,"nickname",120)
        sleep, 1000
    }
    return
