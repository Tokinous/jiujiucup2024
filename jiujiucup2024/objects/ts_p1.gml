#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=303
applies_to=self
invert=0
arg0=tl_ts_p1
arg1=0
*/
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
s = 16;
//yOffset = 120;
//yOffset = random_range(120, 150);

dd1 = random(360);
dd2 = random(360);
dd3 = random(360);
ddspd = 7;

ty1 = 608;
ty2 = 608;
ty3 = 608;

t1 = 30;
t2 = 60;
t3 = 90;

pt = 2;
py = 2;

alarm[0] = 519;
alarm[2] = 754;
alarm[1] = 988;

xx1 = 0;
xx2 = 0;
xx3 = 0;

yy1 = 0;
yy2 = 0;
yy3 = 0;

slideIndex = 0;
slideTime = 4;
slideCount = 0;

endFlag = 0;
endY = 608;

yOffset = random_range(120, 150);
yy1 = 608 - ty1;
xx1 = 400 + 3*s*sin(-1000/(yy1+yOffset));

yOffset = random_range(120, 150);
yy2 = 608 - ty2;
xx2 = 400 + 4*s*cos(1000/(yy2+yOffset));

yOffset = random_range(120, 150);
yy3 = 608 - ty3;
xx3 = 400 + 3.5*s*sin(1000/(yy3+yOffset)+30);

frontAlpha = 1;
#define Alarm_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
yy1 = 608 - ty1;

xx1 = 400 + 3*s*sin(-1000/(yy1+yOffset));
instance_create(xx1, 608 - yy1, ts_p1_b1);

//createMoveOne(xx1, 608 - yy1, ts_p1_b1, 0, dd1);
//dd1 += ddspd;

ty1 -= py;

alarm[0] = pt;
#define Alarm_1
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
yy2 = 608 - ty2;

xx2 = 400 + 4*s*cos(1000/(yy2+yOffset));
instance_create(xx2, 608 - yy2, ts_p1_b1);

//createMoveOne(xx2, 608 - yy2, ts_p1_b1, 0, dd2);
//dd2 += ddspd;

ty2 -= py;

alarm[1] = pt;
#define Alarm_2
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
yy3 = 608 - ty3;

xx3 = 400 + 3.5*s*sin(1000/(yy3+yOffset)+30);
instance_create(xx3, 608 - yy3, ts_p1_b1);

//createMoveOne(xx3, 608 - yy3, ts_p1_b1, 0, dd3);
//dd3 += ddspd;

ty3 -= py;

alarm[2] = pt;
#define Alarm_3
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
slideIndex += 1;
slideIndex = slideIndex mod 3;

slideCount -= 1;
if(slideCount < 0)
{
    return alarm[3]=0;
}

alarm[3] = slideTime;

switch (slideIndex)
{
    case 0:
    {
        x = xx1;
        y = 608 - yy1;

        break;
    }
    case 1:
    {
        x = xx2;
        y = 608 - yy2;

        break;
    }
    case 2:
    {
        x = xx3;
        y = 608 - yy3;

        break;
    }
    default:
        break;
}

if (y <= 0)
y = 0;

setBaseBrgProp(SelectColor_ts("cyanine"), random_range(0.25, 0.75));
polygon(16, random_range(0.5, 1), 2, ts_p1_b2, random(360));
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if (endFlag)
{
    endY -= 29.25;

    with ts_p1_b1
    {
        if(y >= ts_p1.endY)
        {
            if(!endFlag)
            {
                speed = random(1.5);
                direction = random(360);
                endFlag = 1;
            }
        }
    }

    with ts_p1_b2
    {
        if(y >= ts_p1.endY)
        {
            endFlag = 1;
            //instance_destroy();
        }
    }

    with block
    {
        if(y <= (608 - ts_p1.endY) && !sp)
        {
            BlockDisappear();
        }
    }

}

frontAlpha -= 1/1683;
#define Draw_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
draw_set_alpha(frontAlpha);
draw_rectangle_color(0, 0, 800, 608, c_black, c_black, c_black, c_black, 0);
draw_set_alpha(1);
