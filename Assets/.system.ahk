iniread, prefix, settings.ini, system, prefix
iniread, mininterval, settings.ini, system, spam_msg_interval_min
iniread, maxinterval, settings.ini, system, spam_msg_interval_max
iniread, menutrans, settings.ini, system, transparency
iniread, hqmenu, settings.ini, system, qmenu
iniread, hshop, settings.ini, system, shop
iniread, hpokedex, settings.ini, system, pokedex
iniread, hcatch, settings.ini, system, catch
iniread, hset, settings.ini, system, set
iniread, hlatest, settings.ini, system, latest
iniread, hspecies, settings.ini, system, species
iniread, hsearchiv, settings.ini, system, searchiv
iniread, hsearchprice, settings.ini, system, searchprice
iniread, hquicksell, settings.ini, system, quicksell
iniread, htrade, settings.ini, system, trade
iniread, hquickbuy, settings.ini, system, quickbuy
iniread, hnickname, settings.ini, system, nickname
iniread, hinfo, settings.ini, system, info
iniread, hpause, settings.ini, system, pause
iniread, bootcount, settings.ini, stats, boot_count
iniread, totalmessagessent, settings.ini, stats, total_messages_sent
iniread, vpokemon, settings.ini, stats, pokemon
iniread, pokemoncaught, settings.ini, stats, pokemon_caught
iniread, searchorder, settings.ini, search, order
iniread, searchtype, settings.ini, search, type
iniread, searchlevel, settings.ini, search, level
iniread, searchprice, settings.ini, search, price
iniread, searchhp, settings.ini, search, hpiv
iniread, searchatk, settings.ini, search, atkiv
iniread, searchdef, settings.ini, search, defiv
iniread, searchsatk, settings.ini, search, satkiv
iniread, searchsdef, settings.ini, search, sdefiv
iniread, searchspd, settings.ini, search, spdiv
iniread, searchshiny, settings.ini, search, shiny
iniread, searchiv, settings.ini, search, showiv
setworkingdir, %a_scriptdir%
onexit, saveandexit
settitlematchmode, 2
setkeydelay, 40
version := "v" 2.4 "b"
bootcount += 1
messagessent := 0
menu, spam, add, Counting, spamnum
menu, spam, add, Timed, spamtime
menu, spam, add, Scrambled, spamscrambled
menu, system, add, Pokedex, pokedex
menu, system, add, Shop, shopmenu
menu, system, add
menu, system, add, Options, optionsmenu
menu, system, add, Hotkeys, hotkeysmenu
menu, system, add
menu, system, add, Spam, :spam
gosub, hotkeys

return

guiclose:
    gui, destroy
    return

msgcount:
    totalmessagessent += 1
    messagessent += 1
    return

pkmncount:
    pokemoncaught += 1
    return

reload:
    gosub, updateini
    reload
    return

saveandexit:
    gosub, updateini
    exitapp

updateini:
    iniwrite, %prefix%, settings.ini, system, prefix
    iniwrite, %mininterval%, settings.ini, system, spam_msg_interval_min
    iniwrite, %maxinterval%, settings.ini, system, spam_msg_interval_max
    iniwrite, %menutrans%, settings.ini, system, transparency
    iniwrite, %hqmenu%, settings.ini, system, qmenu
    iniwrite, %hshop%, settings.ini, system, shop
    iniwrite, %hpokedex%, settings.ini, system, pokedex
    iniwrite, %hcatch%, settings.ini, system, catch
    iniwrite, %hset%, settings.ini, system, set
    iniwrite, %hlatest%, settings.ini, system, latest
    iniwrite, %hspecies%, settings.ini, system, species
    iniwrite, %hsearchiv%, settings.ini, system, searchiv
    iniwrite, %hsearchprice%, settings.ini, system, searchprice
    iniwrite, %hquicksell%, settings.ini, system, quicksell
    iniwrite, %htrade%, settings.ini, system, trade
    iniwrite, %hquickbuy%, settings.ini, system, quickbuy
    iniwrite, %hnickname%, settings.ini, system, nickname
    iniwrite, %hinfo%, settings.ini, system, info
    iniwrite, %hpause%, settings.ini, system, pause
    iniwrite, %bootcount%, settings.ini, stats, boot_count
    iniwrite, %totalmessagessent%, settings.ini, stats, total_messages_sent
    iniwrite, %vpokemon%, settings.ini, stats, pokemon
    iniwrite, %pokemoncaught%, settings.ini, stats, pokemon_caught
    iniwrite, %searchorder%, settings.ini, search, order
    iniwrite, %searchtype%, settings.ini, search, type
    iniwrite, %searchlevel%, settings.ini, search, level
    iniwrite, %searchprice%, settings.ini, search, price
    iniwrite, %searchhp%, settings.ini, search, hpiv
    iniwrite, %searchatk%, settings.ini, search, atkiv
    iniwrite, %searchdef%, settings.ini, search, defiv
    iniwrite, %searchsatk%, settings.ini, search, satkiv
    iniwrite, %searchsdef%, settings.ini, search, sdefiv
    iniwrite, %searchspd%, settings.ini, search, spdiv
    iniwrite, %searchshiny%, settings.ini, search, shiny
    iniwrite, %searchiv%, settings.ini, search, showiv
    return
