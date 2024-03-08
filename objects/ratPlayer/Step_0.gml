/// @description Controls ratPlayer movement.

var _is_left_key = keyboard_check(vk_left);
var _is_right_key = keyboard_check(vk_right);
var _is_up_key = keyboard_check(vk_up);
var _is_down_key = keyboard_check(vk_down);

var _is_activate_key = keyboard_check_pressed(vk_space);
var _is_attack_key = keyboard_check_pressed(vk_shift);
var _is_item_key = keyboard_check_pressed(vk_control);

var _input_direction = point_direction(0, 0, _is_right_key - _is_left_key, _is_down_key - _is_up_key);
var _input_magnitude = (_is_left_key != _is_right_key) || (_is_up_key != _is_down_key);

h_speed = lengthdir_x(_input_magnitude * speed_walk, _input_direction);
v_speed = lengthdir_y(_input_magnitude * speed_walk, _input_direction);

if (!global.game_paused and global.switch_player) {
	
	player_collision();

}



