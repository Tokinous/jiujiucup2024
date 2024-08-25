#define 0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
DebugMusicPart(46.153);

ParamChange(PARAM_CHANGE_TYPE_RESET);
ParamChange(PARAM_CHANGE_TYPE_VISIBILITY, 0);

BarrageColorChange(COLOR_CHANGE_TYPE_LINEAR, 0.5);

Polygon(player.x, player.y, 8, 16, 2, pVbHint, random(360));
//instance_create(player.x, player.y, pVPlayerHinter);
#define 23
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
alarm[0] = 1;
#define 139
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
with pV
{
    //x = player.x;
    //y = player.y;
    x = 400;
    y = 304;
    offset = point_direction(x, y, player.x, player.y);

    alarm[0] = 0;
}

PVMoveToSquare(pV.x, pV.y, offset);
#define 150
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
PVMoveToSquare(pV.x, pV.y, offset + 45);
#define 161
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
//PVCreateCricleLaser(400, 304, 8, point_direction(400, 304, player.x, player.y));

ClearAllBrg();

PVCreateCricleLaser(400, 304, 8, offset);

screenShake(4, 16, 16);

Polygon(player.x, player.y, 8, 16, 2, pVbHint, random(360));
//instance_create(player.x, player.y, pVPlayerHinter);
