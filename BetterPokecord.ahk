#NoEnv
#SingleInstance, Force
SetTitleMatchMode, 2
SetKeyDelay, 80
SetWorkingDir, %A_ScriptDir%
IniRead, Prefix, Settings.ini, System, Prefix
IniRead, MinInterval, Settings.ini, System, Spam_Msg_Interval_Min
IniRead, MaxInterval, Settings.ini, System, Spam_Msg_Interval_Max
IniRead, BootCount, Settings.ini, Stats, Boot_Count
IniRead, TotalMessagesSent, Settings.ini, Stats, Total_Messages_Sent
IniRead, PokemonCaught, Settings.ini, Stats, Pokemon_Caught
IniRead, LastPokemonCaught, Settings.ini, Stats, Last_Pokemon_Caught
IniRead, marketorder, Settings.ini, Market, Order
IniRead, markettype, Settings.ini, Market, type
IniRead, marketlevel, Settings.ini, Market, level
IniRead, marketprice, Settings.ini, Market, price
IniRead, markethpiv, Settings.ini, Market, hpiv
IniRead, marketatkiv, Settings.ini, Market, atkiv
IniRead, marketdefiv, Settings.ini, Market, defiv
IniRead, marketsatkiv, Settings.ini, Market, satkiv
IniRead, marketsdefiv, Settings.ini, Market, sdefiv
IniRead, marketspdiv, Settings.ini, Market, spdiv
IniRead, marketshiny, Settings.ini, Market, shiny
IniRead, marketshowiv, Settings.ini, Market, showiv
BootCount += 1
MessagesSent := 0
vPokemon := LastPokemonCaught
PokemonList := "Bulbasaur,Ivysaur,Venusaur,Charmander,Charmeleon,Charizard,Squirtle,Wartortle,Blastoise,Caterpie,Metapod,Butterfree,Weedle,Kakuna,Beedrill,Pidgey,Pidgeotto,Rattata,Raticate,Spearow,Fearow,Ekans,Arbok,Pikachu,Raichu,Sandshrew,Sandslash,Nidoran,Nidorina,Nidoqueen,Nidoran,Nidorino,Nidoking,Clefairy,Clefable,Vulpix,Ninetales,Jigglypuff,Wigglytuff,Zubat,Golbat,Oddish,Gloom,Vileplume,Paras,Parasect,Venonat,Venomoth,Diglett,Dugtrio,Meowth,Persian,Psyduck,Golduck,Mankey,Primeape,Growlithe,Arcanine,Poliwag,Poliwhirl,Poliwrath,Abra,Kadabra,Alakazam,Machop,Machoke,Machamp,Bellsprout,Weepinbell,Victreebel,Tentacool,Tentacruel,Geodude,Graveler,Golem,Ponyta,Rapidash,Slowpoke,Slowbro,Magnemite,Magneton,Farfetchd,Doduo,Dodrio,Seel,Dewgong,Grimer,Muk,Shellder,Cloyster,Gastly,Haunter,Gengar,Onix,Drowzee,Hypno,Krabby,Kingler,Voltorb,Electrode,Exeggcute,Exeggutor,Cubone,Marowak,Hitmonlee,Hitmonchan,Lickitung,Koffing,Weezing,Rhyhorn,Rhydon,Chansey,Tangela,Kangaskhan,Horsea,Seadra,Goldeen,Seaking,Staryu,Starmie,Mr. Mime,Scyther,Jynx,Electabuzz,Magmar,Pinsir,Tauros,Magikarp,Gyarados,Lapras,Ditto,Eevee,Vaporeon,Jolteon,Flareon,Omanyte,Omastar,Kabutops,Aerodactyl,Snorlax,Articuno,Zapdos,Moltres,Dratini,Dragonair,Dragonite,Mewtwo,Chikorita,Bayleef,Meganium,Cyndaquil,Quilava,Typhlosion,Totodile,Croconaw,Feraligatr,Sentret,Furret,Hoothoot,Noctowl,Ledyba,Ledian,Spinarak,Ariados,Crobat,Chinchou,Lanturn,Pichu,Cleffa,Igglybuff,Togepi,Togetic,Natu,Xatu,Mareep,Flaaffy,Ampharos,Bellossom,Marill,Azumarill,Sudowoodo,Politoed,Hoppip,Skiploom,Jumpluff,Aipom,Sunkern,Sunflora,Yanma,Wooper,Quagsire,Espeon,Umbreon,Murkrow,Slowking,Misdreavus,Unown,Wobbuffet,Girafarig,Pineco,Forretress,Dunsparce,Gligar,Steelix,Snubbull,Granbull,Qwilfish,Scizor,Shuckle,Heracross,Sneasel,Teddiursa,Ursaring,Slugma,Magcargo,Swinub,Piloswine,Corsola,Remoraid,Octillery,Delibird,Mantine,Skarmory,Houndour,Houndoom,Kingdra,Phanpy,Donphan,Porygon2,Stantler,Smeargle,Tyrogue,Hitmontop,Smoochum,Elekid,Magby,Miltank,Blissey,Raikou,Entei,Suicune,Larvitar,Pupitar,Tyranitar,Lugia,Ho-Oh,Celebi,Treecko,Grovyle,Sceptile,Torchic,Combusken,Blaziken,Mudkip,Marshtomp,Swampert,Poochyena,Mightyena,Zigzagoon,Linoone,Wurmple,Silcoon,Beautifly,Cascoon,Dustox,Lotad,Lombre,Ludicolo,Seedot,Nuzleaf,Shiftry,Taillow,Swellow,Wingull,Pelipper,Ralts,Kirlia,Gardevoir,Surskit,Masquerain,Shroomish,Breloom,Slakoth,Vigoroth,Slaking,Nincada,Ninjask,Shedinja,Whismur,Loudred,Exploud,Makuhita,Hariyama,Azurill,Nosepass,Skitty,Delcatty,Sableye,Mawile,Aron,Lairon,Aggron,Meditite,Medicham,Electrike,Manectric,Plusle,Minun,Volbeat,Illumise,Roselia,Gulpin,Swalot,Carvanha,Sharpedo,Wailmer,Wailord,Numel,Camerupt,Torkoal,Spoink,Grumpig,Spinda,Trapinch,Vibrava,Flygon,Cacnea,Cacturne,Swablu,Altaria,Zangoose,Seviper,Lunatone,Solrock,Barboach,Whiscash,Corphish,Crawdaunt,Baltoy,Claydol,Lileep,Cradily,Anorith,Armaldo,Feebas,Milotic,Castform,Kecleon,Shuppet,Banette,Duskull,Dusclops,Tropius,Chimecho,Absol,Wynaut,Snorunt,Glalie,Spheal,Sealeo,Walrein,Clamperl,Huntail,Gorebyss,Relicanth,Luvdisc,Bagon,Shelgon,Salamence,Beldum,Metang,Metagross,Regirock,Regice,Registeel,Latias,Latios,Kyogre,Groudon,Rayquaza,Jirachi,Deoxys,Turtwig,Grotle,Torterra,Chimchar,Monferno,Infernape,Piplup,Prinplup,Empoleon,Starly,Staravia,Staraptor,Bidoof,Bibarel,Kricketot,Kricketune,Shinx,Luxio,Luxray,Budew,Roserade,Cranidos,Rampardos,Shieldon,Bastiodon,Burmy,Wormadam,Mothim,Combee,Vespiquen,Pachirisu,Buizel,Floatzel,Cherubi,Cherrim,Shellos,Gastrodon,Ambipom,Drifloon,Drifblim,Buneary,Lopunny,Mismagius,Honchkrow,Glameow,Purugly,Chingling,Stunky,Skuntank,Bronzor,Bronzong,Bonsly,Mime Jr.,Happiny,Chatot,Spiritomb,Gible,Gabite,Garchomp,Munchlax,Riolu,Lucario,Hippopotas,Hippowdon,Skorupi,Drapion,Croagunk,Toxicroak,Carnivine,Finneon,Lumineon,Mantyke,Snover,Abomasnow,Weavile,Magnezone,Lickilicky,Rhyperior,Tangrowth,Electivire,Magmortar,Togekiss,Yanmega,Leafeon,Glaceon,Gliscor,Mamoswine,Porygon-Z,Gallade,Probopass,Dusknoir,Froslass,Rotom,Uxie,Mesprit,Azelf,Dialga,Palkia,Heatran,Regigigas,Giratina,Cresselia,Phione,Manaphy,Darkrai,Shaymin,Arceus,Victini,Snivy,Servine,Serperior,Tepig,Pignite,Emboar,Oshawott,Dewott,Samurott,Patrat,Watchog,Lillipup,Herdier,Stoutland,Purrloin,Liepard,Pansage,Simisage,Pansear,Simisear,Panpour,Simipour,Munna,Musharna,Pidove,Tranquill,Unfezant,Blitzle,Zebstrika,Roggenrola,Boldore,Gigalith,Woobat,Swoobat,Drilbur,Excadrill,Audino,Timburr,Gurdurr,Conkeldurr,Tympole,Palpitoad,Seismitoad,Throh,Sawk,Sewaddle,Swadloon,Leavanny,Venipede,Whirlipede,Scolipede,Cottonee,Whimsicott,Petilil,Lilligant,Basculin,Sandile,Krokorok,Krookodile,Darumaka,Darmanitan,Maractus,Dwebble,Crustle,Scraggy,Scrafty,Sigilyph,Yamask,Cofagrigus,Tirtouga,Carracosta,Archen,Archeops,Trubbish,Garbodor,Zorua,Zoroark,Minccino,Cinccino,Gothita,Gothorita,Gothitelle,Solosis,Duosion,Reuniclus,Ducklett,Swanna,Vanillite,Vanillish,Vanilluxe,Deerling,Sawsbuck,Emolga,Karrablast,Escavalier,Foongus,Amoonguss,Frillish,Jellicent,Alomomola,Joltik,Galvantula,Ferroseed,Ferrothorn,Klang,Klinklang,Tynamo,Eelektrik,Eelektross,Elgyem,Beheeyem,Litwick,Lanturn,Chandelure,Axew,Fraxure,Haxorus,Cubchoo,Beartic,Cryogonal,Shelmet,Accelgor,Stunfisk,Mienfoo,Mienshao,Druddigon,Golett,Golurk,Pawniard,Bisharp,Bouffalant,Rufflet,Braviary,Vullaby,Mandibuzz,Heatmor,Durant,Deino,Zweilous,Hydreigon,Larvesta,Volcarona,Cobalion,Terrakion,Virizion,Tornadus,Thundurus,Reshiram,Zekrom,Landorus,Kyurem,Keldeo,Meloetta,Genesect,Chespin,Quilladin,Chesnaught,Fennekin,Braixen,Delphox,Froakie,Frogadier,Greninja,Bunnelby,Diggersby,Fletchling,Fletchinder,Talonflame,Scatterbug,Spewpa,Vivillon,Litleo,Pyroar,Flabebe,Floette,Florges,Skiddo,Gogoat,Pancham,Pangoro,Furfrou,Espurr,Meowstic,Honedge,Doublade,Aegislash,Spritzee,Aromatisse,Swirlix,Slurpuff,Inkay,Malamar,Binacle,Barbaracle,Skrelp,Dragalge,Clauncher,Clawitzer,Helioptile,Heliolisk,Tyrunt,Tyrantrum,Amaura,Aurorus,Sylveon,Hawlucha,Dedenne,Carbink,Goomy,Sliggoo,Goodra,Klefki,Phantump,Trevenant,Pumpkaboo,Gourgeist,Bergmite,Avalugg,Noibat,Noivern,Xerneas,Yveltal,Zygarde,Diancie,Hoopa,Volcanion,Rowlet,Dartrix,Decidueye,Litten,Torracat,Incineroar,Popplio,Brionne,Primarina,Pikipek,Trumbeak,Toucannon,Yungoos,Gumshoos,Grubbin,Charjabug,Vikavolt,Crabrawler,Crabominable,Oricorio,Cutiefly,Ribombee,Rockruff,Lycanroc,Wishiwashi,Mareanie,Toxapex,Mudbray,Mudsdale,Dewpider,Araquanid,Fomantis,Lurantis,Morelull,Shiinotic,Salandit,Salazzle,Stufful,Bewear,Bounsweet,Steenee,Tsareena,Comfey,Oranguru,Passimian,Wimpod,Golisopod,Sandygast,Palossand,Pyukumuku,Type: Null,Silvally,Minior,Komala,Turtonator,Togedemaru,Mimikyu,Bruxish,Drampa,Dhelmise,Jangmo-o,Hakamo-o,Kommo-o,Tapu Koko,Tapu Lele,Tapu Bulu,Tapu Fini,Cosmog,Cosmoem,Solgaleo,Lunala,Nihilego,Buzzwole,Pheromosa,Xurkitree,Celesteela,Kartana,Guzzlord,Necrozma,Magearna,Marshadow,Poipole,Naganadel,Stakataka,Blacephalon,Zeraora,Meltan,Melmetal,Alolan Rattata,Alolan Raticate,Alolan Raichu,Alolan Sandshrew,Alolan Sandslash,Alolan Vulpix,Alolan Ninetales,Alolan Diglett,Alolan Dugtrio,Alolan Meowth,Alolan Persian,Alolan Geodude,Alolan Graveler,Alolan Golem,Alolan Grimer,Alolan Muk,Alolan Exeggutor,Alolan Marowak"
OnExit, saveandexit
+End::
    Gosub, reload
    return
^End::Exit
End::Suspend
optionsmenu:
    Gui, Destroy
    Gui, Add, Button, gsaveandexit x0 y0 w160 h20 , Exit
    Gui, Add, Button, greload x0 y20 w160 h30 , Reload
    Gui, Add, Button, gshowstats x170 y0 w70 h120 Default , Stats
    Gui, Add, Button, gbalance x240 y0 w50 h120 , Balance
    Gui, Add, Button, gdaily x290 y0 w30 h120 , Daily
    Gui, Add, Button, gsave x0 y60 w80 h20 , Set Prefix
    Gui, Add, Edit, vnewprefix x80 y60 w80 h20 , %prefix%
    Gui, Add, Button, gsave x0 y80 w80 h20 , Set Min
    Gui, Add, Edit, vnewmin x80 y80 w80 h20 , %mininterval%
    Gui, Add, Button, gsave x0 y100 w80 h20 , Set Max
    Gui, Add, Edit, vnewmax x80 y100 w80 h20 , %maxinterval%
    showgui(320,120,"Better Pokecord - Options")
    Return
shopmenu:
    Gui, Destroy
    Gui, Add, Text, x0 y0 w120 h20 center, Stones + Evo
    Gui, Add, Text, x130 y0 w120 h20 center, Natures
    Gui, Add, Text, x260 y0 w120 h20 center, Held Items
    Gui, Add, Text, x390 y0 w120 h20 center, XP Boosters
    Gui, Add, ListBox, x0 y30 w120 h150 vbuystone, Dawn Stone|Dusk Stone|Fire Stone|Ice Stone|Leaf Stone|Moon Stone|Shiny Stone|Sun Stone|Thunder Stone|Water Stone|Friendship Bracelet
    Gui, Add, ListBox, x130 y30 w120 h150 vbuynature, Adamant (+A -SA)|Bashful (+SA -SA)|Bold (+D -A)|Brave (+A -S)|Calm (+SD -A)|Careful (+SD -SA)|Docile (+D -D)|Gentile (+SD -D)|Hardy (+A -A)|Hasty (+S -D)|Impish (+D -SA)|Jolly (+S -SA)|Lax (+D -SD)|Lonely (+A -D)|Mild (+SA -D)|Modest (+SA -A)|Naive (+S -SD)|Naughty (+A -SD)|Quiet (+SA -S)|Quirky (+SD -SD)|Rash (+SA -SD)|Relaxed (+D -S)|Sassy (+SD -S)|Serious (+S -S)|Timid (+S -A)
    Gui, Add, ListBox, x260 y30 w120 h150 vbuyheld, Everstone|XP Blocker|Deep Sea Scale|Deep Sea Tooth|Dragon Scale|Dubious Disc|Electrizer|Kings Rock|Magmarizer|Metal Coat|Prism Scale|Protector|Reaper Cloth|Sachet|Up-Grade|Whipped Dream|Oval Stone|Razor Claw|Razor Fang
    Gui, Add, Button, x0 y190 w120 h30 gbuystone, Buy (150c)
    Gui, Add, Button, x130 y190 w120 h30 gbuynature, Buy (50c)
    Gui, Add, Button, x260 y190 w120 h30 gbuyheld, Buy (75c)
    Gui, Add, Radio, x390 y30 w120 h20 center vbuy30m, 30m 2x (20c)
    Gui, Add, Radio, x390 y50 w120 h20 center vbuy1h, 1 Hour 2x (40c)
    Gui, Add, Radio, x390 y70 w120 h20 center vbuy2h, 2 Hour 2x (70c)
    Gui, Add, Radio, x390 y90 w120 h20 center vbuy4h, 4 Hour 1.5x (90c)
    Gui, Add, Button, x390 y110 w120 h20 gbuyxp, Buy
    Gui, Add, Text, x390 y130 w120 h20 center, Mega Evolution
    Gui, Add, Radio, x390 y150 w110 h20 center vbuyx, X
    Gui, Add, Radio, x390 y170 w110 h20 center vbuyy, Y
    Gui, Add, Button, x390 y190 w120 h30 gbuymega, Buy (1000c)
    showgui(510,220,"Better Pokecord - Shop")
    Return
marketmenu:
    Gui, Destroy
    Gui, Add, Button, x10 y0 w120 h20 gmarketivreset, Reset
    Gui, Add, Text, x10 y20 w120 h20 border center, IV's
    Gui, Add, Text, x10 y40 w50 h20 center, HP
    Gui, Add, Edit, x10 y60 w50 h20 limit2 number vmarkethpiv, %markethpiv%
    Gui, Add, Text, x10 y80 w50 h20 center, Atk
    Gui, Add, Edit, x10 y100 w50 h20 limit2 number vmarketatkiv, %marketatkiv%
    Gui, Add, Text, x10 y120 w50 h20 center, Def
    Gui, Add, Edit, x10 y140 w50 h20 limit2 number vmarketdefiv, %marketdefiv%
    Gui, Add, Text, x80 y40 w50 h20 center, S.Atk
    Gui, Add, Edit, x80 y60 w50 h20 limit2 number vmarketsatkiv, %marketsatkiv%
    Gui, Add, Text, x80 y80 w50 h20 center, S.Def
    Gui, Add, Edit, x80 y100 w50 h20 limit2 number vmarketsdefiv, %marketsdefiv%
    Gui, Add, Text, x80 y120 w50 h20 center, Spd
    Gui, Add, Edit, x80 y140 w50 h20 limit2 number vmarketspdiv, %marketspdiv%
    Gui, Add, Button, x140 y0 w150 h20 gmarketreset, Reset
    Gui, Add, Text, x140 y20 w150 h20 border center, Pokemon Name
    Gui, Add, Edit, x140 y40 w150 h20 vvPokemon, %vPokemon%
    Gui, Add, Text, x140 y60 w60 h20 center, Level
    Gui, Add, Edit, x140 y80 w60 h20 limit3 number vmarketlevel, %marketlevel%
    Gui, Add, Text, x230 y60 w60 h20 center, Price
    Gui, Add, Edit, x230 y80 w60 h20 number vmarketprice, %marketprice%
    Gui, Add, DropDownList, x140 y100 w150 h10 r9 vmarketorder, %marketorder%||Price Ascending|IV Ascending|Lvl Ascending|Name Ascending|Price Descending|IV Descending|Lvl Descending|Name Descending
    Gui, Add, DropDownList, x140 y120 w150 h20 r20 vmarkettype, %markettype%||Bug|Dark|Dragon|Electric|Fairy|Fighting|Fire|Flying|Ghost|Grass|Ground|Ice|Normal|Poison|Psychic|Rock|Steel|Water
    Gui, Add, CheckBox, x140 y140 w70 h20 center checked%marketshiny% vmarketshiny, Shiny
    Gui, Add, CheckBox, x210 y140 w80 h20 center checked%marketshowiv% vmarketshowiv, Show IV
    Gui, Add, Button, x300 y0 w70 h160 Default gmarketsearch, Search
    showgui(370,160,"Better Pokecord - Market")
    Return
reload:
    gosub, UpdateIni
    reload
    Return
balance:
    sleepwin("Discord",20)
    Send, %Prefix%bal`r
    msgcount()
    Return
daily:
    sleepwin("Discord",20)
    Send, %Prefix%daily`r
    msgcount()
    Return
save:
    Gui, Submit
    Prefix := newprefix
    mininterval := newmin
    maxinterval := newmax
    Gosub, UpdateIni
    Gosub, optionsmenu
    Return
buystone:
    gui, submit
    if (strlen(buystone)<= 0) {
        gosub, shopmenu
        return
    }
    buystone := strsplit(buystone, a_space)
    sleepwin("Discord",20)
    if (buystone[1] == "Friendship")
        send, % prefix "buy " buystone[1] "`r"
    else
        send % prefix "buy stone " buystone[1] "`r"
    msgcount()
    gosub, shopmenu
    return
buynature:
    gui, submit
    if (strlen(buynature)<= 0) {
        gosub, shopmenu
        return
    }
    buynature := strsplit(buynature, a_space)
    sleepwin("Discord",20)
    send % prefix "buy nature " buynature[1] "`r"
    msgcount()
    gosub, shopmenu
    return
buyheld:
    gui, submit
    if (strlen(buyheld)<= 0) {
        gosub, shopmenu
        return
    }
    sleepwin("Discord",20)
    send % prefix "buy item " buyheld "`r"
    msgcount()
    gosub, shopmenu
    return
buyxp:
    gui, submit
    if ((buy30m+buy1h+buy2h+buy4h) == 0) {
        gosub, shopmenu
        return
    }
    sleepwin("Discord",20)
    if (buy30m = 1)
        send, %prefix%buy 1`r
    if (buy1h = 1)
        send, %prefix%buy 2`r
    if (buy2h = 1)
        send, %prefix%buy 3`r
    if (buy4h = 1)
        send, %prefix%buy 4`r
    msgcount()
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
    msgcount()
    gosub, shopmenu
    return
marketsearch:
    gui, submit
    sleepwin("Discord",20)
    marketsearch := prefix "market search"
    if (vPokemon != "--")
        marketsearch := marketsearch . " --name " vPokemon
    if (marketshiny = 1)
        marketsearch := marketsearch . " --shiny"
    if (marketlevel > 0 and marketlevel < 101)
        marketsearch := marketsearch . " --level " marketlevel
    if (markettype != "Type")
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
        marketsearch := marketsearch . " --speediv " markethpiv
    if (marketorder != "Order")
        marketsearch := marketsearch . " --order " marketorder
    if (marketshowiv = 1)
        marketsearch := marketsearch . " --showiv"
    send, %marketsearch%`r
    msgcount()
    gosub, marketmenu
    return
marketreset:
    marketlevel := marketprice := "--"
    marketorder := "Order"
    markettype := "Type"
    gosub, marketmenu
    return
marketivreset:
    markethpiv := marketatkiv := marketdefiv := marketsatkiv := marketsdefiv := marketspdiv := "--"
    gosub, marketmenu
    return
#IfWinActive, Discord
!s::Gosub, showstats
[::Pause
![::Gosub, spamnum
^[::Gosub, spamspawn
+Enter::Gosub, catchpokemon
+\::Gosub, setpokemon
NumLock::Gosub, latestcatch
Home::Gosub, checkspecies
NumpadDiv::Gosub, searchiv
NumpadMult::Gosub, searchprice
NumpadSub::Gosub, marketsell
^NumpadSub::Gosub, trade
NumpadAdd::Gosub, marketbuy
^NumpadAdd::Gosub, marketinfo
catchpokemon:
    SetKeyDelay, -1
    Send, %Prefix%catch{Space}
    Input, vPokemon, i v t20, {Enter}, %PokemonList%
    if (ErrorLevel = "match") {
        Send, {Enter}
        TotalMessagesSent += 1
        MessagesSent += 1
        PokemonCaught += 1
        LastPokemonCaught := vPokemon
    }
    if (ErrorLevel = "EndKey:Enter") {
        TotalMessagesSent += 1
        MessagesSent += 1
        PokemonCaught += 1
        LastPokemonCaught := vPokemon
    }
    if (ErrorLevel = "timeout") {
        Send, {Ctrl Down}a{Ctrl Up}{BackSpace}
        vPokemon := LastPokemonCaught
    }
    Return
setpokemon:
    SetKeyDelay, -1
    Send, waiting{Space}
    Input, vPokemon, i v t20,{\}, %PokemonList%
    if (ErrorLevel = "match")
        Send, {Ctrl Down}a{Ctrl Up}{BackSpace}
    if (ErrorLevel = "EndKey:\")
        Send, {Ctrl Down}a{Ctrl Up}{BackSpace}
    if (ErrorLevel = "timeout") {
        SetKeyDelay, 10
        Send, {Ctrl Down}a{Ctrl Up}{BackSpace}
        vPokemon := LastPokemonCaught
    }
    Return
latestcatch:
    Send, %Prefix%info latest{Enter}
    TotalMessagesSent += 1
    MessagesSent += 1
    Return
checkspecies:
    Send, %Prefix%pokemon --name %vPokemon%{Enter}
    TotalMessagesSent += 1
    MessagesSent += 1
    Return
searchiv:
    Send, %Prefix%market search --name %vPokemon% --order iv descending --showiv{Enter}
    TotalMessagesSent += 1
    MessagesSent += 1
    Return
searchprice:
    Send, %Prefix%market search --name %vPokemon% --order price ascending --showiv{Enter}
    TotalMessagesSent += 1
    MessagesSent += 1
    Return
marketsell:
    SetKeyDelay, 120
    Send, {CtrlDown}c{CtrlUp}
    InputBox, sellprice, How Much To List Each For?
    If (ErrorLevel = 1)
        Return
    WinActivate, Discord
    Loop, Parse, Clipboard, `n
    {
        parsesanity := 0
        loopcount += 1
        marketarray := StrSplit(A_LoopField, A_Space)
        If (marketarray[1]="Alolan"||marketarray[1]="Mega"||marketarray[1]="Mime"||marketarray[2]="Mime")
            parsesanity += 1
        If (marketarray[3]="X"||marketarray[3]="Y")
            parsesanity += 1
        Send % Prefix "market list " marketarray[7+parsesanity] " " sellprice "`r"
        TotalMessagesSent += 1
        MessagesSent += 1
        If (A_Index = 10) {
            Send, %Prefix%confirmlist{Enter}
            TotalMessagesSent += 1
            MessagesSent += 1
            Break
        }
    }
    If (loopcount != 10) {
        Send, %Prefix%confirmlist{Enter}
        TotalMessagesSent += 1
        MessagesSent += 1
    }
    loopcount := 0
    Return
marketbuy:
    SetKeyDelay, 120
    Send, {CtrlDown}c{CtrlUp}
    Loop, Parse, Clipboard, `n
    {
        parsesanity := 0
        loopcount += 1
        marketarray := StrSplit(A_LoopField, A_Space)
        If (marketarray[3]="Alolan"||marketarray[3] = "Mega"||marketarray[3] = "Mime"||marketarray[4] = "Mime")
            parsesanity += 1
        If (marketarray[5]="X"||marketarray[5]="Y")
            parsesanity += 1
        Send % Prefix "market buy " marketarray[6+parsesanity] "`r"
        TotalMessagesSent += 1
        MessagesSent += 1
        If (A_Index = 10) {
            Send, %Prefix%confirmbuy{Enter}
            TotalMessagesSent += 1
            MessagesSent += 1
        }
    }
    If (loopcount != 10) {
        Send, %Prefix%confirmbuy{Enter}
        TotalMessagesSent += 1
        MessagesSent += 1
    }
    loopcount := 0
    Return
marketinfo:
    SetKeyDelay, 120
    Send, {CtrlDown}c{CtrlUp}
    Loop, Parse, Clipboard, `n
    {
        parsesanity := 0
        marketarray := StrSplit(A_LoopField, A_Space)
        If (marketarray[3]="Alolan"||marketarray[3]="Mega"||marketarray[3]="Mime"||marketarray[4]="Mime")
            parsesanity += 1
        If (marketarray[5]="X"||marketarray[5]="Y")
            parsesanity += 1
        Send % Prefix "market info " marketarray[6+parsesanity] "`r"
        TotalMessagesSent += 1
        MessagesSent += 1
    }
    Return
trade:
    SetKeyDelay, 120
    Send, %Prefix%p add{Space}
    Loop, Parse, Clipboard, `n
    {
        parsesanity := 0
        marketarray := StrSplit(A_LoopField, A_Space)
        If (marketarray[1]="Alolan"||marketarray[1]="Mega"||marketarray[1]="Mime"||marketarray[2]="Mime")
            parsesanity += 1
        If (marketarray[3]="X"||marketarray[3]="Y")
            parsesanity += 1
        Send % marketarray[7+parsesanity] " "
    }
    Send, {Enter}
    TotalMessagesSent += 1
    MessagesSent += 1
    Return
spamnum:
    InputBox, totalmessages, How Many Messages to Send?
    If (ErrorLevel = 1)
        Return
    WinActivate, Discord
    While A_Index <= totalmessages {
        Clipboard := "``" Commify(A_Index) "/" Commify(totalmessages) " (" Percentage(A_Index,totalmessages) ")``"
        Send, ^v {Enter}
        TotalMessagesSent += 1
        MessagesSent += 1
        Sleep, Random(MinInterval, MaxInterval)
    }
    Return
spamspawn:
    InputBox, totalpokemon, How many Pokemon to spawn?
    If (ErrorLevel = 1)
        Return
    WinActivate, Discord
    vPokemonArray := ["Pidegot","Kabuto","Mew","Porygon","Klink"]
    Loop, Parse, PokemonList, CSV
    {
        vPokemonArray.push(A_LoopField)
    }
    Natures := ["Adamant","Bashful","Bold","Brave","Calm","Careful","Docile","Gentile","Hardy","Hasty","Impish","Jolly","Lax","Loneley","Mild","Modest","Naive","Naughty","Quiet","Quirky","Rash","Relaxed","Sassy","Serious","Timid"]
    While A_Index <= totalpokemon {
        Random, Level  , 1, 90
        Random, HPIV   , 1, 31
        Random, AtkIV  , 1, 31
        Random, DefIV  , 1, 31
        Random, SAtkIV , 1, 31
        Random, SDefIV , 1, 31
        Random, SPIV   , 1, 31
        Random, isShiny, 1, 4096
        spawnedpokemon := vPokemonArray[Random(1, vPokemonArray.MaxIndex())]
        spawnednature := Natures[Random(1, Natures.MaxIndex())]
        totalIV := Percentage((HPIV+AtkIV+DefIV+SAtkIV+SDefIV+SPIV),186)
        totalcount := "# " Commify(A_Index) "/" Commify(totalpokemon) " (" Percentage(A_Index,totalpokemon) ")"
        Clipboard =
        (Ltrim
            ``````cs
            %totalcount%
            Level   : %Level%
            Pokemon : %spawnedpokemon%
            Total IV: %totalIV%
            Nature  : %spawnednature%

            HP      : %HPIV%/31
            Atk     : %AtkIV%/31
            Def     : %DefIV%/31
            sAtk    : %SAtkIV%/31
            sDef    : %SDefIV%/31
            Spd     : %SPIV%/31``````
        )
        Send, ^v {Enter}
        MessagesSent += 1
        TotalMessagesSent += 1
        if (isShiny = 1) {
            Send, :star2:SHINY:star2:{Enter}
            MessagesSent += 1
            TotalMessagesSent += 1
        }
        Sleep, Random(MinInterval,MaxInterval)
    }
    Return
showstats:
    cBootCount := Commify(BootCount)
    cMessagesSent := Commify(MessagesSent)
    cTotalMessagesSent := Commify(TotalMessagesSent)
    cPokemonCaught := Commify(PokemonCaught)
    MsgBox,
    (Ltrim
        Total Boots: %cBootCount%
        Messages Sent: %cMessagesSent%
        Total Messages Sent: %cTotalMessagesSent%

        Pokemon Caught: %cPokemonCaught%
        Most Recent Catch: %LastPokemonCaught%
    )
    Return
UpdateIni:
    IniWrite, %Prefix%, Settings.ini, System, Prefix
    IniWrite, %MinInterval%, Settings.ini, System, Spam_Msg_Interval_Min
    IniWrite, %MaxInterval%, Settings.ini, System, Spam_Msg_Interval_Max
    IniWrite, %BootCount%, Settings.ini, Stats, Boot_Count
    IniWrite, %TotalMessagesSent%, Settings.ini, Stats, Total_Messages_Sent
    IniWrite, %PokemonCaught%, Settings.ini, Stats, Pokemon_Caught
    IniWrite, %LastPokemonCaught%, Settings.ini, Stats, Last_Pokemon_Caught
    IniWrite, %marketorder%, Settings.ini, Market, Order
    IniWrite, %markettype%, Settings.ini, Market, type
    IniWrite, %marketlevel%, Settings.ini, Market, level
    IniWrite, %marketprice%, Settings.ini, Market, price
    IniWrite, %markethpiv%, Settings.ini, Market, hpiv
    IniWrite, %marketatkiv%, Settings.ini, Market, atkiv
    IniWrite, %marketdefiv%, Settings.ini, Market, defiv
    IniWrite, %marketsatkiv%, Settings.ini, Market, satkiv
    IniWrite, %marketsdefiv%, Settings.ini, Market, sdefiv
    IniWrite, %marketspdiv%, Settings.ini, Market, spdiv
    IniWrite, %marketshiny%, Settings.ini, Market, shiny
    IniWrite, %marketshowiv%, Settings.ini, Market, showiv
    Return
saveandexit:
    Gosub, UpdateIni
    ExitApp
Commify(n) {
    If (n <= 99)
        Return n
    s = ,
    d = 3
    Loop, % (l := StrLen(n)) // d {
        i := SubStr(n, 1 - d * A_Index, d) . s . i
    }
    i := (j := SubStr(n, 1, Mod(l, d))) . (j ? s : "") . SubStr(i, 1, -1)
    Return i
}
msgcount() {
    TotalMessagesSent += 1
    MessagesSent += 1
    return
}
Percentage(s,t) {
    if (s/t = 1)
        return "100%"
    p := SubStr((s/t),3,2) . "." . SubStr((s/t),5,2) . "%"
    Return p
}
Random(x, y) {
    Random, r, x, y
    Return r
}
showgui(w,h,s) {
    mousegetpos, x, y
    ox := x - (w*0.6)
    oy := y - (h*0.5)
    gui, show, x%ox% y%oy% w%w% h%h%, %s%
    return
}
sleepwin(w,t) {
    winactivate, %w%
    winwaitactive, %w%,,%t%
    return
}