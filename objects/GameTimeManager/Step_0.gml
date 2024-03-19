/// @description Insert description here
// You can write your code in this editor


function trigger_rh(){
	spawner_CD = global.CustomerSpawnerManager.spawnCD
	spawner_chance = global.CustomerSpawnerManager.spawnChance
	with global.CustomerSpawnerManager{
		spawnCD = other.rh_spawn_CD
		spawnChance = other.rh_spawn_chance
	}
	
	rh_expire_time = gametime + rh_dur
	global.rush_hour = true
	anim_cur_dur = 0
	rh_currently_triggered = true
}


gametime += delta_time/1000000


if gametime > session_length{
day_complete = true

}

if rh_currently_triggered && anim_cur_dur < anim_dur{

	anim_cur_dur += delta_time/1000000
	y_curr_offset = (1 - (anim_cur_dur / anim_dur)) * y_offset_ui
}
else if reverse_anim && anim_cur_dur < anim_dur{
	anim_cur_dur  += delta_time/1000000
	y_curr_offset = ((anim_cur_dur / anim_dur)) * y_offset_ui
}

if reverse_anim && anim_cur_dur >= anim_dur{
	reverse_anim = false
	anim_cur_dur = 0
}

if rh_currently_triggered && gametime > rh_expire_time {
	//Remove rush hour
	with global.CustomerSpawnerManager{
		spawnCD = other.spawner_CD
		spawnChance = other.spawner_chance
	}
	global.rush_hour = false
	rh_currently_triggered = false
	reverse_anim = true
	anim_cur_dur = 0
}



if rh_1_triggered == false && gametime > rh_1_time{
	trigger_rh()
	rh_1_triggered = true
}
else if  rh_2_triggered == false && gametime > rh_2_time{
	trigger_rh()
	rh_2_triggered = true
}

