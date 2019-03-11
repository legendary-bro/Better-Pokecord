commify(n) {
    if (n <= 99)
        return n
    s := ","
    d := 3
    loop, % (l := strlen(n)) // d {
        i := substr(n, 1 - d * a_index, d) . s . i
    }
    i := (j := substr(n, 1, mod(l, d))) . (j ? s : "") . substr(i, 1, -1)
    return i
}

clipcheck(secondstowait:=3,anydata:=false) {
    clipboard := ""
    sleepwin("Discord")
    send, ^c
    clipwait, % secondstowait, % anydata
    if (errorlevel = 1)
        clipcheck()
    return clipboard
}

embedids(page,defindex:=6) {
    sanitycheck := "alolan,attack,defense,form,mega,mime,primal,speed,x,y"
    loop, parse, % page, `n
    {
        parsesanity := 0
        for each, index in string := strsplit(a_loopfield, a_space)
            if index in % sanitycheck
                parsesanity += 1
        ids .= string[defindex+parsesanity] ","
    }
    ids := trim(ids,",")
    sort, ids, N R U D`,
    out :=	[]
	loop, parse, ids, `,
		out.push(a_loopfield)
    return out
}

millisectotime(msec) {
	secs := floor(mod((msec / 1000),60))
	mins := floor(mod((msec / (1000 * 60)),60))
	hour := floor(mod((msec / (1000 * 60 * 60)),24))
    if (msec < 3600000)
        return format("{:02}:{:02}",mins,secs)
	return format("{:02}:{:02}:{:02}",hour,mins,secs)
}

percentage(pointer,total) {
    if (pointer/total = 1)
        return "100%"
    return % substr((pointer/total),3,2) "." substr((pointer/total),5,2) "%"
}

random(x,y) {
    random, r, x, y
    return r
}

selectpkmn(prefix,iscatch:=true) {
    pokedex := "Bulbasaur,Ivysaur,Venusaur,Charmander,Charmeleon,Charizard,Squirtle,Wartortle,Blastoise,Caterpie,Metapod,Butterfree,Weedle,Kakuna,Beedrill,Pidgey,Pidgeotto,Rattata,Raticate,Spearow,Fearow,Ekans,Arbok,Pikachu,Raichu,Sandshrew,Sandslash,Nidoran,Nidorina,Nidoqueen,Nidoran,Nidorino,Nidoking,Clefairy,Clefable,Vulpix,Ninetales,Jigglypuff,Wigglytuff,Zubat,Golbat,Oddish,Gloom,Vileplume,Paras,Parasect,Venonat,Venomoth,Diglett,Dugtrio,Meowth,Persian,Psyduck,Golduck,Mankey,Primeape,Growlithe,Arcanine,Poliwag,Poliwhirl,Poliwrath,Abra,Kadabra,Alakazam,Machop,Machoke,Machamp,Bellsprout,Weepinbell,Victreebel,Tentacool,Tentacruel,Geodude,Graveler,Golem,Ponyta,Rapidash,Slowpoke,Slowbro,Magnemite,Magneton,Farfetchd,Doduo,Dodrio,Seel,Dewgong,Grimer,Muk,Shellder,Cloyster,Gastly,Haunter,Gengar,Onix,Drowzee,Hypno,Krabby,Kingler,Voltorb,Electrode,Exeggcute,Exeggutor,Cubone,Marowak,Hitmonlee,Hitmonchan,Lickitung,Koffing,Weezing,Rhyhorn,Rhydon,Chansey,Tangela,Kangaskhan,Horsea,Seadra,Goldeen,Seaking,Staryu,Starmie,Mr. Mime,Scyther,Jynx,Electabuzz,Magmar,Pinsir,Tauros,Magikarp,Gyarados,Lapras,Ditto,Eevee,Vaporeon,Jolteon,Flareon,Omanyte,Omastar,Kabutops,Aerodactyl,Snorlax,Articuno,Zapdos,Moltres,Dratini,Dragonair,Dragonite,Mewtwo,Chikorita,Bayleef,Meganium,Cyndaquil,Quilava,Typhlosion,Totodile,Croconaw,Feraligatr,Sentret,Furret,Hoothoot,Noctowl,Ledyba,Ledian,Spinarak,Ariados,Crobat,Chinchou,Lanturn,Pichu,Cleffa,Igglybuff,Togepi,Togetic,Natu,Xatu,Mareep,Flaaffy,Ampharos,Bellossom,Marill,Azumarill,Sudowoodo,Politoed,Hoppip,Skiploom,Jumpluff,Aipom,Sunkern,Sunflora,Yanma,Wooper,Quagsire,Espeon,Umbreon,Murkrow,Slowking,Misdreavus,Unown,Wobbuffet,Girafarig,Pineco,Forretress,Dunsparce,Gligar,Steelix,Snubbull,Granbull,Qwilfish,Scizor,Shuckle,Heracross,Sneasel,Teddiursa,Ursaring,Slugma,Magcargo,Swinub,Piloswine,Corsola,Remoraid,Octillery,Delibird,Mantine,Skarmory,Houndour,Houndoom,Kingdra,Phanpy,Donphan,Porygon2,Stantler,Smeargle,Tyrogue,Hitmontop,Smoochum,Elekid,Magby,Miltank,Blissey,Raikou,Entei,Suicune,Larvitar,Pupitar,Tyranitar,Lugia,Ho-Oh,Celebi,Treecko,Grovyle,Sceptile,Torchic,Combusken,Blaziken,Mudkip,Marshtomp,Swampert,Poochyena,Mightyena,Zigzagoon,Linoone,Wurmple,Silcoon,Beautifly,Cascoon,Dustox,Lotad,Lombre,Ludicolo,Seedot,Nuzleaf,Shiftry,Taillow,Swellow,Wingull,Pelipper,Ralts,Kirlia,Gardevoir,Surskit,Masquerain,Shroomish,Breloom,Slakoth,Vigoroth,Slaking,Nincada,Ninjask,Shedinja,Whismur,Loudred,Exploud,Makuhita,Hariyama,Azurill,Nosepass,Skitty,Delcatty,Sableye,Mawile,Aron,Lairon,Aggron,Meditite,Medicham,Electrike,Manectric,Plusle,Minun,Volbeat,Illumise,Roselia,Gulpin,Swalot,Carvanha,Sharpedo,Wailmer,Wailord,Numel,Camerupt,Torkoal,Spoink,Grumpig,Spinda,Trapinch,Vibrava,Flygon,Cacnea,Cacturne,Swablu,Altaria,Zangoose,Seviper,Lunatone,Solrock,Barboach,Whiscash,Corphish,Crawdaunt,Baltoy,Claydol,Lileep,Cradily,Anorith,Armaldo,Feebas,Milotic,Castform,Kecleon,Shuppet,Banette,Duskull,Dusclops,Tropius,Chimecho,Absol,Wynaut,Snorunt,Glalie,Spheal,Sealeo,Walrein,Clamperl,Huntail,Gorebyss,Relicanth,Luvdisc,Bagon,Shelgon,Salamence,Beldum,Metang,Metagross,Regirock,Regice,Registeel,Latias,Latios,Kyogre,Groudon,Rayquaza,Jirachi,Deoxys,Turtwig,Grotle,Torterra,Chimchar,Monferno,Infernape,Piplup,Prinplup,Empoleon,Starly,Staravia,Staraptor,Bidoof,Bibarel,Kricketot,Kricketune,Shinx,Luxio,Luxray,Budew,Roserade,Cranidos,Rampardos,Shieldon,Bastiodon,Burmy,Wormadam,Mothim,Combee,Vespiquen,Pachirisu,Buizel,Floatzel,Cherubi,Cherrim,Shellos,Gastrodon,Ambipom,Drifloon,Drifblim,Buneary,Lopunny,Mismagius,Honchkrow,Glameow,Purugly,Chingling,Stunky,Skuntank,Bronzor,Bronzong,Bonsly,Mime Jr.,Happiny,Chatot,Spiritomb,Gible,Gabite,Garchomp,Munchlax,Riolu,Lucario,Hippopotas,Hippowdon,Skorupi,Drapion,Croagunk,Toxicroak,Carnivine,Finneon,Lumineon,Mantyke,Snover,Abomasnow,Weavile,Magnezone,Lickilicky,Rhyperior,Tangrowth,Electivire,Magmortar,Togekiss,Yanmega,Leafeon,Glaceon,Gliscor,Mamoswine,Porygon-Z,Gallade,Probopass,Dusknoir,Froslass,Rotom,Uxie,Mesprit,Azelf,Dialga,Palkia,Heatran,Regigigas,Giratina,Cresselia,Phione,Manaphy,Darkrai,Shaymin,Arceus,Victini,Snivy,Servine,Serperior,Tepig,Pignite,Emboar,Oshawott,Dewott,Samurott,Patrat,Watchog,Lillipup,Herdier,Stoutland,Purrloin,Liepard,Pansage,Simisage,Pansear,Simisear,Panpour,Simipour,Munna,Musharna,Pidove,Tranquill,Unfezant,Blitzle,Zebstrika,Roggenrola,Boldore,Gigalith,Woobat,Swoobat,Drilbur,Excadrill,Audino,Timburr,Gurdurr,Conkeldurr,Tympole,Palpitoad,Seismitoad,Throh,Sawk,Sewaddle,Swadloon,Leavanny,Venipede,Whirlipede,Scolipede,Cottonee,Whimsicott,Petilil,Lilligant,Basculin,Sandile,Krokorok,Krookodile,Darumaka,Darmanitan,Maractus,Dwebble,Crustle,Scraggy,Scrafty,Sigilyph,Yamask,Cofagrigus,Tirtouga,Carracosta,Archen,Archeops,Trubbish,Garbodor,Zorua,Zoroark,Minccino,Cinccino,Gothita,Gothorita,Gothitelle,Solosis,Duosion,Reuniclus,Ducklett,Swanna,Vanillite,Vanillish,Vanilluxe,Deerling,Sawsbuck,Emolga,Karrablast,Escavalier,Foongus,Amoonguss,Frillish,Jellicent,Alomomola,Joltik,Galvantula,Ferroseed,Ferrothorn,Klang,Klinklang,Tynamo,Eelektrik,Eelektross,Elgyem,Beheeyem,Litwick,Lanturn,Chandelure,Axew,Fraxure,Haxorus,Cubchoo,Beartic,Cryogonal,Shelmet,Accelgor,Stunfisk,Mienfoo,Mienshao,Druddigon,Golett,Golurk,Pawniard,Bisharp,Bouffalant,Rufflet,Braviary,Vullaby,Mandibuzz,Heatmor,Durant,Deino,Zweilous,Hydreigon,Larvesta,Volcarona,Cobalion,Terrakion,Virizion,Tornadus,Thundurus,Reshiram,Zekrom,Landorus,Kyurem,Keldeo,Meloetta,Genesect,Chespin,Quilladin,Chesnaught,Fennekin,Braixen,Delphox,Froakie,Frogadier,Greninja,Bunnelby,Diggersby,Fletchling,Fletchinder,Talonflame,Scatterbug,Spewpa,Vivillon,Litleo,Pyroar,Flabebe,Floette,Florges,Skiddo,Gogoat,Pancham,Pangoro,Furfrou,Espurr,Meowstic,Honedge,Doublade,Aegislash,Spritzee,Aromatisse,Swirlix,Slurpuff,Inkay,Malamar,Binacle,Barbaracle,Skrelp,Dragalge,Clauncher,Clawitzer,Helioptile,Heliolisk,Tyrunt,Tyrantrum,Amaura,Aurorus,Sylveon,Hawlucha,Dedenne,Carbink,Goomy,Sliggoo,Goodra,Klefki,Phantump,Trevenant,Pumpkaboo,Gourgeist,Bergmite,Avalugg,Noibat,Noivern,Xerneas,Yveltal,Zygarde,Diancie,Hoopa,Volcanion,Rowlet,Dartrix,Decidueye,Litten,Torracat,Incineroar,Popplio,Brionne,Primarina,Pikipek,Trumbeak,Toucannon,Yungoos,Gumshoos,Grubbin,Charjabug,Vikavolt,Crabrawler,Crabominable,Oricorio,Cutiefly,Ribombee,Rockruff,Lycanroc,Wishiwashi,Mareanie,Toxapex,Mudbray,Mudsdale,Dewpider,Araquanid,Fomantis,Lurantis,Morelull,Shiinotic,Salandit,Salazzle,Stufful,Bewear,Bounsweet,Steenee,Tsareena,Comfey,Oranguru,Passimian,Wimpod,Golisopod,Sandygast,Palossand,Pyukumuku,Type: Null,Silvally,Minior,Komala,Turtonator,Togedemaru,Mimikyu,Bruxish,Drampa,Dhelmise,Jangmo-o,Hakamo-o,Kommo-o,Tapu Koko,Tapu Lele,Tapu Bulu,Tapu Fini,Cosmog,Cosmoem,Solgaleo,Lunala,Nihilego,Buzzwole,Pheromosa,Xurkitree,Celesteela,Kartana,Guzzlord,Necrozma,Magearna,Marshadow,Poipole,Naganadel,Stakataka,Blacephalon,Zeraora,Meltan,Melmetal,Alolan Rattata,Alolan Raticate,Alolan Raichu,Alolan Sandshrew,Alolan Sandslash,Alolan Vulpix,Alolan Ninetales,Alolan Diglett,Alolan Dugtrio,Alolan Meowth,Alolan Persian,Alolan Geodude,Alolan Graveler,Alolan Golem,Alolan Grimer,Alolan Muk,Alolan Exeggutor,Alolan Marowak"
    setkeydelay, -1
    if (iscatch = true)
        send % prefix "catch "
    else
        send % "waiting "
    input, selectedpkmn, i v t20, {enter}, % pokedex
    if (iscatch = true) {
        if (errorlevel = "match")
            send, `r
        if (errorlevel contains "match,endkey:enter") {
            gosub, msgcount
            gosub, pkmncount
        }
        if (errorlevel = "timeout")
            if winactive("Discord")
                send, {ctrl down}a{ctrl up}{backspace}
    } else {
        if (errorlevel contains "match,endkey:\,timeout")
            if winactive("Discord")
                send, {ctrl down}a{ctrl up}{backspace}
    }
    return selectedpkmn
}

send(prefix,message,keydelay:=40) {
    setkeydelay % keydelay
    sleepwin("Discord")
    send % prefix message "`r"
    gosub, msgcount
    return
}

shopbuy(index,shopbuy) {
    stringlower, shoplower, shopbuy
    selected := strsplit(shoplower," "," ")
    if (index = 1)
        return "buy nature " selected[1]
    if (index = 2)
        if (selected[1] = "friendship")
            return "buy " selected[1]
        else
            return "buy stone " selected[1]
    if (index = 3 || index = 4)
        return "buy " shoplower
    if (shopbuy > 0 and shopbuy < 5)
        return "buy " shopbuy
    if (shopbuy = 5)
        return "buy mega"
    if (shopbuy > 5)
        out := "buy mega "
    if (shopbuy = 6)
        return out .= "x"
    else
        return out .= "y"
}

shopindex() {
    wingettitle, window
    index := strsplit(window," ")
    if (index[3] = "Natures")
        return 1
    if (index[3] = "Evolution")
        return 2
    if (index[3] = "Held")
        return 3
    if (index[3] = "Forms")
        return 4
    if (index[3] = "Boosters")
        return 5
    return
}

shopopen(title,price) {
    gui, destroy
    gui, margin, 0, 0
    gui, color, FFFFFF
    gui, add, picture, w480 h-1, Assets\GUI\backgrounds\shop.png
    if (title = "Welcome")
        gui, add, picture, x12 y12 w136 h56, Assets\GUI\backgrounds\shopwelcome.png
    gui, font, s11 w700 q5, consolas
    gui, add, text, x195 y24 w53 h25 center backgroundtrans gshopnature, Nature
    gui, add, text, x248 y24 w53 h25 center backgroundtrans gshopevo, Evo
    gui, add, text, x301 y24 w53 h25 center backgroundtrans gshopitems, Items
    gui, add, text, x354 y24 w53 h25 center backgroundtrans gshopforms, Forms
    gui, add, text, x407 y24 w53 h25 center backgroundtrans gshopboost, Boost
    if (title != "Welcome") {
        gui, font, s35
        gui, add, text, x12 y12 w136 h56 center gshopbuy, BUY
        gui, font, s12
        if (title != "Boosters")
            gui, add, text, x115 y40 w35 h18 center, % price "c"
        if (title = "Natures")
            gui, add, listbox, x180 y46 w280 r8 border vshopbuy, Adamant (+a -sa)|Bashful (+sa -sa)|Bold    (+d -a)|Brave   (+a -s)|Calm    (+sd -a)|Careful (+sd -sa)|Docile  (+d -d)|Gentile (+sd -d)|Hardy   (+a -a)|Hasty   (+s -d)|Impish  (+d -sa)|Jolly   (+s -sa)|Lax     (+d -sd)|Lonely  (+a -d)|Mild    (+sa -d)|Modest  (+sa -a)|Naive   (+s -sd)|Naughty (+a -sd)|Quiet   (+sa -s)|Quirky  (+sd -sd)|Rash    (+sa -sd)|Relaxed (+d -s)|Sassy   (+sd -s)|Serious (+s -s)|Timid   (+s -a)
        if (title = "Evolution")
            gui, add, listbox, x180 y46 w280 r8 border vshopbuy, Friendship Bracelet|Dawn Stone|Dusk Stone|Fire Stone|Ice Stone|Leaf Stone|Moon Stone|Shiny Stone|Sun Stone|Thunder Stone|Water Stone
        if (title = "Held Items")
            gui, add, listbox, x180 y46 w280 r8 border vshopbuy, Everstone|XP Blocker|Deep Sea Scale|Deep Sea Tooth|Dragon Scale|Dubious Disc|Electrizer|Kings Rock|Magmarizer|Metal Coat|Prism Scale|Protector|Reaper Cloth|Sachet|Up-Grade|Whipped Dream|Oval Stone|Razor Claw|Razor Fang
        if (title = "Forms")
            gui, add, listbox, x180 y46 w280 r8 border vshopbuy, Deoxys Normal Form|Deoxys Attack Form|Deoxys Defense Form|Deoxys Speed Form
        if (title = "Boosters")
            gui, add, listbox, x180 y46 w280 r8 border altsubmit vshopbuy, 2x XP Boost      (30m 20c)|2x XP Boost      (1h 40c)|2x XP Boost      (2h 70c)|1.5x XP Boost    (4h 90c)|Mega Evolution   (1,000c)|Mega Evolution X (1,000c)|Mega Evolution Y (1,000c)
    }
    gui, show, w480 h224, % "Shop - " title
    return
}

showgui(w,h,title,speeed:=0) {
    gui, show, center y0 w%w% h%h%, %title%
    wingetactivestats, title, gw, gh, gx, gy
    mousemove, % gw*0.5, % gh*0.5, % speed
    return
}

sleepwin(window,timeout:=20) {
    winactivate, % window
    winwaitactive, % window,, % timeout
    return
}
