/// @description Insert description here
// You can write your code in this editor

timer --;

if (timer <= 0 and customer == noone) {
	customer = instance_create_layer(x, y, "Instances", obj_customer);
	//_customer.image_xscale = 0.5;
	//_customer.image_yscale = 0.5;
	
	timer = time;
} else if (timer <= 0 and customer != noone) {
	instance_destroy(customer);
	customer = noone;
	timer = time;
}


