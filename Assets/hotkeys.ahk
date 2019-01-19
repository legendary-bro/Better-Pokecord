catchpokemon:
    setkeydelay, -1
    send % prefix "catch "
    input, vpokemon, i v t20, {enter}, %pokemonlist%
    if (errorlevel = "match") {
        send, `r
        gosub, msgcount
        pokemoncaught += 1
        lastpokemoncaught := vpokemon
    }
    if (errorlevel = "endkey:enter") {
        gosub, msgcount
        pokemoncaught += 1
        lastpokemoncaught := vpokemon
    }
    if (errorlevel = "timeout") {
        if winactive("Discord")
            send, {ctrl down}a{ctrl up}{backspace}
    }
    return

setpokemon:
    setkeydelay, -1
    send % "waiting "
    input, vpokemon, i v t20,{\}, %pokemonlist%
    if (errorlevel = "match")
        send, {ctrl down}a{ctrl up}{backspace}
    if (errorlevel = "endkey:\")
        send, {ctrl down}a{ctrl up}{backspace}
    if (errorlevel = "timeout") {
        if winactive("Discord")
            send, {ctrl down}a{ctrl up}{backspace}
    }
    return

hotkeys:
    hotkey, ifwinactive, Better Pokecord - Options
    hotkey, %hstatus%, statusmenu
    hotkey, %hshop%, shopmenu
    hotkey, %hmarket%, marketmenu
    hotkey, ifwinactive, Better Pokecord - Status
    hotkey, %hoptions%, optionsmenu
    hotkey, %hshop%, shopmenu
    hotkey, %hmarket%, marketmenu
    hotkey, ifwinactive, Better Pokecord - Shop
    hotkey, %hoptions%, optionsmenu
    hotkey, %hstatus%, statusmenu
    hotkey, %hmarket%, marketmenu
    hotkey, ifwinactive, Better Pokecord - Search
    hotkey, %hoptions%, optionsmenu
    hotkey, %hstatus%, statusmenu
    hotkey, %hshop%, shopmenu
    hotkey, ifwinactive, Better Pokecord - Spam
    hotkey, %hoptions%, optionsmenu
    hotkey, %hstatus%, statusmenu
    hotkey, %hshop%, shopmenu
    hotkey, %hmarket%, marketmenu
    hotkey, ifwinactive, Discord
    hotkey, %hoptions%, optionsmenu
    hotkey, %hstatus%, statusmenu
    hotkey, %hshop%, shopmenu
    hotkey, %hmarket%, marketmenu
    hotkey, %hcatch%, catchpokemon
    hotkey, %hset%, setpokemon
    hotkey, %hlatest%, latestcatch
    hotkey, %hspecies%, checkspecies
    hotkey, %hsearchiv%, searchiv
    hotkey, %hsearchprice%, searchprice
    hotkey, %hquicksell%, marketsell
    hotkey, %htrade%, trade
    hotkey, %hquickbuy%, marketbuy
    hotkey, %hinfo%, marketinfo
    hotkey, %hnumerical%, spamnum
    hotkey, %hgenerator%, spamspawn
    hotkey, %hscrambled%, spamscrambled
    hotkey, %hpause%, pause
    return

pause:
    pause
    return

end::suspend
^end::exit
+end::
    gosub, reload
    return
