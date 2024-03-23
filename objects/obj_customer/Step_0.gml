/// @description Insert description here
// You can write your code in this editor

// need help with the positioning of the text box

function euclidean_distance(obj1, obj2) {
    var x1 = obj1.x;
    var y1 = obj1.y;
    var x2 = obj2.x;
    var y2 = obj2.y;
    
    var dx = x2 - x1;
    var dy = y2 - y1;
    
    return sqrt(dx * dx + dy * dy);
}

enum CUSTOMER_STATE {
	THINKING,
	ORDERING,
	EATING,
	LEAVING
}

var _wait_time = 5;

if (seated && (state == CUSTOMER_STATE.EATING || state == CUSTOMER_STATE.THINKING)) {
    _wait_time -= 1;
} else if (seated) {
	state = CUSTOMER_STATE.THINKING;
	_wait_time = 5;
}

// Switch between different states based on wait time
if (_wait_time <= 0 and CUSTOMER_STATE.THINKING) {
    state = CUSTOMER_STATE.ORDERING;
} else if (state == CUSTOMER_STATE.ORDERING and order_complete) {
    state = CUSTOMER_STATE.EATING;
	_wait_time = 3;
} else if (_wait_time <= 0 and CUSTOMER_STATE.EATING) {
	state = CUSTOMER_STATE.LEAVING;
}

switch (state) {
    case CUSTOMER_STATE.EATING:
        // sprite_index = spr_customer_eating;
		show_debug_message(string(id) + "is eating")
        break;
    case CUSTOMER_STATE.THINKING:
        // sprite_index = spr_customer_thinking;
		// show_debug_message(string(id) + "is thinking")
        break;
    case CUSTOMER_STATE.ORDERING:
	case CUSTOMER_STATE.LEAVING:
        // default sprite
		show_debug_message(string(id) + "is ordering / leaving")
        break;
}


if seated && CUSTOMER_STATE.ORDERING {
	patience_curr_dur -= delta_time/1000000
	patience_percent = patience_curr_dur/patience_dur * 100
}

if patience_percent <= 0 && !can_return_walk && !CUSTOMER_STATE.LEAVING {
	can_return_walk = true
	global.strikes += 1
	seated = false
	return_walk()
	draw_patience = false
	with targetTable{
		customer_leave()
	}
	
}

if global.rush_hour && path_speed != 3 {
	path_speed = 3
}
else if !global.rush_hour && path_speed != 1{
	path_speed = 1
}


if (euclidean_distance(self, global.catPlayer) < detailed_range || euclidean_distance(self, global.chefPlayer)< detailed_range){
		player_close = true
}
else{
	player_close = false
}
	
	