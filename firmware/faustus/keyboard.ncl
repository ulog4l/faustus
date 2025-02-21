let { ColToRowKey, .. } = import "fak/keyboard.ncl" in
let { CH552T, .. } = import "fak/mcus.ncl" in
let { zilpzalp_usb_pid, .. } = import "lib/example.ncl" in

{
  mcu = CH552T,
  matrix = {
    cols = [10, 12, 13, 35, 34, 31],
    rows = [33, 32, 11, 15, 16, 17]
  },
  usb_dev = {
    vendor_id = 43962, # 0xABBA
    product_id = 3,
    product_ver = 256, # 0x0100
  },
  keys =
    let M = ColToRowKey in
    [
             M 0 0, M 1 0, M 2 0, M 3 0,    M 3 3, M 2 3, M 1 3, M 0 3,
      M 0 1, M 1 1, M 2 1, M 3 1, M 4 1,    M 4 4, M 3 4, M 2 4, M 1 4, M 0 4,
      M 0 2, M 1 2, M 2 2, M 3 2, M 4 0,    M 4 3, M 3 5, M 2 5, M 1 5, M 0 5,
                           M 4 2, M 5 2,    M 5 5, M 4 5,
    ]
}