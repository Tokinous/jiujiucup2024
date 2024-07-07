#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=303
applies_to=self
invert=0
arg0=
arg1=0
*/
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
DrawBlocks(0, 0, "h", 25);

DrawBlocks(0, 608 - 32, "h", 25);

DrawBlocks(0, 0, "v", 19);

DrawBlocks(800 - 32, 0, "v", 19);

DrawBlocks(96 + 16, 448, "h", 6, 1);

DrawBlocks(512 - 16, 448, "h", 6, 1);

instance_create(player.x, player.y, obj_dotkid);

curTime = 0;

var ri;
ri = irandom_range(1000, 2000);
//ri = 1641;

if(ri == 1641)
    wumMode = true;

instance_create(0, 0, objwum);
//click_ignore_to_wum_mode = 1/(ri - 1064);
#define Alarm_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
//background barrage

alarm[0] = 1;

instance_create(random(800), view_yview[0] + 608, ts_brg_bg);
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
curTime += 1;

if(curTime > global.bestRecord)
{
    global.bestRecord = curTime;
}

if(wumMode)
{
    manageGlobalBrgSpr(wumsmall);
}
