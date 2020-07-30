///scr_arrayDistinct(array)
#define array_distinct

var oldArray = argument[0];
var newArray;
var elemCount = 0;
var goNext = false;

for (var i = 0; i < array_length_1d(oldArray); i++) {
    if (i > 0) {
        for (var j = 0; j < array_length_1d(newArray); j++) {
            if (newArray[j] == oldArray[i]) {
                goNext = true;
            
                break;
            }
        }
        
        if (goNext) {
            goNext = false;
            
            continue;
        }
    }

    newArray[elemCount++] = oldArray[i];
}

return newArray;
