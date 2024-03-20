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

if seated {
	patience_curr_dur -= delta_time/1000000
	patience_percent = patience_curr_dur/patience_dur * 100
}

if patience_percent <= 0 && !can_return_walk && !order_complete {
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
	
	