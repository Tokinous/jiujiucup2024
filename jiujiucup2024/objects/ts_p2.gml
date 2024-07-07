#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=303
applies_to=self
invert=0
arg0=tl_ts_p2
arg1=0
*/
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
with camera instance_destroy();

alarm[0] = 7;

type = 1;

mid = 0;
btm = 0;

dt = 8;

viewSpd = 1;
blockRange = 1;

helix = 0;
centerX = 0;
centerY = 0;
r = 0;
phase = 0;
phaseSpd = 5;
helixSpd = 8;

blockDesX = 0;

chairFlag = 1;
chairPhase = 0;
chairPhaseR = 180;

endRange = 0;
endPhase = 0;
endNum = 16;
#define Alarm_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if (1 == type)
{
    dualCircle(ts_p2_b1, 8);

    //bgchair_p2();
}
if (2 == type)
{
    //bgchair_p2();

    corrupt_p2();

    //dualCircle_aim(ts_p2_b5, 16);
}
if (3 == type)
{
    //bgchair_p2();

    skyCorrupt_line_p2();

    with ts_p2_b1
    {
        if((id mod 2 == choose(0, 1)) && (vspeed > 1))
        {
            setBaseBrgProp(SelectColor_ts("cyanine"), random_range(0.25, 0.75));
            createMoveOne(x, y, ts_pub_brg, random(1), random(360));
        }
    }
}
if (4 == type)
{
    dualCircle(ts_p2_b1_white, 6);
}

alarm[1] = 22;
alarm[0] = 59;
#define Alarm_1
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if (1 == type)
{
    dualCircle(ts_p2_b1, 8);

    //bgchair_p2();
}
if (2 == type)
{
    //bgchair_p2();

    corrupt_p2();

    //dualCircle_aim(ts_p2_b5, 16);
}
if (3 == type)
{
    //bgchair_p2();

    skyCorrupt_line_p2();

    with ts_p2_b1
    {
        if((id mod 2 == choose(0, 1)) && (vspeed > 1))
        {
            setBaseBrgProp(SelectColor_ts("cyanine"), random_range(0.25, 0.75));
            createMoveOne(x, y, ts_pub_brg, random(1), random(360));
        }
    }
}
if (4 == type)
{
    dualCircle(ts_p2_b1_white, 6);
}

alarm[2] = 18;
#define Alarm_2
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if (1 == type)
{
    dualCircle(ts_p2_b1, 8);

    //bgchair_p2();
}
if (2 == type)
{
    //bgchair_p2();

    corrupt_p2();

    //dualCircle_aim(ts_p2_b5, 16);
}
if (3 == type)
{
    //bgchair_p2();

    skyCorrupt_line_p2();

    with ts_p2_b1
    {
        if((id mod 2 == choose(0, 1)) && (vspeed > 1))
        {
            setBaseBrgProp(SelectColor_ts("cyanine"), random_range(0.25, 0.75));
            createMoveOne(x, y, ts_pub_brg, random(1), random(360));
        }
    }
}
if (4 == type)
{
    dualCircle(ts_p2_b1_white, 6);
}
#define Alarm_3
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if (2 == type)
{
    //bgchair_p2();

    corrupt_p2();

    //dualCircle_aim(ts_p2_b5, 16);
}
if (3 == type)
{
    //bgchair_p2();

    skyCorrupt_line_p2();

    with ts_p2_b1
    {
        if((id mod 2 == choose(0, 1)) && (vspeed > 1))
        {
            setBaseBrgProp(SelectColor_ts("cyanine"), random_range(0.25, 0.75));
            createMoveOne(x, y, ts_pub_brg, random(1), random(360));
        }
    }
}
#define Alarm_4
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
/*
var inst;

setBaseBrgProp(SelectColor_ts("cyanine"), 1);

repeat(10)
{
    inst = createMoveOne(random_range(view_xview[0], view_xview[0] + 800), view_yview[0] + 608, ts_p2_b1, -random(dt), 270);
    //inst.gravity = 0.2;
    //inst.gravity_direction = 270;
    inst.scale = 0.75;
    inst.alarm[0] = 1;
}
dt += 0.4;

alarm[4] = 7;
#define Alarm_5
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if(0 < helix)
{
    alarm[5] = 1;

    var xx, yy, inst, n, ii;
    ii = 0;

    //setBaseBrgProp(SelectColor_ts("white"), 0.75);
    repeat(4)
    {
        xx = centerX + r*cos(degtorad(phase + 90*ii));
        yy = centerY - r*sin(degtorad(phase + 90*ii));
        ii += 1;

        createMoveOne(xx, yy, ts_p2_b2, 1.2, 270);
    }

    centerY -= helixSpd;
    phase += phaseSpd;

    r -= 1.5;
}
else if(0 == helix)
{
    setBaseBrgProp(SelectColor_ts("white"), 0.75);

    var rd, rs;
    rd = random(360);
    rs = random_range(1, 1.25);

    x = centerX;
    y = centerY;

    polygon(4, rs, 20, ts_pub_brg, rd);
    polygon(4, rs, 20, ts_pub_brg, rd + 45);

    screenFlash(33);

    helix = -1;
}

helix -= 1;
#define Alarm_6
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
var initPhase, ii, inst;
ii = 0;
//inst = createCircle(x, y, endRange, ts_pub_brg, 16, endPhase, 0,  0);
//inst.p2endflag = 1;

endPhase +=1;
endRange += 800/66;

alarm[6]=1;

with ts_p2_bsin
{
    if(point_distance(x,y,ts_p2.x,ts_p2.y) < ts_p2.endRange)
    {
        instance_destroy();
    }
}

with ts_p2_b1_white
{
    if(point_distance(x,y,ts_p2.x,ts_p2.y) < ts_p2.endRange)
    {
        instance_destroy();
    }
}
/*
with ts_pub_brg
{
    if((point_distance(x,y,ts_p2.x,ts_p2.y) < ts_p2.endRange) && (p2endflag != 1))
    {
        instance_destroy();
    }
}
#define Alarm_7
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
x = 400;
y = view_yview[0] + 128;

polygon(24, 8, 2, ts_p2_bcreep, 0, 1);
polygon(24, 8, 2, ts_p2_bcreep, 0, -1);

alarm[7] = 59;
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
view_yview[0] -= viewSpd;

/*
if (view_yview[0] <= -( blockRange - 1 )*608)
{
    DrawBlocksAnime(128, -blockRange*608 - (608 - 448) - 8*32, "h", 5, 1);
    DrawBlocksAnime(512, -blockRange*608 - (608 - 448) - 8*32, "h", 5, 1);
    DrawBlocksAnime(320, -blockRange*608 - (608 - 320) - 7*32, "h", 5, 1);

    blockRange += 1;
}
*/

with block
{
    if(y > view_yview[0] + 608 + 32)
    {
        instance_destroy();
    }
}
