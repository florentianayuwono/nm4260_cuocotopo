/// @description Insert description here
// You can write your code in this editor




/// @description Insert description here
// You can write your code in this editor

if (show_shader) {
	shader_set(Flash)
	shd_alpha = shader_get_uniform(Flash, "alpha")
	shader_set_uniform_f(shd_alpha,( abs(sin(current_time / 250) / 3 )+ 0.5))

	

}



draw_self()
shader_reset()