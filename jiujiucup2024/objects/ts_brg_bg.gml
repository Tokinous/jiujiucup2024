#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
scale = random_range(0.75, 1.5);

setScale(scale, scale);

image_speed = 0;

SelectColor_ts("white");

hspeed = random_range(-1, 1);
vspeed = random_range(-1, -1.5);

image_alpha = 0.75;
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
scale -= 1/300;

if(scale <= 0)instance_destroy();
else setScale(scale, scale);
