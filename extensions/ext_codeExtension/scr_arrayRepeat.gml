///scr_arrayRepeat(value, times)
#define array_repeat

var arrayRepeat;

for (var i = 0; i < argument[1]; i++) {
    arrayRepeat[i] = argument[0];
}

return arrayRepeat;
