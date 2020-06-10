///scr_decimal(binary_string)
#define decimal

var baseBinary = argument[0];
var output = 0;

for (var i = 0; i < string_length(baseBinary); i++) {
    if (string_char_at(baseBinary, string_length(baseBinary) - i) == "1") {
        output += power(2, i);
    }
}

return output;
