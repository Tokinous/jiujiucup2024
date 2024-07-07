#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
//only use this object in the rSelectStage room !

onCollide = true;
#define Collision_player
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
//load game
if(dif == 4){
    if !file_exists(global.saving_directory+"SaveData"+string(global.savenum)){
        with(player){
            instance_destroy();
        }
        room_restart();
    }
    else{
        room_goto(rLoad);
    }
}
//new game
else{
    global.difficulty = dif;
    if(file_exists(global.saving_directory+"SaveData"+string(global.savenum)) == true){
        file_delete(global.saving_directory+"SaveData"+string(global.savenum));
    }
    global.death = 0;
    global.timestep = 0;
    roomTo = global.first_stage;
    room_goto(roomTo);
    with(player){
        instance_destroy();
    }
}
#define Draw_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
//draw the original sprite
drawSelf();
//draw the difficulty text
draw_set_color(c_white);
draw_set_font(font12);
draw_set_halign(fa_center)
draw_text(x+16,y-20,difName);
