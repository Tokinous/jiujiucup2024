#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
alarm[0] = 5;

shadow = 1;

tmp_spd = 0;

image_alpha = 0.5;

outViewDontDes();
#define Alarm_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
tmp_spd = speed;

speed = 0;
shadow = 0;

image_alpha = 1;
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
destroyByDistance(500);
