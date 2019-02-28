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

nicknames:
    msgbox, % "being worked on"
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
    send(prefix,embedids(clipboard),120,1)
    return

marketsell:
    send, {ctrldown}c{ctrlup}
    send(prefix,embedids(clipboard,7),120,2)
    return

trade:
    send, {ctrldown}c{ctrlup}
    send(prefix,embedids(clipboard,7),30,3)
    return

marketinfo:
    send, {ctrldown}c{ctrlup}
    if ((searchtype := substr(clipboard,1,5)) = "level")
        send(prefix,embedids(clipboard),150,5)
    else
        send(prefix,embedids(clipboard,7),160,4)
    return
