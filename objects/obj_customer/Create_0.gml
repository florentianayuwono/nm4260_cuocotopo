/// @description Insert description here
// You can write your code in this editor

food = [ApplePie, Bacon, Cheese, Soup]

order_id = floor(random_range(0, 4));

if (order_id == 0) {
	order = "Soup + Bacon = ApplePie";
} else if (order_id == 1) {
	order = "Bacon";
} else if (order_id == 2) {
	order = "Cheese";
} else if (order_id == 3) {
	order = "Bacon + Cheese = Soup";
}

order_text = noone;
