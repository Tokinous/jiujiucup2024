#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
totalLength = 254*50;
_MyBest = 'My Best Record: ' + string(global.bestRecord/50) + ' / ' + string(419) + ' s';

checkPoint_p2 = 17 * 50;
checkPoint_p3 = 29.8 * 50;
checkPoint_p4 = 42.6 * 50;
checkPoint_p5 = 55.4 * 50;
checkPoint_p6 = 68.2 * 50;

toNextPoint = 0;
partLength = 1;
_Part = 0;

ToNextCheckPoint(0, checkPoint_p2);
ToNextCheckPoint(checkPoint_p2, checkPoint_p3);
ToNextCheckPoint(checkPoint_p3, checkPoint_p4);
ToNextCheckPoint(checkPoint_p4, checkPoint_p5);
ToNextCheckPoint(checkPoint_p5, checkPoint_p6);
#define Draw_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
draw_set_color(c_white);
draw_set_halign(fa_left);
draw_set_valign(fa_top);

draw_rectangle(128, 128, 128 + 400 * (global.bestRecord / totalLength), 128 + 12, 0);
draw_rectangle(128, 128, 128 + 400 , 128 + 12, 1);

draw_set_font(font12);
draw_set_alpha(1);
draw_text_transformed(96, 96, _MyBest, 1, 1, 0);

draw_rectangle(128, 128 + 64, 128 + 400 * ((partLength - toNextPoint) / partLength), 128 + 64 + 12, 0);
draw_rectangle(128, 128 + 64, 128 + 400 , 128 + 64 + 12, 1);

draw_set_font(font12);
draw_set_alpha(1);
draw_text_transformed(96, 96 + 64, _Part, 1, 1, 0);
