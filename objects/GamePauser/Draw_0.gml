/// @description Insert description here
// You can write your code in this editor
if (global.paused)
{
depth = 5
var size = ds_list_size(ids_list);
    for (var i = 0; i < size; ++i)
    {
        var inst = ids_list[| i];
        if !(inst.sprite_index == -1) && ( !object_is_ancestor(inst.object_index, HideOnPause))
        {
            draw_sprite_ext(inst.sprite_index, inst.image_index, inst.x, inst.y, inst.image_xscale, inst.image_yscale, inst.image_angle, c_white, inst.image_alpha);
       
        }
    }
}