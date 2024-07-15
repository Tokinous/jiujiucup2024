#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
destX = 0;
destY = 0;

flag = 0;

alarm[0] = 24;
#define Alarm_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
flag = 1;
speed = 10 * point_distance(x, y, 400, 304)/500;
direction = point_direction(400, 304, x, y);
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
switch(flag)
{
    case 0:
        {
            x += (destX - x)/5;
            y += (destY - y)/5;
        }
        break;
    case 1:
        {
            speed *= 1.04;
        }
        break;
    default:
        break;
}
#define Other_40
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=203
applies_to=self
invert=0
*/
