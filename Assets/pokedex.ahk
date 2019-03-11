pokedex:
    gui, destroy
    gui, margin, 0, 0
    gui, color, FFFFFF
    gui, add, picture, w300 h-1, Assets\GUI\backgrounds\Pokedex.jpg
    if (isobject(settingsbg) = 0) {
        settingsbg := []
        loop, Assets\GUI\pkmn\*.png, F
            settingsbg.push(A_LoopFileName)
    }
    gui, add, text, x150 y197 w143 h228 border
    gui, font, s16 w700 q5, consolas
    gui, add, text, x7 y194 w142 h20 center backgroundtrans, Search For:
    gui, add, edit, x7 y218 w142 h29 center border vvpokemon, % vpokemon
    gui, add, text, x7 y327 w142 h20 center backgroundtrans, IV Search:
    gui, add, text, x25 y457 w100 h49 center backgroundtrans gsearchmarket, Search Market
    gui, add, text, x175 y457 w100 h49 center backgroundtrans gsearchowned, Search Owned
    gui, add, text, x149 y194 w142 h20 center backgroundtrans, Stats:
    gui, font, s14
    gui, add, checkbox, x222 y131 w72 h35 center backgroundtrans checked%searchshiny% vsearchshiny, Shiny
    gui, add, checkbox, x183 y165 w111 h30 center backgroundtrans checked%searchiv% vsearchiv, Show IV's
    gui, add, text, x149 y220 w142 h20 center backgroundtrans, Selected PKMN
    gui, add, text, x149 y260 w142 h20 center backgroundtrans, PKMN Caught
    gui, add, text, x149 y300 w142 h20 center backgroundtrans, # Msg's Sent
    gui, add, text, x149 y340 w142 h20 center backgroundtrans, Total # Sent
    gui, add, text, x149 y380 w142 h20 center backgroundtrans, Times Started
    gui, font, s13
    gui, add, edit, x7 y247 w71 h23 center vsearchlevel, % searchlevel
    gui, add, edit, x78 y247 w71 h23 center vsearchprice, % searchprice
    gui, font, s12
    gui, add, dropdownlist, x7 y270 w142 h10 center r9 vsearchorder, %searchorder%||price a|iv a|lvl a|name a|price d|iv d|lvl d|name d
    gui, add, dropdownlist, x7 y297 w142 h10 center r20 vsearchtype, %searchtype%||bug|dark|dragon|electric|fairy|fighting|fire|flying|ghost|grass|ground|ice|normal|poison|psychic|rock|steel|water
    gui, font, s11
    gui, add, edit, x7 y351 w71 h25 center vsearchhp, % searchhp
    gui, add, edit, x78 y351 w71 h25 center vsearchatk, % searchatk
    gui, add, edit, x7 y376 w71 h25 center vsearchdef, % searchdef
    gui, add, edit, x78 y376 w71 h25 center vsearchsatk, % searchsatk
    gui, add, edit, x7 y401 w71 h25 center vsearchsdef, % searchsdef
    gui, add, edit, x78 y401 w71 h25 center vsearchspd, % searchspd
    gui, add, text, x149 y240 w142 h20 center backgroundtrans, % vpokemon
    gui, add, text, x149 y280 w142 h20 center backgroundtrans, % commify(pokemoncaught)
    gui, add, text, x149 y320 w142 h20 center backgroundtrans, % commify(messagessent)
    gui, add, text, x149 y360 w142 h20 center backgroundtrans, % commify(totalmessagessent)
    gui, add, text, x149 y400 w142 h20 center backgroundtrans, % commify(bootcount)
    gui, font, s8
    gui, add, text, x42 y432 w75 h15 center backgroundtrans gsearchreset, reset search
    gui, add, text, x20 y516 w260 h11 center backgroundtrans, BetterPokecord v2.4b
    gui, add, picture, x7 y7 w-1 h180 backgroundtrans, % "Assets\GUI\pkmn\" settingsbg[random(1,settingsbg.maxindex())]
    gui, show, autosize, Pokedex - BetterPokecord
    winset, transparent, 255, BetterPokecord
    return

searchmarket:
    ismarketsearch := 1
searchowned:
    gui, submit
    sleepwin("Discord",20)
    search := "pokemon"
    if (ismarketsearch = 1)
        search := "market search"
    if (vpokemon != "--")
        search .= " --name " vpokemon
    if (searchshiny = 1)
        search .= " --shiny"
    if (searchlevel > 0 and searchlevel < 101)
        search .= " --level " searchlevel
    if (searchtype != "Type")
        search .= " --type " searchtype
    if (searchhp != "HP")
        search .= " --hpiv " searchhp
    if (searchatk != "ATK")
        search .= " --atkiv " searchatk
    if (searchdef != "DEF")
        search .= " --defiv " searchdef
    if (searchsatk != "S.ATK")
        search .= " --spatkiv " searchsatk
    if (searchsdef != "S.DEF")
        search .= " --spdefiv " searchsdef
    if (searchspd != "SPD")
        search .= " --speediv " searchspd
    if (ismarketsearch = 1) {
        if (searchprice != "Price")
            search .= " --price " searchprice
        if (searchorder != "Order")
            search .= " --order " searchorder
        if (searchiv = 1)
                search .= " --showiv"
        ismarketsearch := 0
    }
    send(prefix,search)
    gosub, pokedex
    return

searchreset:
    vpokemon := "--"
    searchlevel := "Level"
    searchprice := "Price"
    searchorder := "Order"
    searchtype := "Type"
    searchhp := "HP"
    searchatk := "ATK"
    searchdef := "DEF"
    searchsatk := "S.ATK"
    searchsdef := "S.DEF"
    searchspd := "SPD"
    searchshiny := 0
    searchiv := 1
    gosub, pokedex
    return
