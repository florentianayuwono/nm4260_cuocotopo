/// @description Insert description here
// You can write your code in this editor
cell_size = 13
global.grid = mp_grid_create(0,0,1350 / cell_size,750 / cell_size,cell_size,cell_size)
mp_grid_add_instances(global.grid, Table, 1)
mp_grid_add_instances(global.grid, PathfindingWall,1)



