#define 0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
DebugMusicPart(134.769);

//debug
if(room == r_pC)
{
    instance_create(0, 0, colorManager);
    BarrageColorChange(COLOR_CHANGE_TYPE_LINEAR, 0.5);

    var objBg;
    objBg = instance_create(0, 0, arcadeBg);
    objBg.t = 46;
    objBg.alarm[0] = 1;
}

//CameraRect(VIEW_OPERATION_SCALE_STATIC, 1.25);
screenFlash(12);
with block instance_destroy();
ParamChange(PARAM_CHANGE_TYPE_CENTER_MOVE);

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
PCGOuterCircle(128 + 16, 48, 1);
#define 150
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
PCGOuterCircle(256 + 64, 128, -1);
#define 162
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
with pCGbCircle
{
    image_alpha = 1;
    shadow = 1;
    des = 1;
    destR = r - 64;
    destPhase = phase + 128 * flag;
}

screenShake(4, 8, 8);

with pCbPub instance_destroy();
#define 208
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
alarm[1] = 1;
#define 323
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
alarm[1] = 0;

var i;

for(i = 0; i < 5; i += 1)
{
    PCGOuterCircle(96 * i + 16, 32 + i * 10, power(-1, i));
}
#define 346
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
with pCGbCircle
{
    instance_create(x, y, pCUbScale);
    instance_destroy();
}

with pCbPub instance_destroy();

ParamChange(PARAM_CHANGE_TYPE_RESET);
screenShake(4, 8, 8);

instance_destroy();
