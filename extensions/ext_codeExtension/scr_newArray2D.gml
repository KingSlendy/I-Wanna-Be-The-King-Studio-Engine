///scr_newArray2D(col_length, val1, val2, val3, val...)
#define new_array_2d

var newArray2D;

for (var i = 0; i < argument_count - 1; i++) {
    newArray2D[i div argument[0], i mod argument[0]] = argument[i + 1];
}

return newArray2D;
