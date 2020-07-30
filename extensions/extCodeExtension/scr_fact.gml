///scr_fact(num)
#define fact

var num = argument[0];

if (num > 1) {
    return num * scr_fact(num - 1);
} else {
    return 1;
}
