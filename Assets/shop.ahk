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
    