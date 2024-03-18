/// @description Insert description here
// You can write your code in this editor

// need help with the positioning of the text box
order_text = instance_create_layer(x, y - 10, "Instances", obj_text);

order_text.order_text = order;

table = instance_position(x, y + 10, Table);