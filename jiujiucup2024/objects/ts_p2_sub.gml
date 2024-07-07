#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
//setScale(0.75, 0.75);
SelectColor_ts("cyanine");

event_inherited();

image_speed = 0;

phase = 90;

dir = 0;
dirSpd = 6.5;

//0 is left, 1 is right
flag = 0;

split = 1;

destY = 0;

i = 0;
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
y += (destY - y)/25;

phase = 90 + (608 - y)/304 * 180;

/*
if(split)
{
    i += 1;
    var inst;
    inst = createMoveOne(x, y, ts_p2_bwait, 0, dir);

    if(i mod 2 == 0)
    inst.direction = 270;

    dir += dirSpd;
}
*/

createShadow(0, 0.01);

x = 400 + 300*sin(degtorad(phase*flag));
//phase += 1;
