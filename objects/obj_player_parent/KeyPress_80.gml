/// @description Insert description here
// You can write your code in this editor
if (global.camera_locked != id) {
	return
}

function interact(){
	
	
	
	
	
	if last_interactable == noone || last_interactable == undefined{
		//Place food down
		if socket.visible && socket != undefined{
		
			instance_create_layer(x,y, "Instances", socket.identity)
		
			with(socket){
				visible = false
				identity = undefined
			}
		
		}
		
		

		return;
	}
	
	if object_is_ancestor(last_interactable.object_index, Food) {
	
		//Pick up food on floor.
		if !socket.visible {
		
			with(socket) {
				sprite_index = other.last_interactable.sprite_index
				identity = other.last_interactable.object_index
				visible = true
			}
		
			with(last_interactable){
			instance_destroy(id)
			}
	
		}
	
	}
	else if (last_interactable.object_index == Table || 
		object_is_ancestor(last_interactable.object_index, Table)) {

		if last_interactable.identity == undefined && socket.visible{
			//Place down obj.
			with (last_interactable) {
				identity = other.socket.identity
				event_update_socket()
			
			}
		
			with socket{
				visible = false
				identity = undefined
				}
			
		}
		else if  last_interactable.identity == undefined && !socket.visible {
			//Not holding anything, so nothing to be done
		}else if  last_interactable.identity != undefined && !socket.visible {
			//Pick up item from table
				
				with (socket) {
					visible = true
					identity = other.last_interactable.identity
					sprite_index = object_get_sprite(identity)
					
				}
				
				with (last_interactable) {
					identity = undefined
					event_update_socket()
			
				}
		
		}else if last_interactable.identity != undefined && socket.visible {
			
			//Combine the 2 items
			if canCombine(socket.identity, last_interactable.identity) {
				var a = combine(socket.identity, last_interactable.identity)
				
				with (last_interactable) {
					identity = a
					event_update_socket()
			
				}
		
				with socket{
					visible = false
					identity = undefined
				}
				
			}
			
		}
		
	
	}

	

}

interact()
