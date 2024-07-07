#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
event_inherited();
outViewDesFlag = 1;

SelectColor_ts("cyanine");

fadein = 1;
fadeout = 0;

image_alpha = 0;

setScale(0.75, 0.75);
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
destroyByDistance(550);

if(fadein)
    fadeIn(33);

if(image_alpha >= 1)
{
    gravity_direction = 90;
    gravity = 0.1;

    createShadow(0, 0.1);
}

if(fadeout)
    fadeOut(33);
#define Collision_ts_p3_b1
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
with other fadeout = 1;
