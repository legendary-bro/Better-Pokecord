#noenv
#singleinstance, force
iniread, prefix, settings.ini, system, prefix
iniread, mininterval, settings.ini, system, spam_msg_interval_min
iniread, maxinterval, settings.ini, system, spam_msg_interval_max
iniread, hoptions, settings.ini, system, options
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
setkeydelay, 40
bootcount += 1
pokemonlist := "Bulbasaur,Ivysaur,Venusaur,Charmander,Charmeleon,Charizard,Squirtle,Wartortle,Blastoise,Caterpie,Metapod,Butterfree,Weedle,Kakuna,Beedrill,Pidgey,Pidgeotto,Rattata,Raticate,Spearow,Fearow,Ekans,Arbok,Pikachu,Raichu,Sandshrew,Sandslash,Nidoran,Nidorina,Nidoqueen,Nidoran,Nidorino,Nidoking,Clefairy,Clefable,Vulpix,Ninetales,Jigglypuff,Wigglytuff,Zubat,Golbat,Oddish,Gloom,Vileplume,Paras,Parasect,Venonat,Venomoth,Diglett,Dugtrio,Meowth,Persian,Psyduck,Golduck,Mankey,Primeape,Growlithe,Arcanine,Poliwag,Poliwhirl,Poliwrath,Abra,Kadabra,Alakazam,Machop,Machoke,Machamp,Bellsprout,Weepinbell,Victreebel,Tentacool,Tentacruel,Geodude,Graveler,Golem,Ponyta,Rapidash,Slowpoke,Slowbro,Magnemite,Magneton,Farfetchd,Doduo,Dodrio,Seel,Dewgong,Grimer,Muk,Shellder,Cloyster,Gastly,Haunter,Gengar,Onix,Drowzee,Hypno,Krabby,Kingler,Voltorb,Electrode,Exeggcute,Exeggutor,Cubone,Marowak,Hitmonlee,Hitmonchan,Lickitung,Koffing,Weezing,Rhyhorn,Rhydon,Chansey,Tangela,Kangaskhan,Horsea,Seadra,Goldeen,Seaking,Staryu,Starmie,Mr. Mime,Scyther,Jynx,Electabuzz,Magmar,Pinsir,Tauros,Magikarp,Gyarados,Lapras,Ditto,Eevee,Vaporeon,Jolteon,Flareon,Omanyte,Omastar,Kabutops,Aerodactyl,Snorlax,Articuno,Zapdos,Moltres,Dratini,Dragonair,Dragonite,Mewtwo,Chikorita,Bayleef,Meganium,Cyndaquil,Quilava,Typhlosion,Totodile,Croconaw,Feraligatr,Sentret,Furret,Hoothoot,Noctowl,Ledyba,Ledian,Spinarak,Ariados,Crobat,Chinchou,Lanturn,Pichu,Cleffa,Igglybuff,Togepi,Togetic,Natu,Xatu,Mareep,Flaaffy,Ampharos,Bellossom,Marill,Azumarill,Sudowoodo,Politoed,Hoppip,Skiploom,Jumpluff,Aipom,Sunkern,Sunflora,Yanma,Wooper,Quagsire,Espeon,Umbreon,Murkrow,Slowking,Misdreavus,Unown,Wobbuffet,Girafarig,Pineco,Forretress,Dunsparce,Gligar,Steelix,Snubbull,Granbull,Qwilfish,Scizor,Shuckle,Heracross,Sneasel,Teddiursa,Ursaring,Slugma,Magcargo,Swinub,Piloswine,Corsola,Remoraid,Octillery,Delibird,Mantine,Skarmory,Houndour,Houndoom,Kingdra,Phanpy,Donphan,Porygon2,Stantler,Smeargle,Tyrogue,Hitmontop,Smoochum,Elekid,Magby,Miltank,Blissey,Raikou,Entei,Suicune,Larvitar,Pupitar,Tyranitar,Lugia,Ho-Oh,Celebi,Treecko,Grovyle,Sceptile,Torchic,Combusken,Blaziken,Mudkip,Marshtomp,Swampert,Poochyena,Mightyena,Zigzagoon,Linoone,Wurmple,Silcoon,Beautifly,Cascoon,Dustox,Lotad,Lombre,Ludicolo,Seedot,Nuzleaf,Shiftry,Taillow,Swellow,Wingull,Pelipper,Ralts,Kirlia,Gardevoir,Surskit,Masquerain,Shroomish,Breloom,Slakoth,Vigoroth,Slaking,Nincada,Ninjask,Shedinja,Whismur,Loudred,Exploud,Makuhita,Hariyama,Azurill,Nosepass,Skitty,Delcatty,Sableye,Mawile,Aron,Lairon,Aggron,Meditite,Medicham,Electrike,Manectric,Plusle,Minun,Volbeat,Illumise,Roselia,Gulpin,Swalot,Carvanha,Sharpedo,Wailmer,Wailord,Numel,Camerupt,Torkoal,Spoink,Grumpig,Spinda,Trapinch,Vibrava,Flygon,Cacnea,Cacturne,Swablu,Altaria,Zangoose,Seviper,Lunatone,Solrock,Barboach,Whiscash,Corphish,Crawdaunt,Baltoy,Claydol,Lileep,Cradily,Anorith,Armaldo,Feebas,Milotic,Castform,Kecleon,Shuppet,Banette,Duskull,Dusclops,Tropius,Chimecho,Absol,Wynaut,Snorunt,Glalie,Spheal,Sealeo,Walrein,Clamperl,Huntail,Gorebyss,Relicanth,Luvdisc,Bagon,Shelgon,Salamence,Beldum,Metang,Metagross,Regirock,Regice,Registeel,Latias,Latios,Kyogre,Groudon,Rayquaza,Jirachi,Deoxys,Turtwig,Grotle,Torterra,Chimchar,Monferno,Infernape,Piplup,Prinplup,Empoleon,Starly,Staravia,Staraptor,Bidoof,Bibarel,Kricketot,Kricketune,Shinx,Luxio,Luxray,Budew,Roserade,Cranidos,Rampardos,Shieldon,Bastiodon,Burmy,Wormadam,Mothim,Combee,Vespiquen,Pachirisu,Buizel,Floatzel,Cherubi,Cherrim,Shellos,Gastrodon,Ambipom,Drifloon,Drifblim,Buneary,Lopunny,Mismagius,Honchkrow,Glameow,Purugly,Chingling,Stunky,Skuntank,Bronzor,Bronzong,Bonsly,Mime Jr.,Happiny,Chatot,Spiritomb,Gible,Gabite,Garchomp,Munchlax,Riolu,Lucario,Hippopotas,Hippowdon,Skorupi,Drapion,Croagunk,Toxicroak,Carnivine,Finneon,Lumineon,Mantyke,Snover,Abomasnow,Weavile,Magnezone,Lickilicky,Rhyperior,Tangrowth,Electivire,Magmortar,Togekiss,Yanmega,Leafeon,Glaceon,Gliscor,Mamoswine,Porygon-Z,Gallade,Probopass,Dusknoir,Froslass,Rotom,Uxie,Mesprit,Azelf,Dialga,Palkia,Heatran,Regigigas,Giratina,Cresselia,Phione,Manaphy,Darkrai,Shaymin,Arceus,Victini,Snivy,Servine,Serperior,Tepig,Pignite,Emboar,Oshawott,Dewott,Samurott,Patrat,Watchog,Lillipup,Herdier,Stoutland,Purrloin,Liepard,Pansage,Simisage,Pansear,Simisear,Panpour,Simipour,Munna,Musharna,Pidove,Tranquill,Unfezant,Blitzle,Zebstrika,Roggenrola,Boldore,Gigalith,Woobat,Swoobat,Drilbur,Excadrill,Audino,Timburr,Gurdurr,Conkeldurr,Tympole,Palpitoad,Seismitoad,Throh,Sawk,Sewaddle,Swadloon,Leavanny,Venipede,Whirlipede,Scolipede,Cottonee,Whimsicott,Petilil,Lilligant,Basculin,Sandile,Krokorok,Krookodile,Darumaka,Darmanitan,Maractus,Dwebble,Crustle,Scraggy,Scrafty,Sigilyph,Yamask,Cofagrigus,Tirtouga,Carracosta,Archen,Archeops,Trubbish,Garbodor,Zorua,Zoroark,Minccino,Cinccino,Gothita,Gothorita,Gothitelle,Solosis,Duosion,Reuniclus,Ducklett,Swanna,Vanillite,Vanillish,Vanilluxe,Deerling,Sawsbuck,Emolga,Karrablast,Escavalier,Foongus,Amoonguss,Frillish,Jellicent,Alomomola,Joltik,Galvantula,Ferroseed,Ferrothorn,Klang,Klinklang,Tynamo,Eelektrik,Eelektross,Elgyem,Beheeyem,Litwick,Lanturn,Chandelure,Axew,Fraxure,Haxorus,Cubchoo,Beartic,Cryogonal,Shelmet,Accelgor,Stunfisk,Mienfoo,Mienshao,Druddigon,Golett,Golurk,Pawniard,Bisharp,Bouffalant,Rufflet,Braviary,Vullaby,Mandibuzz,Heatmor,Durant,Deino,Zweilous,Hydreigon,Larvesta,Volcarona,Cobalion,Terrakion,Virizion,Tornadus,Thundurus,Reshiram,Zekrom,Landorus,Kyurem,Keldeo,Meloetta,Genesect,Chespin,Quilladin,Chesnaught,Fennekin,Braixen,Delphox,Froakie,Frogadier,Greninja,Bunnelby,Diggersby,Fletchling,Fletchinder,Talonflame,Scatterbug,Spewpa,Vivillon,Litleo,Pyroar,Flabebe,Floette,Florges,Skiddo,Gogoat,Pancham,Pangoro,Furfrou,Espurr,Meowstic,Honedge,Doublade,Aegislash,Spritzee,Aromatisse,Swirlix,Slurpuff,Inkay,Malamar,Binacle,Barbaracle,Skrelp,Dragalge,Clauncher,Clawitzer,Helioptile,Heliolisk,Tyrunt,Tyrantrum,Amaura,Aurorus,Sylveon,Hawlucha,Dedenne,Carbink,Goomy,Sliggoo,Goodra,Klefki,Phantump,Trevenant,Pumpkaboo,Gourgeist,Bergmite,Avalugg,Noibat,Noivern,Xerneas,Yveltal,Zygarde,Diancie,Hoopa,Volcanion,Rowlet,Dartrix,Decidueye,Litten,Torracat,Incineroar,Popplio,Brionne,Primarina,Pikipek,Trumbeak,Toucannon,Yungoos,Gumshoos,Grubbin,Charjabug,Vikavolt,Crabrawler,Crabominable,Oricorio,Cutiefly,Ribombee,Rockruff,Lycanroc,Wishiwashi,Mareanie,Toxapex,Mudbray,Mudsdale,Dewpider,Araquanid,Fomantis,Lurantis,Morelull,Shiinotic,Salandit,Salazzle,Stufful,Bewear,Bounsweet,Steenee,Tsareena,Comfey,Oranguru,Passimian,Wimpod,Golisopod,Sandygast,Palossand,Pyukumuku,Type: Null,Silvally,Minior,Komala,Turtonator,Togedemaru,Mimikyu,Bruxish,Drampa,Dhelmise,Jangmo-o,Hakamo-o,Kommo-o,Tapu Koko,Tapu Lele,Tapu Bulu,Tapu Fini,Cosmog,Cosmoem,Solgaleo,Lunala,Nihilego,Buzzwole,Pheromosa,Xurkitree,Celesteela,Kartana,Guzzlord,Necrozma,Magearna,Marshadow,Poipole,Naganadel,Stakataka,Blacephalon,Zeraora,Meltan,Melmetal,Alolan Rattata,Alolan Raticate,Alolan Raichu,Alolan Sandshrew,Alolan Sandslash,Alolan Vulpix,Alolan Ninetales,Alolan Diglett,Alolan Dugtrio,Alolan Meowth,Alolan Persian,Alolan Geodude,Alolan Graveler,Alolan Golem,Alolan Grimer,Alolan Muk,Alolan Exeggutor,Alolan Marowak"
messagessent := 0
gosub, hotkeys

commify(n) {
    if (n <= 99)
        return n
    s = ,
    d = 3
    loop, % (l := strlen(n)) // d {
        i := substr(n, 1 - d * a_index, d) . s . i
    }
    i := (j := substr(n, 1, mod(l, d))) . (j ? s : "") . substr(i, 1, -1)
    return i
}

percentage(s,t) {
    if (s/t = 1)
        return "100%"
    p := substr((s/t),3,2) . "." . substr((s/t),5,2) . "%"
    return p
}

random(x, y) {
    random, r, x, y
    return r
}

showgui(w,h,s) {
    gui, show, center y0 w%w% h%h%, %s%
    WinGetActiveStats, s, gw, gh, gx, gy
    mousemove, % gw*0.5, % gh*0.5, 8
    return
}

sleepwin(w,t) {
    winactivate, %w%
    winwaitactive, %w%,,%t%
    return
}

return

optionsmenu:
    gui, destroy
    gui, add, button, gsaveandexit x0 y0 w160 h20 , exit
    gui, add, button, greload x0 y20 w160 h30 , reload
    gui, add, button, gshowstats x170 y0 w40 h120 default , stats
    gui, add, button, ghotkeysmenu x210 y0 w50 h120, hotkeys
    gui, add, button, gbalance x260 y0 w30 h120 , bal
    gui, add, button, gdaily x290 y0 w30 h120 , daily
    gui, add, button, gsave x0 y60 w80 h20 , set prefix
    gui, add, edit, vprefix x80 y60 w80 h20 , %prefix%
    gui, add, button, gsave x0 y80 w80 h20 , set min ms
    gui, add, edit, vmininterval x80 y80 w80 h20 , %mininterval%
    gui, add, button, gsave x0 y100 w80 h20 , set max ms
    gui, add, edit, vmaxinterval x80 y100 w80 h20 , %maxinterval%
    showgui(320,120,"Better Pokecord - Options")
    return

shopmenu:
    gui, destroy
    gui, add, text, x0 y0 w120 h20 center, stones + evo
    gui, add, text, x130 y0 w120 h20 center, natures
    gui, add, text, x260 y0 w120 h20 center, held items
    gui, add, text, x390 y0 w120 h20 center, xp boosters
    gui, add, listbox, x0 y30 w120 h150 vbuystone, dawn stone|dusk stone|fire stone|ice stone|leaf stone|moon stone|shiny stone|sun stone|thunder stone|water stone|friendship bracelet
    gui, add, listbox, x130 y30 w120 h150 vbuynature, adamant (+a -sa)|bashful (+sa -sa)|bold (+d -a)|brave (+a -s)|calm (+sd -a)|careful (+sd -sa)|docile (+d -d)|gentile (+sd -d)|hardy (+a -a)|hasty (+s -d)|impish (+d -sa)|jolly (+s -sa)|lax (+d -sd)|lonely (+a -d)|mild (+sa -d)|modest (+sa -a)|naive (+s -sd)|naughty (+a -sd)|quiet (+sa -s)|quirky (+sd -sd)|rash (+sa -sd)|relaxed (+d -s)|sassy (+sd -s)|serious (+s -s)|timid (+s -a)
    gui, add, listbox, x260 y30 w120 h150 vbuyheld, everstone|xp blocker|deep sea scale|deep sea tooth|dragon scale|dubious disc|electrizer|kings rock|magmarizer|metal coat|prism scale|protector|reaper cloth|sachet|up-grade|whipped dream|oval stone|razor claw|razor fang
    gui, add, button, x0 y190 w120 h30 gbuystone, buy (150c)
    gui, add, button, x130 y190 w120 h30 gbuynature, buy (50c)
    gui, add, button, x260 y190 w120 h30 gbuyheld, buy (75c)
    gui, add, radio, x390 y30 w120 h20 center vbuy30m, 30m 2x (20c)
    gui, add, radio, x390 y50 w120 h20 center vbuy1h, 1 hour 2x (40c)
    gui, add, radio, x390 y70 w120 h20 center vbuy2h, 2 hour 2x (70c)
    gui, add, radio, x390 y90 w120 h20 center vbuy4h, 4 hour 1.5x (90c)
    gui, add, button, x390 y110 w120 h20 gbuyxp, buy
    gui, add, text, x390 y130 w120 h20 center, mega evolution
    gui, add, radio, x390 y150 w110 h20 center vbuyx, x
    gui, add, radio, x390 y170 w110 h20 center vbuyy, y
    gui, add, button, x390 y190 w120 h30 gbuymega, buy (1000c)
    showgui(510,220,"Better Pokecord - Shop")
    return
    
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
    gui, add, dropdownlist, x140 y100 w150 h10 r9 vmarketorder, %marketorder%||price ascending|iv ascending|lvl ascending|name ascending|price descending|iv descending|lvl descending|name descending
    gui, add, dropdownlist, x140 y120 w150 h20 r20 vmarkettype, %markettype%||bug|dark|dragon|electric|fairy|fighting|fire|flying|ghost|grass|ground|ice|normal|poison|psychic|rock|steel|water
    gui, add, checkbox, x140 y140 w70 h20 center checked%marketshiny% vmarketshiny, shiny
    gui, add, checkbox, x210 y140 w80 h20 center checked%marketshowiv% vmarketshowiv, show iv
    gui, add, button, x300 y0 w70 h160 default gmarketsearch, search
    showgui(370,160,"Better Pokecord - Market")
    return

hotkeysmenu:
    gui, destroy
    gui, add, text, x10 y0 w120 h20 center border, gui windows
    gui, add, text, x140 y0 w120 h20 center border, my pokemon
    gui, add, text, x270 y0 w120 h20 center border, market
    gui, add, text, x400 y0 w120 h20 center border, spam
    gui, add, text, x10 y50 w70 h20 center, options menu
    gui, add, text, x10 y100 w70 h20 center, shop menu
    gui, add, text, x10 y150 w70 h20 center, market menu
    gui, add, text, x140 y30 w70 h20 center, catch
    gui, add, text, x140 y80 w70 h20 center, set pokemon
    gui, add, text, x140 y130 w70 h20 center, latest catch
    gui, add, text, x140 y180 w70 h20 center, check species
    gui, add, text, x270 y30 w70 h20 center, search iv
    gui, add, text, x270 y60 w70 h20 center, search price
    gui, add, text, x270 y90 w70 h20 center, sell
    gui, add, text, x270 y120 w70 h20 center, trade
    gui, add, text, x270 y150 w70 h20 center, buy
    gui, add, text, x270 y180 w70 h20 center, info
    gui, add, text, x400 y50 w70 h20 center, numerical
    gui, add, text, x400 y100 w70 h20 center, generator
    gui, add, text, x400 y150 w70 h20 center, pause
    gui, add, hotkey, vhoptions x80 y50 w50 h20 , %hoptions%
    gui, add, hotkey, vhshop x80 y100 w50 h20 , %hshop%
    gui, add, hotkey, vhmarket x80 y150 w50 h20 , %hmarket%
    gui, add, hotkey, vhcatch x210 y30 w50 h20 , %hcatch%
    gui, add, hotkey, vhset x210 y80 w50 h20 , %hset%
    gui, add, hotkey, vhlatest x210 y130 w50 h20 , %hlatest%
    gui, add, hotkey, vhspecies x210 y180 w50 h20 , %hspecies%
    gui, add, hotkey, vhsearchiv x340 y30 w50 h20 , %hsearchiv%
    gui, add, hotkey, vhsearchprice x340 y60 w50 h20 , %hsearchprice%
    gui, add, hotkey, vhquicksell x340 y90 w50 h20 , %hquicksell%
    gui, add, hotkey, vhtrade x340 y120 w50 h20 , %htrade%
    gui, add, hotkey, vhquickbuy x340 y150 w50 h20 , %hquickbuy%
    gui, add, hotkey, vhinfo x340 y180 w50 h20 , %hinfo%
    gui, add, hotkey, vhnumerical x470 y50 w50 h20 , %hnumerical%
    gui, add, hotkey, vhgenerator x470 y100 w50 h20 , %hgenerator%
    gui, add, hotkey, vhpause x470 y150 w50 h20 , %hpause%
    gui, add, button, gupdatehotkeys x10 y210 w510 h30 , submit
    showgui(530,250,"Better Pokecord - Hotkeys")
return

save:
    gui, submit
    prefcheck := strsplit(prefix)
    prefix =
    checkfor := "!,#,^,+"
    for each, character in prefcheck {
        if character in %checkfor%
            character := "{" character "}"
        prefix := prefix . character
    }
    gosub, optionsmenu
    return

balance:
    sleepwin("Discord",20)
    send % prefix "bal`r"
    gosub, msgcount
    gosub, optionsmenu
    return

daily:
    sleepwin("Discord",20)
    send % prefix "daily`r"
    gosub, msgcount
    gosub, optionsmenu
    return

reload:
    gosub, updateini
    reload
    return

updatehotkeys:
    gui, submit
    gosub, hotkeys
    gosub, optionsmenu
    return

buystone:
    gui, submit
    if (strlen(buystone) <= 0) {
        gosub, shopmenu
        return
    }
    buystone := strsplit(buystone, a_space)
    sleepwin("Discord",20)
    if (buystone[1] == "friendship")
        send % prefix "buy " buystone[1] "`r"
    else
        send % prefix "buy stone " buystone[1] "`r"
    gosub, msgcount
    gosub, shopmenu
    return

buynature:
    gui, submit
    if (strlen(buynature) <= 0) {
        gosub, shopmenu
        return
    }
    buynature := strsplit(buynature, a_space)
    sleepwin("Discord",20)
    send % prefix "buy nature " buynature[1] "`r"
    gosub, msgcount
    gosub, shopmenu
    return

buyheld:
    gui, submit
    if (strlen(buyheld) <= 0) {
        gosub, shopmenu
        return
    }
    sleepwin("Discord",20)
    send % prefix "buy item " buyheld "`r"
    gosub, msgcount
    gosub, shopmenu
    return

buyxp:
    gui, submit
    if ((buy30m+buy1h+buy2h+buy4h) == 1) {
        sleepwin("Discord",20)
        if (buy30m = 1)
            send, %prefix%buy 1`r
        if (buy1h = 1)
            send, %prefix%buy 2`r
        if (buy2h = 1)
            send, %prefix%buy 3`r
        if (buy4h = 1)
            send, %prefix%buy 4`r
        gosub, msgcount
    }
    gosub, shopmenu
    return

buymega:
    gui, submit
    sleepwin("Discord",20)
    if ((buyx+buyy) == 0)
        send, %prefix%buy mega`r
    if (buyx = 1)
        send, %prefix%buy mega x`r
    if (buyy = 1)
        send, %prefix%buy mega y`r
    gosub, msgcount
    gosub, shopmenu
    return

marketsearch:
    gui, submit
    sleepwin("Discord",20)
    marketsearch := prefix "market search"
    if (vpokemon != "--")
        marketsearch := marketsearch . " --name " vpokemon
    if (marketshiny = 1)
        marketsearch := marketsearch . " --shiny"
    if (marketlevel > 0 and marketlevel < 101)
        marketsearch := marketsearch . " --level " marketlevel
    if (markettype != "type")
        marketsearch := marketsearch . " --type " markettype
    if (marketprice != "--")
        marketsearch := marketsearch . " --price " marketprice
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
    if (marketorder != "order")
        marketsearch := marketsearch . " --order " marketorder
    if (marketshowiv = 1)
        marketsearch := marketsearch . " --showiv"
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

showstats:
    cbootcount := commify(bootcount)
    cmessagessent := commify(messagessent)
    ctotalmessagessent := commify(totalmessagessent)
    cpokemoncaught := commify(pokemoncaught)
    msgbox,, Better Pokecord - Stats,
    (ltrim
        total boots : %cbootcount%
        messages sent : %cmessagessent%
        total messages sent : %ctotalmessagessent%

        pokemon caught : %cpokemoncaught%
        selected pokemon : %vpokemon%
        most recent catch : %lastpokemoncaught%
    )
    return

msgcount:
    totalmessagessent += 1
    messagessent += 1
    return

updateini:
    iniwrite, %prefix%, settings.ini, system, prefix
    iniwrite, %mininterval%, settings.ini, system, spam_msg_interval_min
    iniwrite, %maxinterval%, settings.ini, system, spam_msg_interval_max
    iniwrite, %hoptions%, settings.ini, system, options
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

saveandexit:
    gosub, updateini
    exitapp

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
