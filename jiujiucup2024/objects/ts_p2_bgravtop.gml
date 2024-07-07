#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
event_inherited();

SelectColor_ts("cyanine");
setScale(0.75, 0.75);
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
createShadow(0, 0.05);

gravity = 0.2;
gravity_direction = point_direction(x, y, 400, view_yview[0] + 128);
