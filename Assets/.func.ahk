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
