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

latestcatch:
    send % prefix "info latest`r"
    gosub, msgcount
    return

checkspecies:
    send % prefix "pokemon --name " vpokemon "`r"
    gosub, msgcount
    return

searchiv:
    send % prefix "market search --name " vpokemon " --order iv descending --showiv`r"
    gosub, msgcount
    return

searchprice:
    send % prefix "market search --name " vpokemon " --order price ascending --showiv`r"
    gosub, msgcount
    return

marketsell:
    setkeydelay, 120
    send, {ctrldown}c{ctrlup}
    inputbox, sellprice, how much to list each for?
    if (errorlevel = 1)
        return
    sleepwin("Discord",20)
    loop, parse, clipboard, `n
    {
        parsesanity := 0
        loopcount += 1
        marketarray := strsplit(a_loopfield, a_space)
        if (marketarray[1]="alolan"||marketarray[1]="mega"||marketarray[1]="mime"||marketarray[2]="mime")
            parsesanity += 1
        if (marketarray[3]="x"||marketarray[3]="y")
            parsesanity += 1
        send % prefix "market list " marketarray[7+parsesanity] " " sellprice "`r"
        gosub, msgcount
        if (a_index = 10) {
            send % prefix "confirmlist`r"
            gosub, msgcount
            break
        }
    }
    if (loopcount != 10) {
        send % prefix "confirmlist`r"
        gosub, msgcount
    }
    loopcount := 0
    return

marketbuy:
    setkeydelay, 120
    send, {ctrldown}c{ctrlup}
    loop, parse, clipboard, `n
    {
        parsesanity := 0
        loopcount += 1
        marketarray := strsplit(a_loopfield, a_space)
        if (marketarray[3]="alolan"||marketarray[3] = "mega"||marketarray[3] = "mime"||marketarray[4] = "mime")
            parsesanity += 1
        if (marketarray[5]="x"||marketarray[5]="y")
            parsesanity += 1
        send % prefix "market buy " marketarray[6+parsesanity] "`r"
        gosub, msgcount
        if (a_index = 10) {
            send % prefix "confirmbuy`r"
            gosub, msgcount
        }
    }
    if (loopcount != 10) {
        send % prefix "confirmbuy`r"
        gosub, msgcount
    }
    loopcount := 0
    return

marketinfo:
    setkeydelay, 120
    send, {ctrldown}c{ctrlup}
    loop, parse, clipboard, `n
    {
        parsesanity := 0
        marketarray := strsplit(a_loopfield, a_space)
        if (marketarray[3]="alolan"||marketarray[3]="mega"||marketarray[3]="mime"||marketarray[4]="mime")
            parsesanity += 1
        if (marketarray[5]="x"||marketarray[5]="y")
            parsesanity += 1
        send % prefix "market info " marketarray[6+parsesanity] "`r"
        gosub, msgcount
    }
    return

trade:
    setkeydelay, 120
    send % prefix "p add "
    loop, parse, clipboard, `n
    {
        parsesanity := 0
        marketarray := strsplit(a_loopfield, a_space)
        if (marketarray[1]="alolan"||marketarray[1]="mega"||marketarray[1]="mime"||marketarray[2]="mime")
            parsesanity += 1
        if (marketarray[3]="x"||marketarray[3]="y")
            parsesanity += 1
        send % marketarray[7+parsesanity] " "
    }
    send, `r
    gosub, msgcount
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
    hotkey, %hshop%, shopmenu
    hotkey, %hmarket%, marketmenu
    hotkey, ifwinactive, Better Pokecord - Shop
    hotkey, %hoptions%, optionsmenu
    hotkey, %hmarket%, marketmenu
    hotkey, ifwinactive, Better Pokecord - Market
    hotkey, %hoptions%, optionsmenu
    hotkey, %hshop%, shopmenu
    hotkey, ifwinactive, Discord
    hotkey, %hoptions%, optionsmenu
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