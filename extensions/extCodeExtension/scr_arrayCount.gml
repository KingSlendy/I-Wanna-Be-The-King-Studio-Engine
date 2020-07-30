///scr_arrayCount(array, check)
#define array_count

var checkArray = argument[0];
var count = 0;

for (var i = 0; i < array_length_1d(checkArray); i++) {
    if (checkArray[i] == argument[1]) {
        count++;
    }
}

return count;
