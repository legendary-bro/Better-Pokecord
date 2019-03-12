shopmenu:
    shopopen("Welcome",false,menutrans)
    return

shopnature:
    shopopen("Natures",50,menutrans)
    return

shopevo:
    shopopen("Evolution",150,menutrans)
    return

shopitems:
    shopopen("Held Items",75,menutrans)
    return

shopforms:
    shopopen("Forms",500,menutrans)
    return

shopboost:
    shopopen("Boosters",false,menutrans)
    return

shopbuy:
    gui, submit
    send(prefix,shopbuy(shopindex(),shopbuy))
    return
