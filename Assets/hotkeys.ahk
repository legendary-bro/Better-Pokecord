catchpokemon:
    lastpokemoncaught := vpokemon := selectpkmn(prefix)
    return

setpokemon:
    vpokemon := selectpkmn(prefix,false)
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
    hotkey, %hinfo%, marketinfo
    hotkey, %hnumerical%, spamnum
    hotkey, %htime%, spamtime
    hotkey, %hscrambled%, spamscrambled
    hotkey, %hpause%, pause
    return
