#define 0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
DebugMusicPart(75.692);

ClearAllBrg();

PRCreatePolygon();

CameraRotate(VIEW_OPERATION_ROTATE_RESET);
CameraRect(VIEW_OPERATION_RESET);

with block instance_destroy();

DrawBolcksDefault();

with arcadeBg instance_destroy();
with arcadeBgSquare instance_destroy();

with colorManager instance_destroy();

with pMPlayer instance_destroy();

ParamChange(PARAM_CHANGE_TYPE_HITBOX, PLAYER_HITBOX_TYPE_DOTKID);

screenFlash(4);

instance_create(0, 0, pRBg);
#define 81
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
PRCreatePolygon();
#define 127
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
PRCreatePolygon();
#define 162
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
PRCreatePolygon();
#define 185
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
PRCreatePolygon();
#define 242
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
PRCreatePolygon();
#define 265
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
PRCreatePolygon();
#define 323
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
PRCreatePolygon();
#define 335
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
PRCreatePolygon();
#define 346
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
PRCreatePolygon();
#define 358
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
PRCreatePolygon();
#define 369
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
PRCreatePolygon();
#define 450
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
PRCreatePolygon();
#define 496
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
PRCreatePolygon();
#define 531
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
PRCreatePolygon();
#define 554
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
PRCreatePolygon();
#define 612
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
PRCreatePolygon();
#define 635
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
PRCreatePolygon();
#define 692
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
PRCreateCircle();

with pRBg flag = 1;
#define 741
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
with pRbCross flag = 1;
#define 1108
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
PRCreateAsyncCircle();
#define 1292
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
with pRbCircle2
{
    rFlag = 1;
    xoffFlag *= -1;
    asyncPhaseSpd *= -1;
}
#define 1454
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
instance_create(0, 0, pRFrontGFadeIn);
#define 1477
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
instance_create(0, 0, colorManager);

with pRbCircle2
{
    if(image_xscale <= 1)
    {
        image_alpha = 0.3;
    }

    phaseSpd *= 1.25;
    asyncPhaseSpd *= 1.25;
    xoffFlag *= 1.25;

    destR *= 2.35;
}

BarrageColorChange(COLOR_CHANGE_TYPE_LINEAR, 0.5);

var objBg;
objBg = instance_create(0, 0, arcadeBg);
objBg.t = 13;
objBg.alarm[0] = 1;

screenFlash(6);

with block instance_destroy();

DrawBlocks(-32, 0, BLOCK_DRAW_DIRECTION_HORIZONAL, 30);

DrawBlocks(-32, 608 - 32, BLOCK_DRAW_DIRECTION_HORIZONAL, 30);

ParamChange(PARAM_CHANGE_TYPE_RESET);

ParamChange(PARAM_CHANGE_TYPE_V6, -(608 - 32 - 11 - (32 + 10)) / 46);

with player
{
    y = 608 - 32 - 11;
}

flag = 1;
//alarm[0] = 23;
#define 1846
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
with arcadeBg t = 6;

//ParamChange(PARAM_CHANGE_TYPE_V6, -(608 - 32 - 11 - (32 + 10)) / 23);

screenShake(2031 - 1846, 6, 6);

t = 23;
#define 2031
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
with arcadeBg t = 3;

range = 128;

screenShake(2123 - 2031, 10, 10);
#define 2123
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
flag = 0;

with arcadeBg instance_destroy();

with pRbCircle2 des = 1;

instance_create(0, 0, pCHelper);

CameraRect(VIEW_OPERATION_SCALE_LINEAR_DECREASE, 0.25, -0.05);
#define 2158
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
//ParamChange(PARAM_CHANGE_TYPE_MOUSE_INPUT);
#define 2181
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
ParamChange(PARAM_CHANGE_TYPE_MOUSE_INPUT);

with pCHelper instance_destroy();
#define 2192
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
/*
var inst;
inst = instance_create(0, 0, pRFrontGFadeIn);
inst.lastTime = -1;
