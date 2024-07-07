#define 0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
DebugMusicPart(33.658);

var ii;
ii = 1;

type = 1;

repeat(9)
{
    DrawBlocksAnime(128 - 16, 448 - 8*32*ii, "h", 6, 1);
    DrawBlocksAnime(512 - 16, 448 - 8*32*ii, "h", 6, 1);
    DrawBlocksAnime(320 - 16, 320 - 8*32*(ii - 1), "h", 6, 1);
    ii += 1;
}
#define 7
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
/*
//p2 subs
var i1, i2;
i1 = instance_create(0, 608, ts_p2_sub);
i2 = instance_create(800, 608, ts_p2_sub);

i1.destY = view_yview[0] + 608 - 304;
i1.flag = 1;
i2.destY = view_yview[0] + 608 - 304;
i2.flag = -1;
#define 66
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
//alarm[7] = 1;
#define 241
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
alarm[7] = 1;
type = 0;
#define 475
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
type += 3;
#define 585
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
alarm[7] = 0;
#define 841
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
alarm[4] = 1;

helix_p2();
#define 900
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
global.maxId = 0;

with all
{
    if(id > global.maxId) global.maxId = id;
}
#define 937
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
StopAllAlarm();
screenFlash(33);

setBaseBrgProp(SelectColor_ts("white"), 0.75);

with ts_p2_b1
{
    setBaseBrgProp(SelectColor_ts("white"), image_xscale);
    createMoveOne(x, y, ts_pub_brg, image_xscale, random(360));
    instance_destroy();
}

with ts_pub_brg
{
    if(id < global.maxId)
    {
        setBaseBrgProp(SelectColor_ts("white"), image_xscale);
        createMoveOne(x, y, ts_pub_brg, image_xscale, random(360));
        instance_destroy();
    }
}

with ts_p2_bsin
{
    if(image_alpha >= 0.9)
    setBaseBrgProp(SelectColor_ts("white"), image_xscale);
    createMoveOne(x, y, ts_pub_brg, image_xscale, random(360));
    instance_destroy();
}

viewSpd = 0.51;
#define 1076
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
helix_p2();
#define 1225
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
blockDesX = gushagusha();
#define 1240
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
blockDesX = gushagusha();
#define 1254
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
blockDesX = gushagusha();
#define 1269
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
blockDesX = gushagusha()
#define 1284
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
blockDesX = gushagusha();
#define 1310
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
helix_p2();
#define 1405
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
//type += 1;
type = 4;
alarm[0] = 1;

//SetBackgroundBrg(1);
#define 1544
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
helix_p2();
#define 1872
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
alarm[0] = 0;
alarm[1] = 0;
alarm[2] = 0;
alarm[3] = 0;
alarm[4] = 0;
alarm[5] = 0;

x = 400;
y = view_yview[0] + 608;
//alarm[6] = 2;

screenFlashEx(1, 50, 114514);

polygon(16, 700/66, 2, ts_p2_b4, dirCurToPlayer());
#define 1888
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
with ts_p2_b4
{
    createMoveOne(x, y, ts_p2_b4, 800/66,point_direction(ts_p2.x, ts_p2.y, x, y)+30);
    createMoveOne(x, y, ts_p2_b4, 800/66,point_direction(ts_p2.x, ts_p2.y, x, y)-30);
    instance_destroy();
}
#define 1902
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
with ts_p2_b4
{
    createMoveOne(x, y, ts_p2_b4, 800/66,point_direction(ts_p2.x, ts_p2.y, x, y)+30);
    createMoveOne(x, y, ts_p2_b4, 800/66,point_direction(ts_p2.x, ts_p2.y, x, y)-30);
    instance_destroy();
}
#define 1917
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
/*
with ts_p2_b4
{
    createMoveOne(x, y, ts_p2_b4, 800/66,point_direction(ts_p2.x, ts_p2.y, x, y)+30);
    createMoveOne(x, y, ts_p2_b4, 800/66,point_direction(ts_p2.x, ts_p2.y, x, y)-30);
    instance_destroy();
}
