///scrDrawTextOutline(x, y, text, colour, border_colour)
var xx = argument[0];
var yy = argument[1];
var text = argument[2];
var colour = c_black;

if (argument_count >= 4) {
    colour = argument[3];
}

var border = c_white;

if (argument_count >= 5) {
    border = argument[4];
}

draw_set_colour(border);

for (var i = -1; i < 2; i++) {
    for (var j = -1; j < 2; j++) {
        draw_text(xx + j, yy + i, text);
    }
}

draw_set_colour(colour);
draw_text(xx, yy, text);
