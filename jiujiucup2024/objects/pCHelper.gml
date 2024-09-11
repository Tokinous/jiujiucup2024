#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
with player playerMoveType = PLAYER_MOVE_TYPE_NONE;
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
var tmpMouseX, tmpMouseY;

tmpMouseX = mouse_x;
tmpMouseY = mouse_y;

tmpMouseX += (400 - tmpMouseX) / 10;
tmpMouseY += (304 - tmpMouseY) / 10;

window_views_mouse_set(tmpMouseX, tmpMouseY);

with player
{
    vspeed = 0;
    hspeed = 0;
    x += (400 - x)/10;
    y += (304 - y)/10;
}
