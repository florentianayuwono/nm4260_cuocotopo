/// @description Create game instance
randomize();

global.game_paused = false;

global.switch_player = false;

global.text_speed = 0.75;

global.waiting_time = 1000;

// global.i_camera = instance_create_layer(0, 0, layer, cameraObject);

surface_resize(application_surface, RESOLUTION_W, RESOLUTION_H);

room_goto(CustomerRoom);
