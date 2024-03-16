/// @description Insert description here
// You can write your code in this editor
	phy_rotation = 0;
	image_angle = 0
if (global.camera_locked != id) {
			phy_linear_velocity_x = 0;
			phy_linear_velocity_y = 0;
			phy_angular_velocity = 0;
			
	return
}

function obj_player_parent_step() {
	move_x = 0;
	move_y = 0;
	
    // Step Event of obj_player_parent
		function move_player(){
			
			is_dashing = false
			if(dash_curr_cooldown >= 0){
				dash_curr_cooldown -= delta_time;
				
				//show_debug_message(dash_curr_cooldown)
			}
			
			if(curr_dash_durr >= 0){
				is_dashing = true
				curr_dash_durr -= delta_time;
				var lerp_factor = curr_dash_durr / dash_durr;
				phy_linear_velocity_x = lerp(0, init_dash_velo_x, lerp_factor);
				phy_linear_velocity_y = lerp(0, init_dash_velo_y, lerp_factor);
				//show_debug_message(lerp_factor)
				
				return;
			}
			
			
		        // Check for input and adjust movement direction
	        if (keyboard_check(ord("W")) or keyboard_check(vk_up)) move_y -= 1;
	        if (keyboard_check(ord("S")) or keyboard_check(vk_down)) move_y += 1;
	        if (keyboard_check(ord("A")) or keyboard_check(vk_left)) move_x -= 1;
	        if (keyboard_check(ord("D")) or keyboard_check(vk_right)) move_x += 1;

	        // Normalize diagonal movement so it's not faster
	        if (move_x != 0 && move_y != 0) {
	            move_x *= 0.7071; // cos(45 degrees)
	            move_y *= 0.7071; // sin(45 degrees)
	        }


			var velocity_x = move_x * move_speed;
			var velocity_y = move_y * move_speed;
			// Calculate impulse to achieve desired velocity
		

			phy_linear_velocity_x = velocity_x;
			phy_linear_velocity_y = velocity_y;
			phy_angular_velocity = 0;
		
			if (keyboard_check_pressed(vk_shift) && dash_curr_cooldown <= 0) {
				
				curr_dash_durr = dash_durr;
				dash_curr_cooldown = dash_cooldown;
				var velocity_x = move_x * dash_speed;
				var velocity_y = move_y * dash_speed;
			    // Apply additional force when Shift key is pressed
				phy_linear_velocity_x = velocity_x;
				phy_linear_velocity_y = velocity_y;
				phy_angular_velocity = 0;
				
				init_dash_velo_x = phy_linear_velocity_x
				init_dash_velo_y =  phy_linear_velocity_y

			}
			
		}

		function animate_player(){
			
			
		        if (move_x > 0) {
            image_xscale = abs(image_xscale); // Facing right
        } else if (move_x < 0) {
            image_xscale = -abs(image_xscale); // Facing left
        }

		if(is_dashing){
			if (sprite_index != dash_sprite) {
				sprite_index = dash_sprite
				image_index = 0
			}
			return;
		}
        if (move_x != 0 || move_y != 0) {
            // The player is moving
            if (sprite_index != run_sprite) { // Check to avoid unnecessary changes
                sprite_index = run_sprite;
				image_index = 0
            }
        } else {
            // The player is standing still
            if (sprite_index != still_sprite) { // Check to avoid unnecessary changes
                sprite_index = still_sprite;
				image_index = 0
            }
        }
		}
		
		
		function interact_check(){
		// Check for collision with Interactable object
		// Determine the direction the player is facing based on move_x and move_y
		//show_debug_message(string(last_dir_x) + "   "+ string(last_dir_y))
		
		if move_x != 0 || move_y != 0 {
				last_dir_x = sign(move_x);
				last_dir_y = sign(move_y);
		}


		// Perform collision check with adjusted position
		var obj = collision_point(x + (last_dir_x * pickup_range), y + last_dir_y * pickup_range, Interactable, true, true);
		//show_debug_message(obj)
		if obj != noone && object_is_ancestor(obj.object_index, Interactable){
			
			with(obj){
				show_shader = true
			}
		    // Tint the Interactable object white

		}
		

	    if(instance_exists(last_interactable) && (last_interactable != obj || obj == noone )){
			
			with(last_interactable){
				show_shader = false
			}

		}
		last_interactable = obj
		
		
	
	}
    
		move_player();
		animate_player();
		interact_check();


    

}
obj_player_parent_step()