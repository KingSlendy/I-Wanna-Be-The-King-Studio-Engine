///scr_stringReverse(string)
#define string_reverse

var inStr = argument[0];
var length = string_length(inStr);
var outStr = "";

for (var i = 0; i < length; i++) {
    outStr += string_char_at(inStr, length - i);
}

return outStr;
