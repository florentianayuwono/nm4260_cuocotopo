/// @description Insert description here
// You can write your code in this editor

food = [ApplePie, Bacon, Cheese, Soup]

order_id = food[floor(random_range(0, array_length(food)))];
//order_id = ApplePie

initial_loc_x = x
initial_loc_y = y

targetTable = undefined


order_complete = false
seated = false

path = path_add()
prev_dir = 0
can_return_walk = false

patience_percent = 100
patience_dur = 30
patience_curr_dur = patience_dur
draw_patience = false

player_close = false
detailed_range = 50


start_walk = function start_walk() {
	mp_grid_path(global.grid,path,x,y,targetTable.x ,targetTable.y - 8,1);
	path_start(path,1,path_action_stop,1)
	show_debug_message("start walk")
	with targetTable{
		able_to_serve = false	
	}
	
}

return_walk = function return_walk(){
	mp_grid_path(global.grid,path,targetTable.x ,targetTable.y- 8,initial_loc_x,initial_loc_y,1);
	path_start(path,1,path_action_stop,1)

}

