///scr_map(value, from1, to1, from2, to2)
#define map

var from1 = argument[1];
var from2 = argument[3];

return (argument[0] - from1) / (argument[2] - from1) * (argument[4] - from2) + from2;
