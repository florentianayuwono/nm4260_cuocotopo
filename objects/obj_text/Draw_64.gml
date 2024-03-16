/// @description Insert description here
// You can write your code in this editor

draw_set_halign(fa_center);
draw_set_valign(fa_top);


var _print = string_copy(order_text, 1, text_progress);
draw_set_color(c_white);
draw_text((x1 + x2) / 2, y1 + 6, _print);

