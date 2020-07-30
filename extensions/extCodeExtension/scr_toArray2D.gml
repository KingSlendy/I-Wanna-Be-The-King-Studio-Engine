///scr_toArray2D(array1d, row_length, col_length)
#define to_array_2d

var toArrayTD;
var nowArrayOD = argument[0];
var rowLen = argument[1];
var colLen = argument[2];

for (var i = 0; i < (rowLen * colLen); i++) {
    if (i < array_length_1d(nowArrayOD)) {
        toArrayTD[i div colLen, i mod colLen] = nowArrayOD[i];
    } else {
        toArrayTD[i div colLen, i mod colLen] = undefined;
    }
}

return toArrayTD;
