#define 0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
DebugMusicPart(16.151);

ClearAllBrg();
screenFlash(10);

DrawBlocks(-32, 0, BLOCK_DRAW_DIRECTION_HORIZONAL, 27);

DrawBlocks(-32, 608 - 32, BLOCK_DRAW_DIRECTION_HORIZONAL, 27);

DrawBlocks(-32, 0, BLOCK_DRAW_DIRECTION_VERTICAL, 19);

DrawBlocks(800, 0, BLOCK_DRAW_DIRECTION_VERTICAL, 19);

CameraRect(VIEW_OPERATION_RESET);

CreateBackGround(c_blue, 24*4);

with player
{
    x = 400;
    y = 608 - 128;
}

ParamChange(PARAM_CHANGE_TYPE_JUMP, PLAYER_JUMP_RESTRICT_TIMES, 2);

P2CreateRunningBlockBrg();
#define 173
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
curveBase = 2.5;
#define 265
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
curveFlag *= -1;
#define 346
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
/*
curveBase = 5;
curveFlag *= -1;
#define 359
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
/*
curveFlag *= -1;
#define 369
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
curveBase = 0;
#define 542
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
curveBase = 2.5;
#define 634
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
curveFlag *= -1;
#define 715
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
/*
curveBase = 5;
curveFlag *= -1;
#define 728
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
/*
curveFlag *= -1;
#define 738
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
curveBase = 0;

flag = 0;
alarm[0] = 0;

with p2bCircleToPlayer instance_destroy();

P2CreateDiamondCircle();

with p2bBlock instance_destroy();
#define 1085
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
ParamChange(PARAM_CHANGE_TYPE_DISCRETE_MOVE);
#define 1108
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
with p2bCircle
{
    if(image_alpha >= 1)
    {
        CreateMoveOne(x, y, p2bDiscrete, 0, 0);
    }

    instance_destroy();
}
