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

spamnum:
    inputbox, totalmessages, how many messages to send?
    if (errorlevel = 1)
        return
    sleepwin("Discord",20)
    while a_index <= totalmessages {
        clipboard := "``" commify(a_index) "/" commify(totalmessages) " (" percentage(a_index,totalmessages) ")``"
        send, ^v `r
        gosub, msgcount
        sleep, random(mininterval, maxinterval)
    }
    return

spamspawn:
    inputbox, totalpokemon, how many pokemon to spawn?
    if (errorlevel = 1)
        return
    sleepwin("Discord",20)
    vpokemonarray := ["Pidegot","Kabuto","Mew","Porygon","Klink"]
    loop, parse, pokemonlist, csv
    {
        vpokemonarray.push(a_loopfield)
    }
    natures := ["Adamant","Bashful","Bold","Brave","Calm","Careful","Docile","Gentile","Hardy","Hasty","Impish","Jolly","Lax","Loneley","Mild","Modest","Naive","Naughty","Quiet","Quirky","Rash","Relaxed","Sassy","Serious","Timid"]
    while a_index <= totalpokemon {
        random, level  , 1, 90
        random, hpiv   , 1, 31
        random, atkiv  , 1, 31
        random, defiv  , 1, 31
        random, satkiv , 1, 31
        random, sdefiv , 1, 31
        random, spiv   , 1, 31
        random, isshiny, 1, 4096
        spawnedpokemon := vpokemonarray[random(1, vpokemonarray.maxindex())]
        spawnednature := natures[random(1, natures.maxindex())]
        totaliv := percentage((hpiv+atkiv+defiv+satkiv+sdefiv+spiv),186)
        totalcount := "# " commify(a_index) "/" commify(totalpokemon) " (" percentage(a_index,totalpokemon) ")"
        clipboard =
        (ltrim
            ``````cs
            %totalcount%
            level   : %level%
            pokemon : %spawnedpokemon%
            total iv: %totaliv%
            nature  : %spawnednature%

            hp      : %hpiv%/31
            atk     : %atkiv%/31
            def     : %defiv%/31
            satk    : %satkiv%/31
            sdef    : %sdefiv%/31
            spd     : %spiv%/31``````
        )
        send, ^v `r
        gosub, msgcount
        if (isshiny = 1) {
            send, :star2:shiny:star2:`r
            gosub, msgcount
        }
        sleep, random(mininterval,maxinterval)
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