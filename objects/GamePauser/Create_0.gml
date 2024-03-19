/// @description Insert description here
// You can write your code in this editor

global.paused = false
ids_list = undefined
pause_screen = undefined

toggle_global_pause = function pause(){

global.paused = !global.paused

if (global.paused)
{
    ids_list = ds_list_create();
    var list = ids_list;
	with global.catPlayer{phy_active = false}
	with global.chefPlayer{phy_active = false}
	var doNotPause = ds_list_create();

    with (all)
    {
		if object_is_ancestor(id.object_index, DoNotPause) {
			ds_list_add(doNotPause,id)
		}
		else{
			ds_list_add(list, id);
		}
    }
    instance_deactivate_all(true);
	var list_size = ds_list_size(doNotPause);
	for (var i = 0; i < list_size; i++) {
    var instance_to_activate = doNotPause[| i];
    
    // Check if the instance exists and is not deactivated
    if (instance_exists(instance_to_activate)) {
        instance_activate(instance_to_activate);
    }
}
	pause_screen = instance_create_layer(0,0,"Players",PauseScreen)
}else{

	instance_activate_all();
	with global.catPlayer{phy_active = true}
	with global.chefPlayer{phy_active = true}
	with (pause_screen) {
		instance_destroy()
	}
}

}