#define 0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
DebugMusicPart(120);
//debug
if(room == r_pCU)
{
    with block instance_destroy();
    instance_create(0, 0, colorManager);
    window_mouse_set(400, 304);
    ParamChange(PARAM_CHANGE_TYPE_MOUSE_INPUT);
    BarrageColorChange(COLOR_CHANGE_TYPE_LINEAR, 0.5);

    with player
    {
        x = 400;
        y = 304;

        hspeed = 0;
        vspeed = 0;
        gravity = 0;
    }

}

CameraRect(VIEW_OPERATION_RESET);

with block instance_destroy();
with show_param_change instance_destroy();

var objBg;
objBg = instance_create(0, 0, arcadeBg);
objBg.t = 46;
objBg.alarm[0] = 1;

var i;
for(i = 1; i <= 5; i += 1)
{
    PCUCreatePolySix(power(i, 1.1) * 80, i);
}

alarm[0] = 23;
#define 137
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
alarm[0] = 0;
#define 138
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
with (pCbCircle)
{
    if(type == 0)
    {
        instance_create(x, y, pCUbScale);
        instance_destroy();
    }
}
#define 150
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
with (pCbCircle)
{
    if(type == 1)
    {
        instance_create(x, y, pCUbScale);
        instance_destroy();
    }
}
#define 162
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
PCUCreatePolyArr();

window_mouse_set(400, 12);
Polygon(400, 12, 32, 24, 2, pVbHint, random(360));
#define 208
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
alarm[1] = 1;
index = 1;
#define 323
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
alarm[1] = 0;

with (pCUbLine2)
{
    instance_create(x, y, pCUbScale);
    instance_destroy();
}

with pCUbLine
{
    flag = 1;
    if(xSpeed >= 0)
        destRecordX = recordX + 1600;
    else
        destRecordX = recordX - 1600;
}
#define 346
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
with (pCUbLine)
{
    instance_create(x, y, pCUbScale);
    instance_destroy();
}

with pCUbScale image_alpha = 0.35;

ParamChange(PARAM_CHANGE_TYPE_RESET);

DrawBlocks(-32, 608 - 12, BLOCK_DRAW_DIRECTION_HORIZONAL, 30);
