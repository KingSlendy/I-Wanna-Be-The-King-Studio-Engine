///scr_stringInterp(string, val1, val2, val...)
#define string_interp

var nowString = argument[0];

for (var i = 0; i < argument_count - 1; i++) {
    nowString = string_replace(nowString, "{" + string(i) + "}", string(argument[i + 1]));
}

return nowString;
