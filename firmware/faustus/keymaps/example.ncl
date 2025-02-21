let { tap, hold, td, combo, macro, .. } = import "fak/keycode.ncl" in
let util = import "fak/util_functions.ncl" in

let kc = tap.reg.kc in
let md = hold.reg.mod in
let XXXX = tap.trans & hold.trans    in
let TTTT = tap.trans & hold.trans in
let MO = hold.reg.layer in
let TG = tap.layer.TG in
let ks = tap.reg.ks in
let me = tap.custom.media in

let shift_me =
  tap.sticky.mod.lsft
  & hold.reg.mod.lsft
  & hold.reg.behavior{} in

let alt_me =
  tap.sticky.mod.lalt
  & hold.reg.mod.lalt
  & hold.reg.behavior{} in

let ctl_me =
  tap.sticky.mod.lctl
  & hold.reg.mod.lctl
  & hold.reg.behavior{} in 

let ae = macro.make [
    macro.press md.ralt,
    macro.tap kc.Q,
    macro.release md.ralt,
] in

let oe = macro.make [
    macro.press md.ralt,
    macro.tap kc.P,
    macro.release md.ralt,
] in

let ue = macro.make [
    macro.press md.ralt,
    macro.tap kc.Y,
    macro.release md.ralt,
] in

let ss = macro.make [
    macro.press md.ralt,
    macro.tap kc.S,
    macro.release md.ralt,
] in

let alt_tab = macro.make [
    macro.press md.lalt,
    macro.tap kc.TAB,
    macro.release md.lalt,
] in

let ho = {
    W = kc.W & MO 4 & hold.reg.behavior{},
    A = kc.A & md.lsft & hold.reg.behavior{},
    R = kc.R & md.lgui & hold.reg. behavior{},
    S = kc.S & MO 1 & hold.reg.behavior{},
    T = kc.T & MO 2 & hold.reg.behavior{},
    N = kc.N & MO 3 & hold.reg.behavior{},
    Y = kc.Y & md.lgui & hold.reg.behavior{},
    X = kc.X & md.lctl & hold.reg.behavior{},
    P = kc.P & MO 3 & hold.reg.behavior{},
    SPC = kc.SPC & MO 3 & hold.reg.behavior{},
    BSPC = kc.BSPC,

} in
{
    virtual_keys = [
        combo.make 50 [1, 9], # ae
        combo.make 50 [1, 11], # oe
        combo.make 50 [6, 14], # ue
        combo.make 50 [6, 16], # ss

        combo.make 50 [11, 12], #enter
        combo.make 50 [13, 14], #lgui

        combo.make 50 [6, 7], #alt_me
        combo.make 50 [19, 20], #osm lctl
        combo.make 50 [5, 6], # '
        combo.make 50 [25, 26], # .
        combo.make 50 [0, 1], # Q
        combo.make 20 [8, 18, 17, 27], # tap.custom.fak.BOOT

        combo.make 20 [20,21], # V
        combo.make 20 [24,25] # k
    ],
    layers = [
        [ # 0 base
                      ho.W, kc.F, ho.P, kc.B, kc.J, kc.L, kc.U, ho.Y,
            shift_me, ho.R, ho.S, ho.T, kc.G, kc.M, ho.N, kc.E, kc.I, shift_me,
            ho.A, ho.X, kc.C, kc.D, kc.V, kc.K, kc.H, kc.COMM, kc.Z, kc.O, 
                                  MO 7, ho.SPC, ho.BSPC, shift_me,

            ae,
            oe,
            ue,
            ss,
            kc.ENT,
            md.lgui,
            alt_me,
            ctl_me,
            kc.QUOT,
            kc.DOT,
            kc.Q,
            tap.custom.fak.BOOT,

            kc.V,
            kc.K,
        ],
        [ # 1 num
                kc.MINS, kc.EQL, kc.LBRC, kc.RBRC, kc.EQL, kc.N7, kc.N8, kc.N9,
            ks.ASTR, ks.PLUS & hold.trans, kc.MINS, kc.SLSH, kc.BSLS, kc.SCLN, kc.N4, kc.N5, kc.N6, ks.ASTR,
            kc.EQL & hold.trans, ks.COLN, XXXX, ks.LPRN, ks.RPRN, kc.N0, kc.N1, kc.N2, kc.N3, kc.MINS,
                                        XXXX, XXXX, XXXX,kc.ENT,
            XXXX,
            XXXX,
            XXXX,
            XXXX,
            XXXX,
            XXXX,
            kc.N5,
            XXXX,
            XXXX,
            XXXX,
            XXXX,
            XXXX,

            XXXX,
            XXXX,
        ],
        [ # 2 symbol
                kc.MINS, kc.EQL, kc.LBRC, kc.RBRC, ks.TILD, ks.AMPR, ks.ASTR, kc.SCLN,
            kc.EQL, ks.TILD, ks.UNDS, kc.SLSH, kc.BSLS, ks.UNDS, ks.DLR, ks.PERC, ks.CIRC, kc.GRV,
            kc.GRV, ks.COLN, XXXX, ks.LPRN, ks.RPRN, ks.QUES, ks.EXLM, ks.AT, ks.HASH, ks.PIPE,
                                        XXXX, XXXX, XXXX,XXXX,
            XXXX,
            XXXX,
            XXXX,
            XXXX,
            XXXX,
            XXXX,
            XXXX,
            XXXX,
            XXXX,
            XXXX,
            XXXX,
            XXXX,

            XXXX,
            XXXX,
        ],
        [ # 3 nav
                kc.ESC, kc.UP, md.lalt, alt_tab, XXXX, XXXX, kc.TAB, md.lalt,
            kc.TAB, kc.LEFT, kc.DOWN, kc.RIGHT,  XXXX, XXXX, XXXX, kc.BSPC, me.VOLU, XXXX,
            XXXX, XXXX, XXXX, kc.DEL, kc.INS, XXXX, XXXX, XXXX, me.VOLD, XXXX,
                                        XXXX, XXXX, XXXX,XXXX,
            XXXX,
            XXXX,
            XXXX,
            XXXX,
            XXXX,
            XXXX,
            XXXX,
            XXXX,
            XXXX,
            XXXX,
            XXXX,
            XXXX,

            XXXX,
            XXXX,
        ],
        [ # 4 Function keys
                  XXXX, XXXX, ks.LCBR, ks.RCBR, kc.F12, kc.F7, kc.F8, kc.F9,
            XXXX, XXXX, XXXX, ks.LABK, ks.RABK, kc.F11, kc.F4, kc.F5, kc.F6, XXXX,
            XXXX, XXXX, XXXX, XXXX, XXXX, kc.F10, kc.F1, kc.F2, kc.F3, kc.F12,
                              TG 6, XXXX, XXXX,TG 6,
            XXXX,
            XXXX,
            XXXX,
            XXXX,
            XXXX,
            XXXX,
            XXXX,
            XXXX,
            XXXX,
            XXXX,
            XXXX,
            XXXX,

            XXXX,
            XXXX,
        ],
        [ # 5 numrow
                  kc.MINS, kc.EQL, kc.N0, kc.RBRC, XXXX, XXXX, XXXX, XXXX,
            shift_me, kc.N2, kc.N3, kc.N4, kc.N5, kc.N6, kc.N7, kc.N8, kc.N9, kc.N0,
            kc.N1, kc.N6, kc.N7, kc.N8, kc.N9, XXXX, XXXX, XXXX, XXXX, kc.N0,
                              XXXX, XXXX, kc.ENT,XXXX,
            XXXX,
            XXXX,
            XXXX,
            XXXX,
            XXXX,
            XXXX,
            XXXX,
            XXXX,
            XXXX,
            XXXX,
            XXXX,
            XXXX,

            XXXX,
            XXXX,
        ],
        [ # 6 gaming
                  kc.Q, kc.W, kc.E, kc.R, kc.TAB, kc.N7, kc.N8, kc.N9,
            md.lctl, kc.A, kc.S, kc.D, kc.F, kc.G, kc.N4, kc.N5, kc.N6, md.lalt,
            md.lsft, kc.Z, kc.X, kc.C, kc.V, kc.N0, kc.N1, kc.N2, kc.N3, kc.ESC,
                              TG 6, kc.SPC, kc.BSPC, kc.ENT,
            tap.none,
            tap.none,
            tap.none,
            tap.none,
            tap.none,
            tap.none,
            tap.none,
            tap.none,
            tap.none,
            tap.none,
            tap.none,
            tap.none,

            tap.none,
            tap.none,
        ],
        [ # 7 more numbers
                      kc.N7, kc.N8, kc.N9, kc.COMM, XXXX, XXXX, XXXX, XXXX,
            shift_me, kc.N4, kc.N5, kc.N6, kc.DOT, XXXX, XXXX, XXXX, XXXX, XXXX,
            md.lgui, kc.N1, kc.N2, kc.N3, kc.N0, XXXX, XXXX, XXXX, kc.SCLN, XXXX,
                              XXXX, kc.SPC, kc.BSPC, kc.ENT,
            tap.none,
            tap.none,
            tap.none,
            tap.none,
            tap.none,
            tap.none,
            tap.none,
            tap.none,
            tap.none,
            tap.none,
            tap.none,
            tap.none,

            tap.none,
            tap.none,
        ]
    ]
}