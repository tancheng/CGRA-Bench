
-----------------------------------------------------------------------------
         br   add  sub  and  mul  cmp  or   xor  shl  lshr phi  ld   str  all
-----------------------------------------------------------------------------
fir      2    4    0    0    1    1    0    0    0    0    2    2    1    13
latnrm   4    5    1    0    4    1    1    0    1    0    4    3    1    25
fft      1    10   3    0    4    1    0    0    0    0    1    4    4    28
susan    5    7    1    0    2    1    0    0    0    0    5    3    1    25
bfish    3    8    0    4    0    1    3    3    0    3    3    5    1*   34
-----------------------------------------------------------------------------

* indicates manually added live-out

---------------------------------------------------------
Opcode         |  fir  | latnrm |  fft  | susan | bfish |
-------------- ------------------------------------------
br             |   2   |   4    |   1   |   5   |   3   |
add            |   1   |   1    |   3   |   4   |   3   |
sub            |   0   |   0    |   0   |   1   |   0   |
and            |   0   |   0    |   0   |   0   |   4   |
zext           |   0   |   0    |   0   |   3   |   0   |
sext           |   0   |   0    |   0   |   1   |   0   |
or             |   0   |   1    |   0   |   0   |   3   |
xor            |   0   |   0    |   0   |   0   |   3   |
shl            |   0   |   1    |   0   |   0   |   0   |
lshr           |   0   |   0    |   0   |   0   |   3   |
mul            |   0   |   0    |   0   |   2   |   0   |
fadd           |   1   |   1    |   3   |   0   |   0   |
fsub           |   0   |   1    |   3   |   0   |   0   |
fmul           |   1   |   4    |   4   |   0   |   0   |
getelementptr  |   2   |   3    |   4   |   3   |   5   |
icmp           |   1   |   1    |   1   |   1   |   1   |
load           |   2   |   3    |   4   |   3   |   5   |
store          |   0   |   1    |   4   |   0   |   0   |
phi            |   2   |   4    |   1   |   5   |   3   |
---------------------------------------------------------
cycles         |   2   |   2    |   1   |   5   |   2   |
---------------------------------------------------------
dynamic mapping|  yes  |  yes   |  yes  |  yes  |  yes  |
 max bypass: 4 |  4x4  |  4x4   |  4x4  |  4x4  |  4x4  |
---------------------------------------------------------
static mapping |  yes  |  ---   |  ---  |  ---  |  ---  |
 max bypass: 2 |  8x8  |  ---   |  ---  |  ---  |  ---  |
---------------------------------------------------------
static mapping |  yes  |  yes   |  yes  |  yes  |  yes  |
 max bypass: 3 |  8x8  |  8x8   |  8x8  |  8x8  |  8x8  |
---------------------------------------------------------

[fir]: 2 cycles
add : 1
br : 2
fadd : 1
fmul : 1
getelementptr : 2
icmp : 1
load : 2
phi : 2

[latnrm]: 4 cycles
add : 1
br : 4
fadd : 1
fmul : 4
fsub : 1
getelementptr : 3
icmp : 1
load : 3
or : 1
phi : 4
shl : 1
store : 1

[fft]: 1 cycle
add : 3
br : 1
fadd : 3
fmul : 4
fsub : 3
getelementptr : 4
icmp : 1
load : 4
phi : 1
store : 4

[susan]: 5 cycles
add : 4
br : 5
getelementptr : 3
icmp : 1
load : 3
mul : 2
phi : 5
sext : 1
sub : 1
zext : 3

[blowfish]: 2 cycles
add : 3
and : 4
br : 3
getelementptr : 5
icmp : 1
load : 5
lshr : 3
or : 3
phi : 3
xor : 3

