#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
//circle
centerX = 0;
centerY = 0;

phase = 0;
phaseSpd = 0;
r = 0;

//straight
straight = 0;

lastX = 0;
lastY = 0;
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if(!straight)
{
    //circle
    x = CalcCircleX(centerX, centerY, r, 1, 1, phase);
    y = CalcCircleY(centerX, centerY, r, 1, 1, phase);

    phase += phaseSpd;
}
else
{
    //straight
}

if(y >= 128)
{
    if(straight == 0)
    {
        straight = 1;
        speed = point_distance(lastX, lastY, x, y);
    }

    direction = 270 - view_angle[0];

    if(y > 608)
        instance_destroy();
}

lastX = x;
lastY = y;
