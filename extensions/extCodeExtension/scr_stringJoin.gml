///scr_stringJoin(array, substr)
#define string_join

var joinArr = argument[0];
var outStr = "";

for (var i = 0; i < array_length_1d(joinArr); i++) {
    if (i < array_length_1d(joinArr) - 1) {
        outStr += string(joinArr[i]) + argument[1];
    } else {
        outStr += string(joinArr[i]);
    }
}

return outStr;
