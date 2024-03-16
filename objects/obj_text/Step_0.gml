/// @description Insert description here
// You can write your code in this editor

lerp_progress += (1 - lerp_progress) / 50;
text_progress += 0.75;

x1 = lerp(x1, x1_target, lerp_progress);
x2 = lerp(x2, x2_target, lerp_progress);

if (keyboard_check_pressed(ord("p"))) {

	var _message_length = string_length(order_text);
	if (text_progress >= _message_length) {
		instance_destroy();
	} else {
		if (text_progress > 2) {
			text_progress = _message_length;
		}
	}
}
