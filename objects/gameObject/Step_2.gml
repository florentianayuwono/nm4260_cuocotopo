/// @description Pause the game

if (keyboard_check_pressed(vk_escape)) {
	
	global.game_paused = !global.game_paused;
	
	if (global.game_paused) {
		
		with (all) {
			
			saved_image_speed = image_speed;
			image_speed = 0;
			
		}
	} else {
		
		with (all) {
			
			image_speed = saved_image_speed;
		
		}
	}
}
