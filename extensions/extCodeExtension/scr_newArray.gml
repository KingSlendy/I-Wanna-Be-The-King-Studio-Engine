///scr_newArray(val1, val2, val3, val...)
#define new_array

var newArray;

for (var i = 0; i < argument_count; i++) {
    newArray[i] = argument[i];
}

return newArray;
