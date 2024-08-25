#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
destX = 0;
destY = 0;
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
var easeParam;
easeParam = 2;

if(point_distance(x, y, destX, destY) < 1)
{
    x = destX;
    y = destY;
    image_alpha = 1;
}
else
{
    x += (destX - x)/easeParam;
    y += (destY - y)/easeParam;

    image_alpha = 0.5;
}
