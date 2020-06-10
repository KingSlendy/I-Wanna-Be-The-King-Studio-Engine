///scr_binary(decimal_real)
#define binary

var baseDecimal = argument[0];
var output = "";

while (baseDecimal > 0) {
    output = string(baseDecimal % 2) + output;
    baseDecimal = floor(baseDecimal / 2);
}

return output;
