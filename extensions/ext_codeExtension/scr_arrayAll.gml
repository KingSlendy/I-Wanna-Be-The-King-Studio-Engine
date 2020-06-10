///scr_arrayAll(array, value)
#define array_all

var nowArray = argument[0];

for (var i = 0; i < array_length_1d(nowArray); i++) {
    if (nowArray[i] != argument[1]) {
        return false;
    }
}

return true;
