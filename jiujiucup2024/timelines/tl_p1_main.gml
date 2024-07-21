#define 0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
alarm[0] = 92;

DrawBlocks(0, 0, BLOCK_DRAW_DIRECTION_HORIZONAL, 25);

DrawBlocks(0, 608 - 32, BLOCK_DRAW_DIRECTION_HORIZONAL, 25);

DrawBlocks(0, 0, BLOCK_DRAW_DIRECTION_VERTICAL, 19);

DrawBlocks(800 - 32, 0, BLOCK_DRAW_DIRECTION_VERTICAL, 19);
#define 438
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
ParamChange(PARAM_CHANGE_TYPE_JUMP, PLAYER_JUMP_RESTRICT_INFINITE);

//CameraRect(VIEW_OPERATION_SCALE_EASE, 1.5, 10);
P1FadeInFrontG();

P1OutsideArcCircle(700, 500, 1);
P1OutsideArcCircle(500, 300, -1);
P1OutsideArcCircle(900, 700, -1);
#define 462
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
CameraRect(VIEW_OPERATION_SCALE_STATIC, 1.5);

screenFlash(24);

with block instance_destroy();

with p1b1 instance_destroy();
with p1b12 instance_destroy();
with p1b2 instance_destroy();
with p1bCircle instance_destroy();

insaneFlag += 1;
#define 737
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
alarm[0] = 0;
with p1sub1 instance_destroy();

with p1bCircleOutside destR *= -1;
#define 808
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
with player
{
    x = 400;
    y = 304;
}

CameraRect(VIEW_OPERATION_SCALE_LINEAR_DECREASE, 0.25, -0.05);
#define 831
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
ClearAllBrg();
screenFlash(10);
