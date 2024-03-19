/// @description Insert description here
// You can write your code in this editor



draw_set_font(RH);
draw_surface(paused_surf, 0, 0);
draw_set_alpha(0.5);
draw_rectangle_colour(0, 0, browser_width, browser_height, c_black, c_black, c_black, c_black, false);
draw_set_alpha(1);
draw_set_halign(fa_center);
draw_text_transformed_colour(browser_width / 2, browser_height / 2, "PAUSED", 2, 2, 0, c_aqua, c_aqua, c_aqua, c_aqua, 1);
draw_set_halign(fa_left);