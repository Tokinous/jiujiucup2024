#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
var scale;
scale = random_range(0.5, 1);
SetScale(scale, scale);

alarm[0] = 10;
#define Alarm_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
createShadow(0.05, 0.05);

alarm[0] = 10;
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
direction = 270 - view_angle[0] ;

if(y > 700 || y < -100)
    instance_destroy();
