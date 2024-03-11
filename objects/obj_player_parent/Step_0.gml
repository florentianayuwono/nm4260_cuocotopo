/// @description Insert description here
// You can write your code in this editor

	
function obj_player_parent_step() {
	move_x = 0;
	move_y = 0;
    // Step Event of obj_player_parent
		function move_player(){
			

			if(dash_curr_cooldown >= 0){
				dash_curr_cooldown -= delta_time;
				//show_debug_message(dash_curr_cooldown)
			}
			
			if(curr_dash_durr >= 0){
				curr_dash_durr -= delta_time;
				var lerp_factor = curr_dash_durr / dash_durr;
				phy_linear_velocity_x = lerp(0, init_dash_velo_x, lerp_factor);
				phy_linear_velocity_y = lerp(0, init_dash_velo_y, lerp_factor);
				show_debug_message(lerp_factor)
				
				return;
			}
			
			
		        // Check for input and adjust movement direction
	        if (keyboard_check(ord("W"))) move_y -= 1;
	        if (keyboard_check(ord("S"))) move_y += 1;
	        if (keyboard_check(ord("A"))) move_x -= 1;
	        if (keyboard_check(ord("D"))) move_x += 1;

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
		
			if (keyboard_check(vk_shift) && dash_curr_cooldown <= 0) {
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
            image_xscale = 1; // Facing right
        } else if (move_x < 0) {
            image_xscale = -1; // Facing left
        }

        if (move_x != 0 || move_y != 0) {
            // The player is moving
            if (sprite_index != Chef_Run) { // Check to avoid unnecessary changes
                sprite_index = Chef_Run;
            }
        } else {
            // The player is standing still
            if (sprite_index != Chef_Still) { // Check to avoid unnecessary changes
                sprite_index = Chef_Still;
            }
        }
		}
    
		move_player();
		animate_player();


    

}
obj_player_parent_step()