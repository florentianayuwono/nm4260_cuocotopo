/// @description Insert description here
// You can write your code in this editor
event_inherited();

identity = undefined

socket = instance_create_layer(x, y, "Sockets", Socket);

with (socket) {
	follow = other.id
	socket_relative_x = 2
	socket_relative_y = -5
	visible = false
	identity = other.identity
}

event_update_socket = function update_socket() {
	with socket{
		identity = other.identity
		if identity == undefined {
			visible = false

		}
		else{
				visible = true
				sprite_index = object_get_sprite(identity)
		}
	}
	

}