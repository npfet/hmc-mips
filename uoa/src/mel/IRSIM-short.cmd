| topmipstest.cmd

stepsize 1

vector interrupts interrupts[7] interrupts[6] interrupts[5] interrupts[4] interrupts[3] interrupts[2] interrupts[1] interrupts[0]

vector memadr memadr[31] memadr[30] memadr[29] memadr[28] memadr[27] memadr[26] memadr[25] memadr[24] memadr[23] memadr[22] memadr[21] memadr[20] memadr[19] memadr[18] memadr[17] memadr[16] memadr[15] memadr[14] memadr[13] memadr[12] memadr[11] memadr[10] memadr[9] memadr[8] memadr[7] memadr[6] memadr[5] memadr[4] memadr[3] memadr[2] memadr[1] memadr[0]

vector memdata memdata[31] memdata[30] memdata[29] memdata[28] memdata[27] memdata[26] memdata[25] memdata[24] memdata[23] memdata[22] memdata[21] memdata[20] memdata[19] memdata[18] memdata[17] memdata[16] memdata[15] memdata[14] memdata[13] memdata[12] memdata[11] memdata[10] memdata[9] memdata[8] memdata[7] memdata[6] memdata[5] memdata[4] memdata[3] memdata[2] memdata[1] memdata[0]

vector membyteen membyteen[3] membyteen[2] membyteen[1] membyteen[0]

u ph1
u ph2
u reset
set interrupts uuuuuuuu
assert memadr uuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuu
assert memdata uuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuu
assert membyteen uuuu
assert memrwb u
assert memen u
u memdone
s 1

u ph1
u ph2
u reset
set interrupts uuuuuuuu
assert memadr 000uuuuuuuuuuuuuuuuuuuuuuuuuuu00
assert memdata uuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuu
assert membyteen uuuu
assert memrwb u
assert memen u
h memdone
s 1

h ph1
u ph2
h reset
set interrupts 00000000
assert memadr 000uuuuuuuuuuuuuuuuuuuuuuuuuuu00
assert memdata uuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuu
assert membyteen uuuu
assert memrwb u
assert memen u
h memdone
s 1

l ph1
u ph2
h reset
set interrupts 00000000
assert memadr 000uuuuuuuuuuuuuuuuuuuuuuuuuuu00
assert memdata uuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuu
assert membyteen uuuu
assert memrwb u
assert memen u
h memdone
s 1

l ph1
h ph2
h reset
set interrupts 00000000
assert memadr 000uuuuuuuuuuuuuuuuuuuuuuuuuuu00
assert memdata uuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuu
assert membyteen uuuu
assert memrwb u
assert memen u
h memdone
s 1

l ph1
l ph2
h reset
set interrupts 00000000
assert memadr 000uuuuuuuuuuuuuuuuuuuuuuuuuuu00
assert memdata uuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuu
assert membyteen uuuu
assert memrwb u
assert memen u
h memdone
s 1

h ph1
l ph2
h reset
set interrupts 00000000
assert memadr 000uuuuuuuuuuuuuuuuuuuuuuuuuuu00
assert memdata uuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuu
assert membyteen uuuu
assert memrwb u
assert memen u
h memdone
s 1

h ph1
l ph2
h reset
set interrupts 00000000
assert memadr 000uuuuuuuuuuuuuuuuuuuuuuuuuuu00
assert memdata uuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuu
assert membyteen uuuu
assert memrwb u
assert memen 0
h memdone
s 1

h ph1
l ph2
h reset
set interrupts 00000000
assert memadr 00000000000000000000000000000000
assert memdata uuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuu
assert membyteen 0001
assert memrwb 1
assert memen 0
h memdone
s 1

h ph1
l ph2
h reset
set interrupts 00000000
assert memadr 00000000000000000000000000000000
assert memdata 00100000000000100000000000000000
assert membyteen 0001
assert memrwb 1
assert memen 0
h memdone
s 1

l ph1
l ph2
h reset
set interrupts 00000000
assert memadr 00000000000000000000000000000000
assert memdata 00100000000000100000000000000000
assert membyteen 0001
assert memrwb 1
assert memen 0
h memdone
s 1

l ph1
h ph2
h reset
set interrupts 00000000
assert memadr 00000000000000000000000000000000
assert memdata 00100000000000100000000000000000
assert membyteen 0001
assert memrwb 1
assert memen 0
h memdone
s 1

l ph1
l ph2
h reset
set interrupts 00000000
assert memadr 00000000000000000000000000000000
assert memdata 00100000000000100000000000000000
assert membyteen 0001
assert memrwb 1
assert memen 0
h memdone
s 1

h ph1
l ph2
h reset
set interrupts 00000000
assert memadr 00000000000000000000000000000000
assert memdata 00100000000000100000000000000000
assert membyteen 0001
assert memrwb 1
assert memen 0
h memdone
s 1

l ph1
l ph2
h reset
set interrupts 00000000
assert memadr 00000000000000000000000000000000
assert memdata 00100000000000100000000000000000
assert membyteen 0001
assert memrwb 1
assert memen 0
h memdone
s 1

l ph1
h ph2
h reset
set interrupts 00000000
assert memadr 00000000000000000000000000000000
assert memdata 00100000000000100000000000000000
assert membyteen 0001
assert memrwb 1
assert memen 0
h memdone
s 1

l ph1
l ph2
h reset
set interrupts 00000000
assert memadr 00000000000000000000000000000000
assert memdata 00100000000000100000000000000000
assert membyteen 0001
assert memrwb 1
assert memen 0
h memdone
s 1

h ph1
l ph2
l reset
set interrupts 00000000
assert memadr 00000000000000000000000000000000
assert memdata 00100000000000100000000000000000
assert membyteen 0001
assert memrwb 1
assert memen 0
h memdone
s 1

l ph1
l ph2
l reset
set interrupts 00000000
assert memadr 00000000000000000000000000000000
assert memdata 00100000000000100000000000000000
assert membyteen 0001
assert memrwb 1
assert memen 0
h memdone
s 1

l ph1
h ph2
l reset
set interrupts 00000000
assert memadr 00000000000000000000000000000000
assert memdata 00100000000000100000000000000000
assert membyteen 0001
assert memrwb 1
assert memen 0
h memdone
s 1

l ph1
l ph2
l reset
set interrupts 00000000
assert memadr 00000000000000000000000000000000
assert memdata 00100000000000100000000000000000
assert membyteen 0001
assert memrwb 1
assert memen 0
h memdone
s 1

h ph1
l ph2
l reset
set interrupts 00000000
assert memadr 00000000000000000000000000000000
assert memdata 00100000000000100000000000000000
assert membyteen 0001
assert memrwb 1
assert memen 0
h memdone
s 1

l ph1
l ph2
l reset
set interrupts 00000000
assert memadr 00000000000000000000000000000000
assert memdata 00100000000000100000000000000000
assert membyteen 0001
assert memrwb 1
assert memen 0
h memdone
s 1

l ph1
h ph2
l reset
set interrupts 00000000
assert memadr 00000000000000000000000000000000
assert memdata 00100000000000100000000000000000
assert membyteen 0001
assert memrwb 1
assert memen 0
h memdone
s 1

l ph1
l ph2
l reset
set interrupts 00000000
assert memadr 00000000000000000000000000000000
assert memdata 00100000000000100000000000000000
assert membyteen 0001
assert memrwb 1
assert memen 0
h memdone
s 1

h ph1
l ph2
l reset
set interrupts 00000000
assert memadr 00000000000000000000000000000000
assert memdata 00100000000000100000000000000000
assert membyteen 0001
assert memrwb 1
assert memen 0
h memdone
s 1

h ph1
l ph2
l reset
set interrupts 00000000
assert memadr 00000000000000000000000000000000
assert memdata 00100000000000100000000000000000
assert membyteen 0001
assert memrwb 1
assert memen 1
h memdone
s 1

h ph1
l ph2
l reset
set interrupts 00000000
assert memadr 00011111110000000000000000000000
assert memdata 00100000000000100000000000000000
assert membyteen 0001
assert memrwb 1
assert memen 1
h memdone
s 1

l ph1
l ph2
l reset
set interrupts 00000000
assert memadr 00011111110000000000000000000000
assert memdata 00100000000000100000000000000000
assert membyteen 0001
assert memrwb 1
assert memen 1
h memdone
s 1

l ph1
h ph2
l reset
set interrupts 00000000
assert memadr 00011111110000000000000000000000
assert memdata 00100000000000100000000000000000
assert membyteen 0001
assert memrwb 1
assert memen 1
h memdone
s 1

l ph1
l ph2
l reset
set interrupts 00000000
assert memadr 00011111110000000000000000000000
assert memdata 00100000000000100000000000000000
assert membyteen 0001
assert memrwb 1
assert memen 1
h memdone
s 1

h ph1
l ph2
l reset
set interrupts 00000000
assert memadr 00011111110000000000000000000000
assert memdata 00100000000000100000000000000000
assert membyteen 0001
assert memrwb 1
assert memen 1
h memdone
s 1

h ph1
l ph2
l reset
set interrupts 00000000
assert memadr 00011111110000000000000000000000
assert memdata 00100000000000100000000000000000
assert membyteen 0001
assert memrwb 1
assert memen 0
h memdone
s 1

h ph1
l ph2
l reset
set interrupts 00000000
assert memadr 00000000000000000000000000000000
assert memdata 00100000000000100000000000000000
assert membyteen 0001
assert memrwb 1
assert memen 0
h memdone
s 1

l ph1
l ph2
l reset
set interrupts 00000000
assert memadr 00000000000000000000000000000000
assert memdata 00100000000000100000000000000000
assert membyteen 0001
assert memrwb 1
assert memen 0
h memdone
s 1

l ph1
h ph2
l reset
set interrupts 00000000
assert memadr 00000000000000000000000000000000
assert memdata 00100000000000100000000000000000
assert membyteen 0001
assert memrwb 1
assert memen 0
h memdone
s 1

l ph1
l ph2
l reset
set interrupts 00000000
assert memadr 00000000000000000000000000000000
assert memdata 00100000000000100000000000000000
assert membyteen 0001
assert memrwb 1
assert memen 0
h memdone
s 1

h ph1
l ph2
l reset
set interrupts 00000000
assert memadr 00000000000000000000000000000000
assert memdata 00100000000000100000000000000000
assert membyteen 0001
assert memrwb 1
assert memen 0
h memdone
s 1

l ph1
l ph2
l reset
set interrupts 00000000
assert memadr 00000000000000000000000000000000
assert memdata 00100000000000100000000000000000
assert membyteen 0001
assert memrwb 1
assert memen 0
h memdone
s 1

l ph1
h ph2
l reset
set interrupts 00000000
assert memadr 00000000000000000000000000000000
assert memdata 00100000000000100000000000000000
assert membyteen 0001
assert memrwb 1
assert memen 0
h memdone
s 1

l ph1
l ph2
l reset
set interrupts 00000000
assert memadr 00000000000000000000000000000000
assert memdata 00100000000000100000000000000000
assert membyteen 0001
assert memrwb 1
assert memen 0
h memdone
s 1

h ph1
l ph2
l reset
set interrupts 00000000
assert memadr 00000000000000000000000000000000
assert memdata 00100000000000100000000000000000
assert membyteen 0001
assert memrwb 1
assert memen 0
h memdone
s 1

h ph1
l ph2
l reset
set interrupts 00000000
assert memadr 00000000000000000000000000000000
assert memdata 00100000000000100000000000000000
assert membyteen 0001
assert memrwb 1
assert memen 1
h memdone
s 1

h ph1
l ph2
l reset
set interrupts 00000000
assert memadr 00011111110000000000000000000100
assert memdata 00100000000000100000000000000000
assert membyteen 0001
assert memrwb 1
assert memen 1
h memdone
s 1

h ph1
l ph2
l reset
set interrupts 00000000
assert memadr 00011111110000000000000000000100
assert memdata 00100000000000110000000000000001
assert membyteen 0001
assert memrwb 1
assert memen 1
h memdone
s 1

l ph1
l ph2
l reset
set interrupts 00000000
assert memadr 00011111110000000000000000000100
assert memdata 00100000000000110000000000000001
assert membyteen 0001
assert memrwb 1
assert memen 1
h memdone
s 1

l ph1
h ph2
l reset
set interrupts 00000000
assert memadr 00011111110000000000000000000100
assert memdata 00100000000000110000000000000001
assert membyteen 0001
assert memrwb 1
assert memen 1
h memdone
s 1

l ph1
l ph2
l reset
set interrupts 00000000
assert memadr 00011111110000000000000000000100
assert memdata 00100000000000110000000000000001
assert membyteen 0001
assert memrwb 1
assert memen 1
h memdone
s 1

h ph1
l ph2
l reset
set interrupts 00000000
assert memadr 00011111110000000000000000000100
assert memdata 00100000000000110000000000000001
assert membyteen 0001
assert memrwb 1
assert memen 1
h memdone
s 1

h ph1
l ph2
l reset
set interrupts 00000000
assert memadr 00011111110000000000000000000100
assert memdata 00100000000000110000000000000001
assert membyteen 0001
assert memrwb 1
assert memen 0
h memdone
s 1

h ph1
l ph2
l reset
set interrupts 00000000
assert memadr 00000000000000000000000000000000
assert memdata 00100000000000110000000000000001
assert membyteen 0001
assert memrwb 1
assert memen 0
h memdone
s 1

h ph1
l ph2
l reset
set interrupts 00000000
assert memadr 00000000000000000000000000000000
assert memdata 00100000000000100000000000000000
assert membyteen 0001
assert memrwb 1
assert memen 0
h memdone
s 1

l ph1
l ph2
l reset
set interrupts 00000000
assert memadr 00000000000000000000000000000000
assert memdata 00100000000000100000000000000000
assert membyteen 0001
assert memrwb 1
assert memen 0
h memdone
s 1

l ph1
h ph2
l reset
set interrupts 00000000
assert memadr 00000000000000000000000000000000
assert memdata 00100000000000100000000000000000
assert membyteen 0001
assert memrwb 1
assert memen 0
h memdone
s 1

l ph1
l ph2
l reset
set interrupts 00000000
assert memadr 00000000000000000000000000000000
assert memdata 00100000000000100000000000000000
assert membyteen 0001
assert memrwb 1
assert memen 0
h memdone
s 1

h ph1
l ph2
l reset
set interrupts 00000000
assert memadr 00000000000000000000000000000000
assert memdata 00100000000000100000000000000000
assert membyteen 0001
assert memrwb 1
assert memen 0
h memdone
s 1

l ph1
l ph2
l reset
set interrupts 00000000
assert memadr 00000000000000000000000000000000
assert memdata 00100000000000100000000000000000
assert membyteen 0001
assert memrwb 1
assert memen 0
h memdone
s 1

l ph1
h ph2
l reset
set interrupts 00000000
assert memadr 00000000000000000000000000000000
assert memdata 00100000000000100000000000000000
assert membyteen 0001
assert memrwb 1
assert memen 0
h memdone
s 1

l ph1
l ph2
l reset
set interrupts 00000000
assert memadr 00000000000000000000000000000000
assert memdata 00100000000000100000000000000000
assert membyteen 0001
assert memrwb 1
assert memen 0
h memdone
s 1

h ph1
l ph2
l reset
set interrupts 00000000
assert memadr 00000000000000000000000000000000
assert memdata 00100000000000100000000000000000
assert membyteen 0001
assert memrwb 1
assert memen 0
h memdone
s 1

h ph1
l ph2
l reset
set interrupts 00000000
assert memadr 00000000000000000000000000000000
assert memdata 00100000000000100000000000000000
assert membyteen 0001
assert memrwb 1
assert memen 1
h memdone
s 1

h ph1
l ph2
l reset
set interrupts 00000000
assert memadr 00011111110000000000000000001000
assert memdata 00100000000000100000000000000000
assert membyteen 0001
assert memrwb 1
assert memen 1
h memdone
s 1

h ph1
l ph2
l reset
set interrupts 00000000
assert memadr 00011111110000000000000000001000
assert memdata 00100000000001010000000000010101
assert membyteen 0001
assert memrwb 1
assert memen 1
h memdone
s 1

l ph1
l ph2
l reset
set interrupts 00000000
assert memadr 00011111110000000000000000001000
assert memdata 00100000000001010000000000010101
assert membyteen 0001
assert memrwb 1
assert memen 1
h memdone
s 1

l ph1
h ph2
l reset
set interrupts 00000000
assert memadr 00011111110000000000000000001000
assert memdata 00100000000001010000000000010101
assert membyteen 0001
assert memrwb 1
assert memen 1
h memdone
s 1

l ph1
l ph2
l reset
set interrupts 00000000
assert memadr 00011111110000000000000000001000
assert memdata 00100000000001010000000000010101
assert membyteen 0001
assert memrwb 1
assert memen 1
h memdone
s 1

h ph1
l ph2
l reset
set interrupts 00000000
assert memadr 00011111110000000000000000001000
assert memdata 00100000000001010000000000010101
assert membyteen 0001
assert memrwb 1
assert memen 1
h memdone
s 1

h ph1
l ph2
l reset
set interrupts 00000000
assert memadr 00011111110000000000000000001000
assert memdata 00100000000001010000000000010101
assert membyteen 0001
assert memrwb 1
assert memen 0
h memdone
s 1

h ph1
l ph2
l reset
set interrupts 00000000
assert memadr 00000000000000000000000000000000
assert memdata 00100000000001010000000000010101
assert membyteen 0001
assert memrwb 1
assert memen 0
h memdone
s 1

h ph1
l ph2
l reset
set interrupts 00000000
assert memadr 00000000000000000000000000000000
assert memdata 00100000000000100000000000000000
assert membyteen 0001
assert memrwb 1
assert memen 0
h memdone
s 1

l ph1
l ph2
l reset
set interrupts 00000000
assert memadr 00000000000000000000000000000000
assert memdata 00100000000000100000000000000000
assert membyteen 0001
assert memrwb 1
assert memen 0
h memdone
s 1

l ph1
h ph2
l reset
set interrupts 00000000
assert memadr 00000000000000000000000000000000
assert memdata 00100000000000100000000000000000
assert membyteen 0001
assert memrwb 1
assert memen 0
h memdone
s 1

l ph1
l ph2
l reset
set interrupts 00000000
assert memadr 00000000000000000000000000000000
assert memdata 00100000000000100000000000000000
assert membyteen 0001
assert memrwb 1
assert memen 0
h memdone
s 1

h ph1
l ph2
l reset
set interrupts 00000000
assert memadr 00000000000000000000000000000000
assert memdata 00100000000000100000000000000000
assert membyteen 0001
assert memrwb 1
assert memen 0
h memdone
s 1

l ph1
l ph2
l reset
set interrupts 00000000
assert memadr 00000000000000000000000000000000
assert memdata 00100000000000100000000000000000
assert membyteen 0001
assert memrwb 1
assert memen 0
h memdone
s 1

l ph1
h ph2
l reset
set interrupts 00000000
assert memadr 00000000000000000000000000000000
assert memdata 00100000000000100000000000000000
assert membyteen 0001
assert memrwb 1
assert memen 0
h memdone
s 1

l ph1
l ph2
l reset
set interrupts 00000000
assert memadr 00000000000000000000000000000000
assert memdata 00100000000000100000000000000000
assert membyteen 0001
assert memrwb 1
assert memen 0
h memdone
s 1

h ph1
l ph2
l reset
set interrupts 00000000
assert memadr 00000000000000000000000000000000
assert memdata 00100000000000100000000000000000
assert membyteen 0001
assert memrwb 1
assert memen 0
h memdone
s 1

h ph1
l ph2
l reset
set interrupts 00000000
assert memadr 00000000000000000000000000000000
assert memdata 00100000000000100000000000000000
assert membyteen 0001
assert memrwb 1
assert memen 1
h memdone
s 1

h ph1
l ph2
l reset
set interrupts 00000000
assert memadr 00011111110000000000000000001100
assert memdata 00100000000000100000000000000000
assert membyteen 0001
assert memrwb 1
assert memen 1
h memdone
s 1

h ph1
l ph2
l reset
set interrupts 00000000
assert memadr 00011111110000000000000000001100
assert memdata 00000000010000110010000000100000
assert membyteen 0001
assert memrwb 1
assert memen 1
h memdone
s 1

l ph1
l ph2
l reset
set interrupts 00000000
assert memadr 00011111110000000000000000001100
assert memdata 00000000010000110010000000100000
assert membyteen 0001
assert memrwb 1
assert memen 1
h memdone
s 1

l ph1
h ph2
l reset
set interrupts 00000000
assert memadr 00011111110000000000000000001100
assert memdata 00000000010000110010000000100000
assert membyteen 0001
assert memrwb 1
assert memen 1
h memdone
s 1

l ph1
l ph2
l reset
set interrupts 00000000
assert memadr 00011111110000000000000000001100
assert memdata 00000000010000110010000000100000
assert membyteen 0001
assert memrwb 1
assert memen 1
h memdone
s 1

h ph1
l ph2
l reset
set interrupts 00000000
assert memadr 00011111110000000000000000001100
assert memdata 00000000010000110010000000100000
assert membyteen 0001
assert memrwb 1
assert memen 1
h memdone
s 1

h ph1
l ph2
l reset
set interrupts 00000000
assert memadr 00011111110000000000000000001100
assert memdata 00000000010000110010000000100000
assert membyteen 0001
assert memrwb 1
assert memen 0
h memdone
s 1

h ph1
l ph2
l reset
set interrupts 00000000
assert memadr 00000000000000000000000000000000
assert memdata 00000000010000110010000000100000
assert membyteen 0001
assert memrwb 1
assert memen 0
h memdone
s 1

h ph1
l ph2
l reset
set interrupts 00000000
assert memadr 00000000000000000000000000000000
assert memdata 00100000000000100000000000000000
assert membyteen 0001
assert memrwb 1
assert memen 0
h memdone
s 1

l ph1
l ph2
l reset
set interrupts 00000000
assert memadr 00000000000000000000000000000000
assert memdata 00100000000000100000000000000000
assert membyteen 0001
assert memrwb 1
assert memen 0
h memdone
s 1

l ph1
h ph2
l reset
set interrupts 00000000
assert memadr 00000000000000000000000000000000
assert memdata 00100000000000100000000000000000
assert membyteen 0001
assert memrwb 1
assert memen 0
h memdone
s 1

l ph1
l ph2
l reset
set interrupts 00000000
assert memadr 00000000000000000000000000000000
assert memdata 00100000000000100000000000000000
assert membyteen 0001
assert memrwb 1
assert memen 0
h memdone
s 1

h ph1
l ph2
l reset
set interrupts 00000000
assert memadr 00000000000000000000000000000000
assert memdata 00100000000000100000000000000000
assert membyteen 0001
assert memrwb 1
assert memen 0
h memdone
s 1

l ph1
l ph2
l reset
set interrupts 00000000
assert memadr 00000000000000000000000000000000
assert memdata 00100000000000100000000000000000
assert membyteen 0001
assert memrwb 1
assert memen 0
h memdone
s 1

l ph1
h ph2
l reset
set interrupts 00000000
assert memadr 00000000000000000000000000000000
assert memdata 00100000000000100000000000000000
assert membyteen 0001
assert memrwb 1
assert memen 0
h memdone
s 1

l ph1
l ph2
l reset
set interrupts 00000000
assert memadr 00000000000000000000000000000000
assert memdata 00100000000000100000000000000000
assert membyteen 0001
assert memrwb 1
assert memen 0
h memdone
s 1

h ph1
l ph2
l reset
set interrupts 00000000
assert memadr 00000000000000000000000000000000
assert memdata 00100000000000100000000000000000
assert membyteen 0001
assert memrwb 1
assert memen 0
h memdone
s 1

h ph1
l ph2
l reset
set interrupts 00000000
assert memadr 00000000000000000000000000000000
assert memdata 00100000000000100000000000000000
assert membyteen 0001
assert memrwb 1
assert memen 1
h memdone
s 1

h ph1
l ph2
l reset
set interrupts 00000000
assert memadr 00011111110000000000000000010000
assert memdata 00100000000000100000000000000000
assert membyteen 0001
assert memrwb 1
assert memen 1
h memdone
s 1

h ph1
l ph2
l reset
set interrupts 00000000
assert memadr 00011111110000000000000000010000
assert memdata 00000000011000000001000000100000
assert membyteen 0001
assert memrwb 1
assert memen 1
h memdone
s 1

l ph1
l ph2
l reset
set interrupts 00000000
assert memadr 00011111110000000000000000010000
assert memdata 00000000011000000001000000100000
assert membyteen 0001
assert memrwb 1
assert memen 1
h memdone
s 1

l ph1
h ph2
l reset
set interrupts 00000000
assert memadr 00011111110000000000000000010000
assert memdata 00000000011000000001000000100000
assert membyteen 0001
assert memrwb 1
assert memen 1
h memdone
s 1

l ph1
l ph2
l reset
set interrupts 00000000
assert memadr 00011111110000000000000000010000
assert memdata 00000000011000000001000000100000
assert membyteen 0001
assert memrwb 1
assert memen 1
h memdone
s 1

h ph1
l ph2
l reset
set interrupts 00000000
assert memadr 00011111110000000000000000010000
assert memdata 00000000011000000001000000100000
assert membyteen 0001
assert memrwb 1
assert memen 1
h memdone
s 1

h ph1
l ph2
l reset
set interrupts 00000000
assert memadr 00011111110000000000000000010000
assert memdata 00000000011000000001000000100000
assert membyteen 0001
assert memrwb 1
assert memen 0
h memdone
s 1

h ph1
l ph2
l reset
set interrupts 00000000
assert memadr 00000000000000000000000000000000
assert memdata 00000000011000000001000000100000
assert membyteen 0001
assert memrwb 1
assert memen 0
h memdone
s 1

h ph1
l ph2
l reset
set interrupts 00000000
assert memadr 00000000000000000000000000000000
assert memdata 00100000000000100000000000000000
assert membyteen 0001
assert memrwb 1
assert memen 0
h memdone
s 1

l ph1
l ph2
l reset
set interrupts 00000000
assert memadr 00000000000000000000000000000000
assert memdata 00100000000000100000000000000000
assert membyteen 0001
assert memrwb 1
assert memen 0
h memdone
s 1

l ph1
h ph2
l reset
set interrupts 00000000
assert memadr 00000000000000000000000000000000
assert memdata 00100000000000100000000000000000
assert membyteen 0001
assert memrwb 1
assert memen 0
h memdone
s 1

l ph1
l ph2
l reset
set interrupts 00000000
assert memadr 00000000000000000000000000000000
assert memdata 00100000000000100000000000000000
assert membyteen 0001
assert memrwb 1
assert memen 0
h memdone
s 1

h ph1
l ph2
l reset
set interrupts 00000000
assert memadr 00000000000000000000000000000000
assert memdata 00100000000000100000000000000000
assert membyteen 0001
assert memrwb 1
assert memen 0
h memdone
s 1

l ph1
l ph2
l reset
set interrupts 00000000
assert memadr 00000000000000000000000000000000
assert memdata 00100000000000100000000000000000
assert membyteen 0001
assert memrwb 1
assert memen 0
h memdone
s 1

l ph1
h ph2
l reset
set interrupts 00000000
assert memadr 00000000000000000000000000000000
assert memdata 00100000000000100000000000000000
assert membyteen 0001
assert memrwb 1
assert memen 0
h memdone
s 1

l ph1
l ph2
l reset
set interrupts 00000000
assert memadr 00000000000000000000000000000000
assert memdata 00100000000000100000000000000000
assert membyteen 0001
assert memrwb 1
assert memen 0
h memdone
s 1

h ph1
l ph2
l reset
set interrupts 00000000
assert memadr 00000000000000000000000000000000
assert memdata 00100000000000100000000000000000
assert membyteen 0001
assert memrwb 1
assert memen 0
h memdone
s 1

h ph1
l ph2
l reset
set interrupts 00000000
assert memadr 00000000000000000000000000000000
assert memdata 00100000000000100000000000000000
assert membyteen 0001
assert memrwb 1
assert memen 1
h memdone
s 1

h ph1
l ph2
l reset
set interrupts 00000000
assert memadr 00011111110000000000000000010100
assert memdata 00100000000000100000000000000000
assert membyteen 0001
assert memrwb 1
assert memen 1
h memdone
s 1

h ph1
l ph2
l reset
set interrupts 00000000
assert memadr 00011111110000000000000000010100
assert memdata 00000000100000000001100000100000
assert membyteen 0001
assert memrwb 1
assert memen 1
h memdone
s 1

l ph1
l ph2
l reset
set interrupts 00000000
assert memadr 00011111110000000000000000010100
assert memdata 00000000100000000001100000100000
assert membyteen 0001
assert memrwb 1
assert memen 1
h memdone
s 1

l ph1
h ph2
l reset
set interrupts 00000000
assert memadr 00011111110000000000000000010100
assert memdata 00000000100000000001100000100000
assert membyteen 0001
assert memrwb 1
assert memen 1
h memdone
s 1

l ph1
l ph2
l reset
set interrupts 00000000
assert memadr 00011111110000000000000000010100
assert memdata 00000000100000000001100000100000
assert membyteen 0001
assert memrwb 1
assert memen 1
h memdone
s 1

h ph1
l ph2
l reset
set interrupts 00000000
assert memadr 00011111110000000000000000010100
assert memdata 00000000100000000001100000100000
assert membyteen 0001
assert memrwb 1
assert memen 1
h memdone
s 1

h ph1
l ph2
l reset
set interrupts 00000000
assert memadr 00011111110000000000000000010100
assert memdata 00000000100000000001100000100000
assert membyteen 0001
assert memrwb 1
assert memen 0
h memdone
s 1
