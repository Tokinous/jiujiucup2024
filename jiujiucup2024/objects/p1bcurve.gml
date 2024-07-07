#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
setScale(4, 4);

flag = 1;

spd = 6;

xLast = 400;
yLast = 304;

alarm[2] = 1;

index = 1;

OutViewDontDestroy();
#define Alarm_2
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
alarm[2] = 7;

//createCircle(center x, center y, circle r, obj, num, mode, spd, offset, dir(optional) or extra arg);
createCircle(x, y, 12, p1brice2, 5, 0, 0, point_direction(xLast, yLast, x, y) + 90*power(-1, index), point_direction(xLast, yLast, x, y) + 90*power(-1, index));

index += 1;

createDusk(20, 1);
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
direction += 360 / 160 / 2 * flag;

xLast = x;
yLast = y;

if(x < 0 - sprite_width / 2)
{
    x = x + 800 + sprite_width/2;
}
if(x > 800 + sprite_width / 2)
{
    x = x - 800 - sprite_width/2;
}
if(y < 0 - sprite_height / 2)
{
    y = y + 608 + sprite_height/2;
}
if(y > 608 + sprite_height / 2)
{
    y = y - 608 - sprite_height/2;
}
