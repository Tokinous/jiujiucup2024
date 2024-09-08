#define 0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
DebugMusicPart(127.384);
//debug
if(room == r_pNoneGrav)
{
    with block instance_destroy();
    DrawBlocks(-32, 608 - 12, BLOCK_DRAW_DIRECTION_HORIZONAL, 30);
}

ParamChange(PARAM_CHANGE_TYPE_GRAVITY);

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
with pNGbEase
{
    y -= 48;
    destY -= 48;
}
#define 150
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
with pNGbEase
{
    y -= 48;
    destY -= 48;
}
#define 162
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
with pNGbEase
{
    y -= 304 - 48 - 48 - 16;
    destY -= 304 - 48 - 48 - 16;
}
#define 208
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
alarm[1] = 1;
index = 0;
#define 277
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
alarm[1] = 0;
