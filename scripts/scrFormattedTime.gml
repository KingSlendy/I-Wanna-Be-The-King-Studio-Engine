///scrFormattedTime(time)
var time = floor(argument[0]);
var ss1 = time mod 10;
var ss2 = (time div 10) mod 6;
var mm1 = (time div 60) mod 10;
var mm2 = ((time div 60) div 10) mod 6;
var hh = (time div 60) div 60;

return string_interp("{0}:{1}{2}:{3}{4}", hh, mm2, mm1, ss2, ss1);
