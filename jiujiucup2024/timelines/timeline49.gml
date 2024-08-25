#define 0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
DebugMusicPart(46.153);

BarrageColorChange(COLOR_CHANGE_TYPE_LINEAR, 0.5);
#define 23
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
PVCreateDelayLine(player.x, 304, 90);
PVCreateDelayLine(player.x, 64*2, 0);
#define 46
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
PVCreateDelayLine(player.x, 304, 90);
PVCreateDelayLine(player.x, 64*3, 0);
#define 69
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
PVCreateDelayLine(player.x, 304, 90);
PVCreateDelayLine(player.x, 64*4, 0);
#define 92
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
PVCreateDelayLine(player.x, 304, 90);
PVCreateDelayLine(player.x, 64*5, 0);
#define 115
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
PVCreateDelayLine(player.x, 304, 90);
PVCreateDelayLine(player.x, 64*6, 0);
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
