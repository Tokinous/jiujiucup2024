#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
centerX = 0;
centerY = 0;

destCenterX = 0;
destCenterY = 0;

r = 0;
destR = 0;

phase = 0;
phaseSpd = 0;

flag = 1;

lastX = 0;
lastY = 0;

deltaDir = 0;

image_alpha = 0.25;

tag = 0;
flag = 0;
#define Step_2
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if(flag == 0)
{
    var easeParam;

    easeParam = 3;

    //centerX += (destCenterX - centerX)/(easeParam / 3);
    //centerY += (destCenterY - centerY)/(easeParam / 3);

    r += (destR - r)/easeParam;

    phase += phaseSpd;

    x = CalcCircleX(centerX, centerY, r, 1, 1, phase);
    y = CalcCircleY(centerX, centerY, r, 1, 1, phase);
}
else
{
    image_alpha = 1;

    image_xscale += (-0.75 - image_xscale) / 10;
    image_yscale = image_xscale;

    if(image_xscale <= 0)
    {
        instance_destroy();
    }
}
