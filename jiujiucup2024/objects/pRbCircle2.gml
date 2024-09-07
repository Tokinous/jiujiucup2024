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
rFlag = 0;

phase = 0;
phaseSpd = 0;

flag = 1;

lastX = 0;
lastY = 0;

deltaDir = 0;

async = 0;
asyncPhase = 0;
destAsyncPhase = 0;
asyncPhaseSpd = 0;
axisOffset = 0;

xoff = 1;
xoffFlag = -1;

type  = 0;
async = 1;

scale = 1;
destScale = 1;

des = 0;
#define Alarm_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
alarm[0] = 23;

var inst;
inst = CreateMoveOne(x, y, pRbCurve, 2, phase);
inst.curve = 0.25 * flag;

flag *= -1;
#define Step_2
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
deltaDir = point_direction(lastX, lastY, x, y);

var easeParam;

easeParam = 50;

centerX += (destCenterX - centerX)/(easeParam / 3);
centerY += (destCenterY - centerY)/(easeParam / 3);

if(rFlag)
    r += (destR - r)/easeParam;
else
    r += (destR / 2 - r)/easeParam;

phase += phaseSpd;

if(tag && !des)
{
    scale += (destScale - scale) / 100;
    SetScale(scale, scale);
}

switch(type)
{
    case 0:
        {
            var xoffScale;
            xoffScale = cos(degtorad(xoff));

            x = CalcColumnCircleX(centerX, centerY, r, 1, 1, xoffScale, phase);
            y = CalcColumnCircleY(centerX, centerY, r, 1, 1, xoffScale, phase);

            //xoff += xoffFlag * 0.01;

            //if(xoff < -1 || xoff > 1)
            //    xoffFlag *= -1;

            xoff += 1 * xoffFlag;
        }
        break;
    case 1:
        {
            var xoffScale;
            xoffScale = -cos(degtorad(xoff));

            y = CalcColumnCircleX(centerY, centerX, r, 1, 1, xoffScale, phase);
            x = CalcColumnCircleY(centerY, centerX, r, 1, 1, xoffScale, phase);

            //xoff += xoffFlag * 0.01;

            //if(xoff < -1 || xoff > 1)
            //    xoffFlag *= -1;

            xoff += 1 * xoffFlag;
        }
        break;
    case 2:
        {
            x = CalcCircleXAsync(centerX, centerY, r, 1, 1, phase, asyncPhase);
            y = CalcCircleYAsync(centerX, centerY, r, 1, 1, phase, asyncPhase);
        }
        break;
    case 3:
        {
            y = CalcCircleXAsync(centerY, centerX, r, 1, 1, phase, asyncPhase);
            x = CalcCircleYAsync(centerY, centerX, r, 1, 1, phase, asyncPhase);
        }
        break;
    default:
        break;
}

lastX = x;
lastY = y;

if(async)
{
    asyncPhase += (destAsyncPhase - asyncPhase)/20;

    if(abs((destAsyncPhase - asyncPhase)/20) < abs(asyncPhaseSpd))
    {
        destAsyncPhase = asyncPhase;
        asyncPhase += asyncPhaseSpd;
    }
}

if(des)
{
    image_alpha = 0.3;
    scale += (-0.75 - scale) / 10;
    SetScale(scale, scale);
    if(scale <= 0)
        instance_destroy();
}
