///scr_arrayShuffle(array)
#define array_shuffle

var nowShuff = argument[0];
var arrayLen = array_length_1d(nowShuff);

for (var i = 0; i < arrayLen; i++) {
    var temp = nowShuff[i];
    var rnd = irandom(arrayLen - 1);
    nowShuff[i] = nowShuff[rnd];
    nowShuff[rnd] = temp;
}

return nowShuff;
