shopmenu:
    shopopen("Welcome",false)
    return

shopnature:
    shopopen("Natures",50)
    return

shopevo:
    shopopen("Evolution",150)
    return

shopitems:
    shopopen("Held Items",75)
    return

shopforms:
    shopopen("Forms",500)
    return

shopboost:
    shopopen("Boosters",false)
    return

shopbuy:
    gui, submit
    send(prefix,shopbuy(shopindex(),shopbuy))
    return
