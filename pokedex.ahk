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
    gui, add, edit, x7 y218 w142 h29 center border, % vpokemon
    gui, add, text, x7 y327 w142 h20 center backgroundtrans, IV Search:
    gui, add, text, x25 y457 w100 h49 center backgroundtrans greload, Search Market
    gui, add, text, x175 y457 w100 h49 center backgroundtrans greload, Search Owned
    gui, add, text, x149 y194 w142 h20 center backgroundtrans, Stats:
    gui, font, s14
    gui, add, checkbox, x222 y131 w72 h35 center backgroundtrans, Shiny
    gui, add, checkbox, x183 y165 w111 h30 center backgroundtrans, Show IV's
    gui, add, text, x149 y220 w142 h20 center backgroundtrans, Selected PKMN
    gui, add, text, x149 y260 w142 h20 center backgroundtrans, PKMN Caught
    gui, add, text, x149 y300 w142 h20 center backgroundtrans, # Msg's Sent
    gui, add, text, x149 y340 w142 h20 center backgroundtrans, Total # Sent
    gui, add, text, x149 y380 w142 h20 center backgroundtrans, Times Started
    gui, font, s13
    gui, add, edit, x7 y247 w71 h23 center, Level
    gui, add, edit, x78 y247 w71 h23 center, Price
    gui, font, s12
    gui, add, dropdownlist, x7 y270 w142 h10 center r9 vmarketorder, %marketorder%||price a|iv a|lvl a|name a|price d|iv d|lvl d|name d
    gui, add, dropdownlist, x7 y297 w142 h10 center r20 vmarkettype, Type||bug|dark|dragon|electric|fairy|fighting|fire|flying|ghost|grass|ground|ice|normal|poison|psychic|rock|steel|water
    gui, font, s11
    gui, add, edit, x7 y351 w71 h25 center, HP
    gui, add, edit, x78 y351 w71 h25 center, ATK
    gui, add, edit, x7 y376 w71 h25 center, DEF
    gui, add, edit, x78 y376 w71 h25 center, S.ATK
    gui, add, edit, x7 y401 w71 h25 center, S.DEF
    gui, add, edit, x78 y401 w71 h25 center, SPD
    gui, add, text, x149 y240 w142 h20 center backgroundtrans, % vpokemon
    gui, add, text, x149 y280 w142 h20 center backgroundtrans, % commify(pokemoncaught)
    gui, add, text, x149 y320 w142 h20 center backgroundtrans, % commify(messagessent)
    gui, add, text, x149 y360 w142 h20 center backgroundtrans, % commify(totalmessagessent)
    gui, add, text, x149 y400 w142 h20 center backgroundtrans, % commify(bootcount)
    gui, font, s8
    gui, add, text, x42 y432 w75 h15 center backgroundtrans, reset search
    gui, add, text, x20 y516 w260 h11 center backgroundtrans, BetterPokecord v2.4b
    gui, add, picture, x7 y7 w-1 h180 backgroundtrans greload, % "Assets\GUI\pkmn\" settingsbg[random(1,settingsbg.maxindex())]
    gui, show, autosize, Pokedex - BetterPokecord
    winset, transparent, 255, BetterPokecord
    return