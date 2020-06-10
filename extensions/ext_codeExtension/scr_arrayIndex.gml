///scr_arrayIndex(array, value)
#define array_index

var nowArray = argument[0];
var index = -1;

for (var i = 0; i < array_length_1d(nowArray); i++) {
    if (nowArray[i] == argument[1]) {
        index = i;
        
        break;
    }
}

return index;
