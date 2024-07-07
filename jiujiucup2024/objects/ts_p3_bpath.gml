#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
event_inherited();

outViewDesFlag = 1;

image_speed = 0;

SelectColor_ts("cyanine");

pathType = 0;

shootFlag = 1;

flag = 1;

//path 0
//alarm[0] = 102;
centerX = 0;
centerY = 0;
phase = 0
phaseSpd = 1.5;
centerR = 0;
ySpd = 2;

//path 1
//alarm[1] = 153;

//path 2
//alarm[2] = 252;
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
switch(pathType)
{
    case -1:
        break;
    case 0:
        {
            direction += flag*2.5;
            speed -= 8/118;

            if(speed <= -10)
                speed = -10;
        }
        break;
    case 1:
        {

            x = centerX + centerR*cos(degtorad(phase));
            y = centerY - centerR*sin(degtorad(phase));

            centerR -= 1.25;
            centerY -= ySpd;

            phase += phaseSpd*flag;

            phaseSpd -= 1.5/118;

            if(centerR <= -256)
                centerR = -256;
        }
        break;
    case 2:
        {
            direction += flag*0.1;
            speed = 2;
        }
        break;
    case 3:
        {
            speed += 0.075;
            if(speed >= 6)
                speed = 6;
        }
        break;
    default:
        break;
}

destroyByDistance(750);
