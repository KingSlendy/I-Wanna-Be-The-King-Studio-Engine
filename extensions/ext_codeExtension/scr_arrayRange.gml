///scr_arrayRange(start, times)
#define array_range

var arrayRange;
var start = argument[0];

for (var i = 0; i < argument[1]; i++) {
    arrayRange[i] = start + i;
}

return arrayRange;
