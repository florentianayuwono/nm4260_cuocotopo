/// @description Insert description here
// You can write your code in this editor
if (rh_currently_triggered || reverse_anim) {
draw_set_font(RH);
draw_set_halign(fa_center);
draw_sprite_stretched(spr_text_box,1,0,y_curr_offset,browser_width,100)
draw_text_color(browser_width/2, y_curr_offset, "RUSH HOUR!!!!!!",c_red,c_red,c_red,c_red,1);
}

if(day_complete) {
	
draw_set_font(RH);
draw_set_halign(fa_center);
draw_sprite_stretched(spr_text_box,1,0,0,browser_width,100)
draw_text_color(browser_width/2, 0, "Day Complete! Thanks for Playing!",c_red,c_red,c_red,c_red,1);

}

draw_set_font(RH);
draw_set_halign(fa_center);
if (rh_currently_triggered) {

draw_text_color(500, browser_height - 150, "Time Remaining :" + string(session_length - gametime), c_red,c_red,c_red,c_red,1)
}
else{

draw_text_color(500, browser_height - 150, "Time Remaining :" + string(floor(session_length - gametime)), c_black,c_black,c_black,c_black,1)
}


