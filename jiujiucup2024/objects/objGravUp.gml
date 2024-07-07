#define Alarm_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if(view_angle<180){
    view_angle+=12;
    alarm[0] = 1;
}
else{
    alarm[1] = 1;
}
#define Alarm_1
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
with(player){
    playerReverse();
}
global.frozen2 = 0;
played = 0;
#define Collision_player
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if(!global.reverse){
    global.frozen2 = 1;
    if(!played){
        audio_playsound(sndBlockChange);
        alarm[0] = 1;
        played = 1;
    }
}
