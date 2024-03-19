/// @description Insert description here
// You can write your code in this editor
randomize() 
customerSpawnLocs = ds_list_create();
servingTables = ds_list_create();

spawnCD = 3
spawnCDCurrent = 1
spawnChance = 0.5

global.CustomerSpawnerManager = self


var i;
for (i = 0; i < instance_count; i++) {
    var inst = instance_find(CustomerSpawnLoc, i);
    if (inst != noone) {
        ds_list_add(customerSpawnLocs, inst);
    }
}

// Find and store all instances of ServingTable in the room
for (i = 0; i < instance_count; i++) {
    var inst = instance_find(ServingTable,i);
    if (inst != noone) {
        ds_list_add(servingTables, inst);
    }
}


getRandomSpawnLoc = function getRandomSpawnLoc() {
    var numSpawnLocs = ds_list_size(customerSpawnLocs);
    if (numSpawnLocs > 0) {
        var randomIndex = irandom_range(0, numSpawnLocs - 1);
        return customerSpawnLocs[| randomIndex];
    } else {
        show_debug_message("No CustomerSpawnLoc found!");
        return noone;
    }
}
getRandomServingTableLoc = function getRandomServingTableLoc() {
    var numTables = ds_list_size(servingTables);
    if (numTables > 0) {
        var randomIndex = irandom_range(0, numTables - 1);
        return servingTables[| randomIndex];
    } else {
        show_debug_message("No ServingTable found!");
        return noone;
    }
}


spawnLoc = undefined
tableLoc = undefined
customer = undefined