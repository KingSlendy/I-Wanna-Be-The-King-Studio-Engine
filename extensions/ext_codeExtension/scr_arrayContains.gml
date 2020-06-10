///scr_arrayContains(array, check)
#define array_contains

var checkArray = argument[0];

for (var i = 0; i < array_length_1d(checkArray); i++) {
    if (checkArray[i] == argument[1]) {
        return true;
    }
}

return false;
