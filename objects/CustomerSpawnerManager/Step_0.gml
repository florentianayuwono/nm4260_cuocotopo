/// @description Insert description here
// You can write your code in this editor

function spawnCustomer(){

    // Get a random spawn location
    spawnLoc = getRandomSpawnLoc();
	tableLoc = getRandomServingTableLoc();
    
    // Check if a spawn location is found
    if (spawnLoc != noone && tableLoc != noone && tableLoc.customer == undefined) {
        // Spawn a customer
        customer = instance_create_layer(spawnLoc.x, spawnLoc.y, "Instances", obj_customer);
		with customer{
			targetTable = other.tableLoc
			start_walk()
		}
		with tableLoc{
			customer = other.customer
		}
       
    }

}


if (spawnCDCurrent > 0) {
    spawnCDCurrent -= delta_time / 1000000;
	//show_debug_message(random(1))
}// Check if it's time to spawn a customer
else if (spawnCDCurrent <= 0 && random(1) < spawnChance) {
	spawnCustomer()
	 // Reset spawn cooldown
        spawnCDCurrent = spawnCD; 
}else{
	spawnCDCurrent = spawnCD; 
}

