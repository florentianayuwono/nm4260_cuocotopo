/// @description Insert description here
// You can write your code in this editor
session_length = 150
rh_1_time = 30
rh_2_time = 90
global.rush_hour = false

rh_1_triggered = false
rh_2_triggered = false

rh_currently_triggered = false

gametime = 0

rh_dur = 20
rh_expire_time = 20

rh_spawn_CD = 2
rh_spawn_chance = 0.6

y_offset_ui = -100
y_curr_offset = -100
anim_dur = 0.2
anim_cur_dur = 0
reverse_anim = false

spawner_CD = 3
spawner_chance = 0.8

day_complete = false

//Rush hours last for the same time at 60 and 120s in, lasting for 10s and sets CD to 1 and chance to 0.5
