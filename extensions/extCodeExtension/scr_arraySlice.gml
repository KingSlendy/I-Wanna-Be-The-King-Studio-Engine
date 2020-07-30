///scr_arraySlice(array, start, count)
#define array_slice

var nowSlice;
var fullArray = argument[0];

for (var i = 0; i < argument[2]; i++) {
    nowSlice[i] = fullArray[argument[1] + i];
}

return nowSlice;
