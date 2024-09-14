#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
wX = 0;
wY = 0;
wW = 0;
wH = 0;
cX = 0;
cY = 0;
#define Keyboard_38
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
var tmpMouseX, tmpMouseY;

tmpMouseX = mouse_x;
tmpMouseY = mouse_y;

wX = window_get_x();
wY = window_get_y();

wW = window_get_width();
wH = window_get_height();

//cX = 400 * wW / 800;
//cY = 304 * wH / 608;

//cX = wX + 400;
//cY = wY + 304;

cX = 400;
cY = 304;

{
    tmpMouseX += (cX - tmpMouseX) / 10;
    tmpMouseY += (cY - tmpMouseY) / 10;
}


window_views_mouse_set(tmpMouseX, tmpMouseY);
#define Draw_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
draw_text(128, 128, string(wX) + " " + string(wY) + " " + string(wW) + " " + string(wH) + " " + string(cX) + " " + string(cY) + " ");
