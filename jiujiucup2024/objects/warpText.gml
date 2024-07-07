#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
/// this is just a normal warp with text.
//
//Creation Code:
// roomTo = roomToWarp;
// kind = transition_kind(0~21);
// if you want to use warpX and warpY
// go to roomChanger for more help
onCollide = true;
#define Draw_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
//draw the original sprite
drawSelf();
//draw the text
draw_set_color(c_white)
draw_set_font(font12);
draw_set_halign(fa_center)
draw_text(x+16,y-20,text);
