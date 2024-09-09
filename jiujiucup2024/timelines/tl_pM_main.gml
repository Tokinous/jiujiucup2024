#define 0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
DebugMusicPart(68.307);

BarrageColorChange(COLOR_CHANGE_TYPE_LINEAR, 0.5);

//debug
if(room != rAvoidance && room != r20HP)
{
    var objBg;
    objBg = instance_create(0, 0, arcadeBg);
    objBg.t = 46;
    objBg.alarm[0] = 1;

    with pVbSpinLaser flag = 1;

    with pVbStop instance_destroy();
    with pVbPub instance_destroy();

    screenShake(4, 16, 16);

    DrawBolcksDefault();

    DrawBlocks(0, 288, BLOCK_DRAW_DIRECTION_HORIZONAL, 25);

    DrawBlocks(384, 0, BLOCK_DRAW_DIRECTION_VERTICAL, 19);

    with player
    {
        x = 100;
        y = 608 - 150;
        Polygon(x, y, 8, 16, 2, pVbHint, random(360));
    }

    ParamChange(PARAM_CHANGE_TYPE_NUMBER, 4);

    instance_create(100, 304 + 16 - 150, pMPlayer);
    instance_create(400 - 16 + 100, 304 + 16 - 150, pMPlayer);
    instance_create(400 - 16 + 100, 608 - 150, pMPlayer);

    with pMPlayer
    {
        Polygon(x, y, 8, 16, 2, pVbHint, random(360));
    }
}
#define 22
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
alarm[0] = 1;
#define 138
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
alarm[0] = 0;

with pMbCricle
{
    if(tag == 1)
        flag = 1;
}
#define 150
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
with pMbCricle
{
    if(tag == 2)
        flag = 1;
}
#define 162
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
with pMbCricle
{
    if(tag >= 3)
        flag = 1;
}

screenShake(4, 16, 16);

index = 0;
#define 207
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
alarm[1] = 1;
#define 277
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
alarm[1] = 0;

CameraRotate(VIEW_OPERATION_ROTATE_EASE, -120, 70);
#define 346
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
with pMbLine
{
    //SetScale(2, 2);
    //flag = 1;
}
