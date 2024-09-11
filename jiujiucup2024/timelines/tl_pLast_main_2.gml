#define 0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
DebugMusicPart(142.153);

ParamChange(PARAM_CHANGE_TYPE_JUMP, PLAYER_JUMP_RESTRICT_INFINITE);

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
var i;
for(i = 2; i <= 4; i += 1)
{
    PMCreateCircle(400, 304, 128, 100 * i, random(360), power(-1 ,i), 1);
}
#define 161
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
with pMbLine instance_destroy();

alarm[0] = 0;
index = 1;

var i;

for(i = 2; i <= 4; i += 1)
{
    P1OutsideArcCircle(100 * i, 100 * i, power(-1, i));
}

with pMbCricle
{
    if(tag == 1)
        flag = 1;
}

with p1bCircleOutside
{
    image_xscale = 0.5;
    image_yscale = 0.5;
}

PVCreateCricleLaser(400, 304, 8, 0);

screenShake(4, 8, 8);

with pMbCricle
{
    instance_destroy();
}
#define 207
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
alarm[1] = 1;
#define 276
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
alarm[1] = 0;
#define 277
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
with p1bCircleOutside destR *= -1;
#define 369
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
ClearAllBrg();
ParamChange(PARAM_CHANGE_TYPE_RESET);
with player
{
    x = 400;
    y = 608 - 64;
}
CameraRotate(VIEW_OPERATION_ROTATE_RESET);
screenFlash(23 * 4);
DrawBlocks(-32, 608 - 32, BLOCK_DRAW_DIRECTION_HORIZONAL, 30);
with arcadeBg instance_destroy();
with arcadeBgSquare instance_destroy();

if(room == rAvoidance)
{
    var objwarp;
    objwarp = instance_create(400 - 16, 608 - 128 - 16, warp);
    objwarp.roomTo = rEnd;
}

instance_destroy();
