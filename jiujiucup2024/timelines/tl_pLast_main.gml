#define 0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
DebugMusicPart(142.153);

ParamChange(PARAM_CHANGE_TYPE_JUMP, PLAYER_JUMP_RESTRICT_INFINITE);
#define 23
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
PMCreateCircleArr(400, 304, 100, random(360), -1, 1);
#define 34
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
PVCreateDelayLine(400, 608 / 6 * 1, 0, -1);
#define 46
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
PMCreateCircleArr(400, 304, 200, random(360), 1, 1);
#define 57
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
PVCreateDelayLine(400, 608 / 6 * 2, 0, -1);
#define 69
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
PMCreateCircleArr(400, 304, 300, random(360), -1, 1);
#define 80
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
PVCreateDelayLine(400, 608 / 6 * 3, 0, -1);
#define 92
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
PMCreateCircleArr(400, 304, 400, random(360), 1, 1);
#define 103
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
PVCreateDelayLine(400, 608 / 6 * 4, 0, -1);
#define 115
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
PMCreateCircleArr(400, 304, 500, random(360), -1, 1);
#define 126
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
PVCreateDelayLine(400, 608 / 6 * 5, 0, -1);
#define 161
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
var i;

for(i = 2; i <= 4; i += 1)
{
    P1OutsideArcCircle(100 * i, 100 * i, power(-1, i));
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
PCCreateRandomStar(9, 200, choose(2, 3), 36, random(360), pCbDelay);
#define 230
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
PCCreateRandomStar(9, 300, choose(2, 3), 36, random(360), pCbDelay);
#define 253
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
PCCreateRandomStar(9, 400, choose(2, 3), 36, random(360), pCbDelay);
#define 277
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
with p1bCircleOutside destR *= -1;
#define 346
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
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
