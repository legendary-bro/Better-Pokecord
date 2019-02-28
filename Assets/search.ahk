marketmenu:
    gui, destroy
    gui, add, button, x10 y0 w120 h20 gmarketivreset, reset
    gui, add, text, x10 y20 w120 h20 border center, iv's
    gui, add, text, x10 y40 w50 h20 center, hp
    gui, add, edit, x10 y60 w50 h20 vmarkethpiv, %markethpiv%
    gui, add, text, x10 y80 w50 h20 center, atk
    gui, add, edit, x10 y100 w50 h20 vmarketatkiv, %marketatkiv%
    gui, add, text, x10 y120 w50 h20 center, def
    gui, add, edit, x10 y140 w50 h20 vmarketdefiv, %marketdefiv%
    gui, add, text, x80 y40 w50 h20 center, s.atk
    gui, add, edit, x80 y60 w50 h20 vmarketsatkiv, %marketsatkiv%
    gui, add, text, x80 y80 w50 h20 center, s.def
    gui, add, edit, x80 y100 w50 h20 vmarketsdefiv, %marketsdefiv%
    gui, add, text, x80 y120 w50 h20 center, spd
    gui, add, edit, x80 y140 w50 h20 vmarketspdiv, %marketspdiv%
    gui, add, button, x140 y0 w150 h20 gmarketreset, reset
    gui, add, text, x140 y20 w150 h20 border center, pokemon name
    gui, add, edit, x140 y40 w150 h20 vvpokemon, %vpokemon%
    gui, add, text, x140 y60 w60 h20 center, level
    gui, add, edit, x140 y80 w60 h20 limit3 number vmarketlevel, %marketlevel%
    gui, add, text, x230 y60 w60 h20 center, price
    gui, add, edit, x230 y80 w60 h20 vmarketprice, %marketprice%
    gui, add, dropdownlist, x140 y100 w150 h10 r9 vmarketorder, %marketorder%||price a|iv a|lvl a|name a|price d|iv d|lvl d|name d
    gui, add, dropdownlist, x140 y120 w150 h20 r20 vmarkettype, %markettype%||bug|dark|dragon|electric|fairy|fighting|fire|flying|ghost|grass|ground|ice|normal|poison|psychic|rock|steel|water
    gui, add, checkbox, x140 y140 w70 h20 center checked%marketshiny% vmarketshiny, shiny
    gui, add, checkbox, x210 y140 w80 h20 center checked%marketshowiv% vmarketshowiv, show iv
    gui, add, button, x300 y0 w50 h160 gmarketsearch, market
    gui, add, button, x350 y0 w60 h160 ginventorysearch, inventory
    showgui(410,160,"Better Pokecord - Search")
    return

marketsearch:
    ismarketsearch := 1
    gosub, inventorysearch
    return

inventorysearch:
    gui, submit
    sleepwin("Discord",20)
    marketsearch := prefix "pokemon"
    if (ismarketsearch = 1)
        marketsearch := prefix "market search"
    setkeydelay, 40
    gosub, searchlogic
    return

searchlogic:
    if (vpokemon != "--")
        marketsearch := marketsearch . " --name " vpokemon
    if (marketshiny = 1)
        marketsearch := marketsearch . " --shiny"
    if (marketlevel > 0 and marketlevel < 101)
        marketsearch := marketsearch . " --level " marketlevel
    if (markettype != "type")
        marketsearch := marketsearch . " --type " markettype
    if (markethpiv != "--")
        marketsearch := marketsearch . " --hpiv " markethpiv
    if (marketatkiv != "--")
        marketsearch := marketsearch . " --atkiv " marketatkiv
    if (marketdefiv != "--")
        marketsearch := marketsearch . " --defiv " marketdefiv
    if (marketsatkiv != "--")
        marketsearch := marketsearch . " --spatkiv " marketsatkiv
    if (marketsdefiv != "--")
        marketsearch := marketsearch . " --spdefiv " marketsdefiv
    if (marketspdiv != "--")
        marketsearch := marketsearch . " --speediv " marketspdiv
    if (ismarketsearch = 1) {
        if (marketprice != "--")
            marketsearch := marketsearch . " --price " marketprice
        if (marketorder != "order")
            marketsearch := marketsearch . " --order " marketorder
        if (marketshowiv = 1)
                marketsearch := marketsearch . " --showiv"
        ismarketsearch := 0
    }
    send % marketsearch "`r"
    gosub, msgcount
    gosub, marketmenu
    return

marketreset:
    vpokemon := marketlevel := marketprice := "--"
    marketorder := "order"
    markettype := "type"
    gosub, marketmenu
    return

marketivreset:
    markethpiv := marketatkiv := marketdefiv := marketsatkiv := marketsdefiv := marketspdiv := "--"
    gosub, marketmenu
    return