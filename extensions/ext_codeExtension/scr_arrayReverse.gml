///scr_arrayReverse(array)
#define array_reverse

var array = argument[0];
var length = array_length_1d(array);
var outArray;

for (var i = 0; i < length; i++) {
    outArray[i] = array[length - 1 - i];
}

return outArray;
