/// @description Insert description here
// You can write your code in this editor

if can_return_walk {
		instance_destroy(self)
}

if seated == false {
	seated = true
	audio_play_sound(snd_customer_order, 0, false)
	patience_percent = 100
	patience_curr_dur = patience_dur
		with targetTable{
		able_to_serve = true
		
	}
	draw_patience = true
}



