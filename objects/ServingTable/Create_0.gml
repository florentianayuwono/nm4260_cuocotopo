/// @description Insert description here
// You can write your code in this editor
event_inherited()
customer = undefined
able_to_serve = true

event_customer_leave = function customer_leave(){
		identity = undefined
		
		customer = undefined
		
		with socket{
			identity = undefined
			visible = false
		}
		
}

event_update_socket = function update_socket() {
	
	
	if able_to_serve && instance_exists(customer) && customer.order_id == identity{
		
		with customer{
			order_complete = true
			return_walk()
		}
		identity = undefined
		
		customer = undefined
		
		with socket{
			identity = undefined
			visible = false
		}
	}
	else{
		
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


}
