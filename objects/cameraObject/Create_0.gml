/// @description Create camera object

camera = view_camera[0];

follow = chefPlayer;

view_width_half = camera_get_view_width(camera) * 0.5;

view_height_half = camera_get_view_height(camera) * 0.5;

x_to = xstart;

y_to = ystart;

shake_length = 0;

shake_magnitude = 0;

shake_remain = 0;