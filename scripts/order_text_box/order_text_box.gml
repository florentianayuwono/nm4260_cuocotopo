// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function order_text_box(_message, _background, _customer_id){

	var _obj = obj_text;
	
	with (instance_create_layer(_customer_id.x, _customer_id.y, _customer_id.layer, _obj)) {
		if (instance_exists(other)) origin_instance = other.id else origin_instance = noone;
		_obj.order_text = _message;
		_obj.background = _background;
	}
}