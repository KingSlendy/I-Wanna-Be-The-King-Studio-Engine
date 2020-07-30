///scr_A1Z26(char)
#define a1z26

var char = string_upper(argument[0]);

if (ord(char) < 65) {
    return real(char);
}  else {
    return (ord(char) - ord("A")) + 1;
}