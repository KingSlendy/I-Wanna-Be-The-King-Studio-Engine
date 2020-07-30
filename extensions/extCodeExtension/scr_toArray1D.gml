///scr_toArray1D(array2d)
#define to_array_1d

var toArrayOD;
var nowArrayTD = argument[0];
var rowLen = array_height_2d(nowArrayTD);
var colLen = array_length_2d(nowArrayTD, 0);

for (var i = 0; i < rowLen; i++) {
    for (var j = 0; j < colLen; j++) {
        toArrayOD[(colLen * i) + j] = nowArrayTD[i, j];
    }
}

return toArrayOD;
