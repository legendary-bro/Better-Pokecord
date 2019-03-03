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
    hotkey, %htime%, spamtime
    hotkey, %hscrambled%, spamscrambled
    hotkey, %hpause%, pause
    return
