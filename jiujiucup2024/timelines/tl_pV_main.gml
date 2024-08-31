#define 0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
DebugMusicPart(60.923);

ParamChange(PARAM_CHANGE_TYPE_RESET);
ParamChange(PARAM_CHANGE_TYPE_VISIBILITY, 0);

BarrageColorChange(COLOR_CHANGE_TYPE_LINEAR, 0.5);

Polygon(player.x, player.y, 8, 16, 2, pVbHint, random(360));
#define 22
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
PVP1(0);
#define 46
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
PVP1(1);
#define 69
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
PVP1(2);
#define 92
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
PVP1(3);
#define 115
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
PVP1(4);
#define 139
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
with pVbStop
{
    speed = tempSpd * 5;
    alarm[0] = 4;
}

with pV
{
    x = 400;
    y = 304;
    offset = point_direction(x, y, player.x, player.y);

    alarm[0] = 0;
}

PVMoveToSquare(pV.x, pV.y, offset, 16, 24);

PVMoveToSquare(pV.x, pV.y, offset + 45, 16, 24);
#define 150
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
with pVbStop
{
    speed = tempSpd;
    alarm[0] = 4;
}


with pV
{
    x = 400;
    y = 304;
    //offset = point_direction(x, y, player.x, player.y);

    alarm[0] = 0;
}

PVMoveToSquare(pV.x, pV.y, offset, 24, 32);

PVMoveToSquare(pV.x, pV.y, offset + 45, 24, 32);
#define 161
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
ClearAllBrg();

PVCreateCricleLaser(400, 304, 8, offset);

screenShake(4, 16, 16);

Polygon(player.x, player.y, 8, 16, 2, pVbHint, random(360));
#define 208
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
PVP2(0);
#define 232
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
PVP2(1);
#define 255
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
PVP2(2);
#define 278
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
PVP2(3);
#define 301
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
PVP2(4);
#define 323
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
alarm[1] = 0;
