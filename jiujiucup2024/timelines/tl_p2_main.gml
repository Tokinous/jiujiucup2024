#define 0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
DebugMusicPart(16.615);

ClearAllBrg();
screenFlash(10);

CameraRect(VIEW_OPERATION_RESET);

DrawBolcksDefault();

CreateBackGround(c_blue, 24*4);

with player
{
    x = 400;
    y = 608 - 128;
}

ParamChange(PARAM_CHANGE_TYPE_SLOPE_GRAVITY);

CameraRotate(VIEW_OPERATION_ROTATE_EASE, 15, 10);

BarrageColorChange(COLOR_CHANGE_TYPE_LINEAR, 0.75);
#define 173
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
CameraRotate(VIEW_OPERATION_ROTATE_EASE, -15, 10);
#define 265
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
CameraRotate(VIEW_OPERATION_ROTATE_EASE, 10, 10);
#define 311
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
CameraRotate(VIEW_OPERATION_ROTATE_EASE, -10, 10);
#define 346
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
CameraRotate(VIEW_OPERATION_ROTATE_EASE, 180, 10);

outerCircle = 2;
#define 369
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
CameraRotate(VIEW_OPERATION_ROTATE_EASE, 180 + 15, 10);
#define 542
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
CameraRotate(VIEW_OPERATION_ROTATE_EASE, 180 - 15, 10);
#define 635
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
CameraRotate(VIEW_OPERATION_ROTATE_EASE, 180 + 10, 10);
#define 681
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
CameraRotate(VIEW_OPERATION_ROTATE_EASE, 180 - 10, 10);
#define 715
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
CameraRotate(VIEW_OPERATION_ROTATE_EASE, 0, 10);
#define 738
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
outerCircle = 0;
curveBase = 0;

flag = 0;
alarm[0] = 0;

with p2bCircleToPlayer instance_destroy();

P2CreateDiamondCircle();

with p2bBlock instance_destroy();

CameraRotate(VIEW_OPERATION_ROTATE_EASE, -360, 10);
#define 1085
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
ParamChange(PARAM_CHANGE_TYPE_DISCRETE_MOVE);

instance_create(0, 0, p2bDiscreteBorder);
#define 1108
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
with player
{
    MoveToGrid(32);
    x += 17;
    y += 23;
}
with p2bCircle
{
    var inst;
    inst = CreateMoveOne(x, y, p2bDiscrete, 0, 0);
    inst.discreteDirection = choose(
        DISCRETE_MOVE_TYPE_RIGHT,
        DISCRETE_MOVE_TYPE_JUMP_RIGHT,
        DISCRETE_MOVE_TYPE_JUMP,
        DISCRETE_MOVE_TYPE_JUMP_LEFT,
        DISCRETE_MOVE_TYPE_LEFT,
        DISCRETE_MOVE_TYPE_FALL_LEFT,
        DISCRETE_MOVE_TYPE_FALL,
        DISCRETE_MOVE_TYPE_FALL_RIGHT
        );
    inst.image_alpha = image_alpha;

    instance_destroy();
}


alarm[1] = 1;
discreteTime = 23;
#define 1292
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
alarm[1] = 0;
alarm[1] = 1;
discreteTime = 12;
#define 1385
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
StopAllAlarm();
with p2bDiscreteBorder instance_destroy();

P2KickTheDanceFloor(0, 1);
#define 1390
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
P2KickTheDanceFloor(1, 2);
#define 1396
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
P2KickTheDanceFloor(0, 3);
#define 1402
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
P2KickTheDanceFloor(1, 4);
#define 1408
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
P2KickTheDanceFloor(0, 0);

ParamChange(PARAM_CHANGE_TYPE_JUMP, PLAYER_JUMP_RESTRICT_TIMES, 0);
#define 1431
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
with p2bPub
{
    if(y < 304)
        instance_destroy();
}
#define 1454
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
with p2bPub
{
    instance_destroy();
}
