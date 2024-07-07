#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=303
applies_to=self
invert=0
arg0=tl_ts_p3
arg1=0
*/
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
with camera instance_destroy();

viewSpd = 1;

anchorBase = 0;

//riseBgCount = 50;

alarm[0] = 1;
count = 0;

alarm[1] = 16;
#define Alarm_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
alarm[0] = 1;

polygon(8, 10, 2, ts_p3_bpath, 0, 1);
polygon(8, 10, 2, ts_p3_bpath, 0, -1)

count += 1;

with ts_p3_bpath
{
    pathType = 0;
}

if(count >= 24)
    alarm[0] = 0;

createCircle(x, y, 325, ts_p3_bpath, 8, -1, 10, 22.5, 1);
createCircle(x, y, 325, ts_p3_bpath, 8, -1, 10, 22.5, -1);
#define Alarm_1
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
alarm[1] = 64;

with ts_p3_bpath
{
    if(shootFlag)
    {
        if((id mod 6) == irandom(3))
        {
            setBaseBrgProp(SelectColor_ts("cyanine"), random_range(0.25, 0.75));
            createMoveOne(x, y, ts_pub_brg, random(1), random(360));
        }
    }
}
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
view_yview[0] -= 1;

BgManage_p3();

/*
x = view_xview[0] + view_wview[0] / 2;
y = view_yview[0] + view_hview[0] / 2;
