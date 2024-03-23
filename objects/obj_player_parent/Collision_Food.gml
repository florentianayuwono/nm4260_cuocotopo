/// @description Push food objects when collide


// Calculate force based on player's direction and strength
var _force_X = move_x * move_speed;
var _force_Y = move_y;

// Apply force to the food object
physics_apply_force(other.x, other.y, _force_X, _force_Y);
	


