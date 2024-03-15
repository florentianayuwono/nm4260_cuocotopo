/// @description Insert description here
// You can write your code in this editor
event_inherited()
base_identity = Bacon


socket_display = instance_create_layer(x, y, "Sockets", Socket);

with (socket_display) {
	follow = other.id
	socket_relative_x = 0
	socket_relative_y = 0
	visible = true
	identity = other.base_identity
	sprite_index = object_get_sprite(identity)
	image_xscale = 0.5
	image_yscale = 0.5
}

