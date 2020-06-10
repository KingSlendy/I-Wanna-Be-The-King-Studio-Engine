///scr_arrayPick(array)
#define array_pick

var array = argument[0];

return array[irandom(array_length_1d(array) - 1)];
