/// @description Insert description here
// You can write your code in this editor



if(global.camera_locked == global.chefPlayer) {
	global.camera_locked = global.catPlayer
	view_visible[0] = 0;
	view_visible[1] = 1;
}else if (global.camera_locked == global.catPlayer){
	global.camera_locked = global.chefPlayer
	view_visible[0] =1;
	view_visible[1] = 0;
}



