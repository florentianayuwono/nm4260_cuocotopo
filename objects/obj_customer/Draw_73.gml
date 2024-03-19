/// @description Insert description here
// You can write your code in this editor




if draw_patience{

draw_sprite_ext(hpbar_empty,0,x+10,y,1 / 8,1 / 8,90, c_white,1)
draw_sprite_ext(hpful3,0,x+10,y, (patience_percent /100) / 8 ,1 / 8,90,c_white,1);
}

function draw_recipe() {
	//Prolly a better way to do this... 
	if order_id == ApplePie {
		draw_ApplePie()
	}
	else if order_id == Cheese {
		draw_default()
	} else if order_id == Soup {
		draw_Soup()
	}else if order_id == Bacon {
		draw_default()
	}
	


}

function draw_Soup(){
	draw_Recipe(spr_bacon, spr_cheese, spr_pie,2)
}


function draw_ApplePie(){
	draw_Recipe(spr_pie, spr_cheese, spr_applepie,2)
	draw_Recipe(spr_bacon, spr_cheese, spr_pie,3)
}

function draw_Recipe(a,b,c,recipeLayer){ //a + b = c, pass sprites in
	draw_sprite_ext(a,0,x - 16,y-(recipeLayer * 8),1/2,1/2,0,c_white,1)
	draw_sprite_ext(plus,0,x - 8,y-(recipeLayer * 8),1/2,1/2,0,c_white,1)
	draw_sprite_ext(b,0,x,y-(recipeLayer * 8),1/2,1/2,0,c_white,1)
	draw_sprite_ext(right_arrow,0,x + 8,y-(recipeLayer * 8),1/2,1/2,0,c_white,1)
	draw_sprite_ext(c,0,x + 16,y-(recipeLayer * 8),1/2,1/2,0,c_white,1)
	
}

function draw_default(){
	draw_sprite_ext(object_get_sprite(order_id),0,x,y-16,1/2,1/2,0,c_white,1)

}
if (order_complete == false) {
if(player_close) {
	draw_recipe()
}
else{
	draw_default()
}
}