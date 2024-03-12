/// @description Insert description here
// You can write your code in this editor


move_x = 0;
move_y = 0;
move_speed = 120;
dash_speed = 400;
dash_cooldown = 800000;
dash_curr_cooldown = 0;
dash_durr = 300000;
curr_dash_durr = 0;
init_dash_velo_x = 0
init_dash_velo_y = 0
is_dashing = false

run_sprite = Chef_Run
still_sprite = Chef_Still
dash_sprite = Chef_Still

last_interactable = undefined
last_dir_x = 0
last_dir_y = 0

pickup_range = 8

socket = instance_create_layer(x, y, "Sockets", Socket);

with (socket) {
	follow = other.id
	image_xscale = 0.5
	image_yscale = 0.5
	socket_relative_x = 2
	socket_relative_y = -13
	
}


