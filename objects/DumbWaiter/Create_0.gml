/// @description Insert description here
// You can write your code in this editor
event_inherited();

global.identity = undefined
event_update_socket = function update_socket() {
	global.identity = identity
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
prev_identity = undefined


