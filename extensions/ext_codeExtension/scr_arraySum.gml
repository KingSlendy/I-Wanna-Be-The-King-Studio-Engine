///scr_arraySum(array)
#define array_sum

var array = argument[0];
var sum = 0;

for (var i = 0; i < array_length_1d(array); i++) {
    if (is_real(array[i])) {
        sum += array[i];
    }
}

return sum;
