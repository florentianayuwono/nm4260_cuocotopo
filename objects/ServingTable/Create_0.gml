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
	
	
	if able_to_serve && instance_exists(customer) {
		orders = customer.orders
		// Check if the received food matches any of the orders and if all orders are completed
		var _all_orders_complete = true;
		var _not_assigned = true;
        for (var _i = 0; _i < array_length(orders); _i++) {
            var _order_id = orders[_i][0];
			// Match food to order
            if (_order_id == identity and _not_assigned) {
                orders[_i][1] = true;
				_not_assigned = false;
            }
			// Check if all orders are completed
			if (orders[_i][1] == false) {
				_all_orders_complete = false;
			}
			
        }
		
        if (_all_orders_complete) {
            // All orders are complete, customer can walk away
            with customer {
                order_complete = true;
                return_walk();
            }
            identity = undefined;
            customer = undefined;
            with (socket){
                identity = undefined;
                visible = false;
            }
        } else {
            // There are remaining orders, keep serving
            with (socket){
                identity = undefined;
                visible = false;
            }
        }
	
	}
	else {
		
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
