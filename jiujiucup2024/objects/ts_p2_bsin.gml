#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
event_inherited();

outViewDesFlag = 1;

destY = 0;

phase = 0;

r = 0;

curY = 0;

phaseSpd = 0;
ySpd = 0;
flag = 1;

SelectColor_ts("cyanine");
setScale(0.75, 0.75);
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
x = 400 + r*cos(degtorad(phase));
y += (destY - y)/25;

//if(abs(destY - y)/25 <= 0.5)
//{
//    destY = y;
//    y += 0.1;

    if(y > view_yview[0]+608)instance_destroy();

    phase += phaseSpd * flag;


//}

phase += 360;
phase = phase mod 360;

if(flag)
{
    if(phase>0 && phase <180)
    {
        image_alpha = power(abs((phase-90)/90), 3);
    }
    else
    {
        image_alpha = 1;
    }
}
else
{
    if(phase>0 && phase <180)
    {
        image_alpha = 1;
    }
    else
    {
        image_alpha = power(abs((phase-270)/90), 3);
    }
}
