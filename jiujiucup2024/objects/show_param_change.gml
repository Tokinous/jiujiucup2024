#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
text = 'Param Change:';

alarm[0] = 50;
#define Alarm_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=203
applies_to=self
invert=0
*/
#define Draw_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
draw_set_font(fontParamChangeNotice);
draw_set_halign(fa_center);
draw_set_valign(fa_middle)
draw_set_color(c_white);

draw_set_alpha(random_range(0.75, 1));

if(player.visible)
    draw_text(player.x, player.y - 32, text);
else
    draw_text(400, 608 - 32 -16, text);

draw_set_alpha(1);
