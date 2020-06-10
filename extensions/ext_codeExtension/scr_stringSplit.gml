///scr_stringSplit(string, substr)
#define string_split

var nowString = argument[0];
var subStr = argument[1];
var toSplit;
var subCount = string_count(subStr, nowString);
var nowIndex = 1;
var countIndex = 1;

if (subStr == "") {
    for (var i = 0; i < string_length(nowString); i++) {
        toSplit[i] = string_char_at(nowString, i + 1);
    }
    
    return toSplit;
}

if (subCount == 0) {
    return nowString;
}

for (var i = 0; i <= subCount; i++) {
    if (i < subCount) {
        var remIndex = nowIndex;    
        
        while (string_copy(nowString, nowIndex, string_length(subStr)) != subStr) {
            nowIndex++;
            countIndex++;
        }
        
        toSplit[i] = string_copy(nowString, remIndex, countIndex - 1);
        nowIndex += string_length(subStr);
        countIndex = 1;
    } else {
        toSplit[i] = string_copy(nowString, nowIndex, string_length(nowString) - nowIndex + 1);
    }
}

return toSplit;
