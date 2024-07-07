#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
//the parent object for buttons
image_speed=0;
#define Mouse_10
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if !active image_index=1;
#define Mouse_11
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if !active image_index=0;
#define Mouse_53
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if position_meeting(mouse_x,mouse_y,id){
    active = 1;
    audio_playsound(sndClick);
    image_index = 2;
}
else{
    active = 0;
    image_index = 0;
}
#define KeyPress_1
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if active {
    str = button + "=" + string(keyboard_lastkey);
    execute_string(str);
    active = false;
    if position_meeting(mouse_x,mouse_y,object_index){
        image_index = 1;
    }
    else{
        image_index = 0;
    }
    controls_update();
}
