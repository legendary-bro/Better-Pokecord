iniread, prefix, settings.ini, system, prefix
iniread, mininterval, settings.ini, system, spam_msg_interval_min
iniread, maxinterval, settings.ini, system, spam_msg_interval_max
iniread, hoptions, settings.ini, system, options
iniread, hstatus, settings.ini, system, status
iniread, hshop, settings.ini, system, shop
iniread, hmarket, settings.ini, system, market
iniread, hcatch, settings.ini, system, catch
iniread, hset, settings.ini, system, set
iniread, hlatest, settings.ini, system, latest
iniread, hspecies, settings.ini, system, species
iniread, hsearchiv, settings.ini, system, searchiv
iniread, hsearchprice, settings.ini, system, searchprice
iniread, hquicksell, settings.ini, system, quicksell
iniread, htrade, settings.ini, system, trade
iniread, hquickbuy, settings.ini, system, quickbuy
iniread, hinfo, settings.ini, system, info
iniread, hnumerical, settings.ini, system, numerical
iniread, hgenerator, settings.ini, system, generator
iniread, hscrambled, settings.ini, system, scrambled
iniread, hpause, settings.ini, system, pause
iniread, bootcount, settings.ini, stats, boot_count
iniread, totalmessagessent, settings.ini, stats, total_messages_sent
iniread, vpokemon, settings.ini, stats, pokemon
iniread, pokemoncaught, settings.ini, stats, pokemon_caught
iniread, lastpokemoncaught, settings.ini, stats, last_pokemon_caught
iniread, marketorder, settings.ini, market, order
iniread, markettype, settings.ini, market, type
iniread, marketlevel, settings.ini, market, level
iniread, marketprice, settings.ini, market, price
iniread, markethpiv, settings.ini, market, hpiv
iniread, marketatkiv, settings.ini, market, atkiv
iniread, marketdefiv, settings.ini, market, defiv
iniread, marketsatkiv, settings.ini, market, satkiv
iniread, marketsdefiv, settings.ini, market, sdefiv
iniread, marketspdiv, settings.ini, market, spdiv
iniread, marketshiny, settings.ini, market, shiny
iniread, marketshowiv, settings.ini, market, showiv
setworkingdir, %a_scriptdir%
onexit, saveandexit
settitlematchmode, 2
setkeydelay, 60
bootcount += 1
messagessent := 0
gosub, hotkeys

return

reload:
    gosub, updateini
    reload
    return

msgcount:
    totalmessagessent += 1
    messagessent += 1
    return

pkmncount:
    pokemoncaught += 1
    return

saveandexit:
    gosub, updateini
    exitapp

updateini:
    iniwrite, %prefix%, settings.ini, system, prefix
    iniwrite, %mininterval%, settings.ini, system, spam_msg_interval_min
    iniwrite, %maxinterval%, settings.ini, system, spam_msg_interval_max
    iniwrite, %hoptions%, settings.ini, system, options
    iniwrite, %hstatus%, settings.ini, system, status
    iniwrite, %hshop%, settings.ini, system, shop
    iniwrite, %hmarket%, settings.ini, system, market
    iniwrite, %hcatch%, settings.ini, system, catch
    iniwrite, %hset%, settings.ini, system, set
    iniwrite, %hlatest%, settings.ini, system, latest
    iniwrite, %hspecies%, settings.ini, system, species
    iniwrite, %hsearchiv%, settings.ini, system, searchiv
    iniwrite, %hsearchprice%, settings.ini, system, searchprice
    iniwrite, %hquicksell%, settings.ini, system, quicksell
    iniwrite, %htrade%, settings.ini, system, trade
    iniwrite, %hquickbuy%, settings.ini, system, quickbuy
    iniwrite, %hinfo%, settings.ini, system, info
    iniwrite, %hnumerical%, settings.ini, system, numerical
    iniwrite, %hgenerator%, settings.ini, system, generator
    iniwrite, %hscrambled%, settings.ini, system, scrambled
    iniwrite, %hpause%, settings.ini, system, pause
    iniwrite, %bootcount%, settings.ini, stats, boot_count
    iniwrite, %totalmessagessent%, settings.ini, stats, total_messages_sent
    iniwrite, %vpokemon%, settings.ini, stats, pokemon
    iniwrite, %pokemoncaught%, settings.ini, stats, pokemon_caught
    iniwrite, %lastpokemoncaught%, settings.ini, stats, last_pokemon_caught
    iniwrite, %marketorder%, settings.ini, market, order
    iniwrite, %markettype%, settings.ini, market, type
    iniwrite, %marketlevel%, settings.ini, market, level
    iniwrite, %marketprice%, settings.ini, market, price
    iniwrite, %markethpiv%, settings.ini, market, hpiv
    iniwrite, %marketatkiv%, settings.ini, market, atkiv
    iniwrite, %marketdefiv%, settings.ini, market, defiv
    iniwrite, %marketsatkiv%, settings.ini, market, satkiv
    iniwrite, %marketsdefiv%, settings.ini, market, sdefiv
    iniwrite, %marketspdiv%, settings.ini, market, spdiv
    iniwrite, %marketshiny%, settings.ini, market, shiny
    iniwrite, %marketshowiv%, settings.ini, market, showiv
    return
