///scr_toCharArray(string, char_ignore)
#define to_char_array

var nowString = argument[0];
var charArray;
var ignoreCount = 0;

for (var i = 0; i < string_length(nowString); i++) {
    var checkChar = string_char_at(nowString, i + 1);

    if (checkChar == argument[1]) {
        ignoreCount++;
    
        continue;
    }
    
    charArray[i - ignoreCount] = string_char_at(nowString, i + 1);
}

return charArray;
