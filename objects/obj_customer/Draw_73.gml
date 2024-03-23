/// @description Insert description here
// You can write your code in this editor




if draw_patience{

draw_sprite_ext(hpbar_empty,0,x+10,y,1 / 8,1 / 8,90, c_white,1)
draw_sprite_ext(hpful3,0,x+10,y, (patience_percent /100) / 8 ,1 / 8,90,c_white,1);
}

function draw_recipe(_order_id, _pos) {
	//Prolly a better way to do this... 
	if _order_id == ApplePie {
		draw_ApplePie(_pos)
	}
	else if _order_id == Cheese {
		draw_cheese(_pos)
	} else if _order_id == Soup {
		draw_Soup(_pos)
	}else if _order_id == Bacon {
		draw_bacon(_pos)
	}
	


}

function draw_orders() {
	for (var _i = 0; _i < array_length(orders); _i++) {
		var _order_id = orders[_i][0];
		var _n = array_length(orders);
		if (_order_id != undefined) {
			draw_recipe(_order_id, 2*(_n - _i - 1));
		}
	}
}

function draw_cheese(_pos){
	draw_sprite_ext(spr_cheese,0,x,y-((1 + _pos) * 8),1/2,1/2,0,c_white,1)

}

function draw_bacon(_pos){
	draw_sprite_ext(spr_bacon,0,x,y-((1 + _pos) * 8),1/2,1/2,0,c_white,1)

}


function draw_Soup(_pos){
	draw_Recipe(spr_bacon, spr_cheese, spr_pie,2 + _pos)
}


function draw_ApplePie(_pos){
	draw_Recipe(spr_pie, spr_cheese, spr_applepie,2 + _pos)
	draw_Recipe(spr_bacon, spr_cheese, spr_pie,3 + _pos)
}

function draw_Recipe(a,b,c,recipeLayer){ //a + b = c, pass sprites in
	draw_sprite_ext(a,0,x - 16,y-(recipeLayer * 8),1/2,1/2,0,c_white,1)
	draw_sprite_ext(plus,0,x - 8,y-(recipeLayer * 8),1/2,1/2,0,c_white,1)
	draw_sprite_ext(b,0,x,y-(recipeLayer * 8),1/2,1/2,0,c_white,1)
	draw_sprite_ext(right_arrow,0,x + 8,y-(recipeLayer * 8),1/2,1/2,0,c_white,1)
	draw_sprite_ext(c,0,x + 16,y-(recipeLayer * 8),1/2,1/2,0,c_white,1)
	
}

function draw_default(){
	
	for (var _i = 0; _i < array_length(orders); _i++) {
		var _order_id = orders[_i][0];
		var _n = array_length(orders);
		
		if (_i == _n - 1) {
			draw_sprite_ext(object_get_sprite(_order_id),0,x,y - 16,1/2,1/2,0,c_white,1)
		} else {
			draw_sprite_ext(object_get_sprite(_order_id),0,x - ((_n - _i)*8),y - 16,1/2,1/2,0,c_white,1)
			draw_sprite_ext(plus,0,x - ((_n - _i - 1)*8),y - 16,1/2,1/2,0,c_white,1)
		}
	}

}


/*
function draw_default(){
	draw_sprite_ext(object_get_sprite(order_id),0,x,y-16,1/2,1/2,0,c_white,1)

} */

if (order_complete == false) {
if(player_close) {
	draw_orders()
}
else{
	draw_default()
}
}