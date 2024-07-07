#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
hsv_color_h = 0;
hsv_color_s = 225;
hsv_color_v = 225;

tx = 0;
ty = 0;
tz = 0;

xscl = 1;
yscl = 1;

alpha = 1;

M = 0;
#define Step_2
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
//centerX = view_xview[0] + view_wview[0]/2;
//centerY = view_yview[0] + view_hview[0]/2;

CalcMatrix(0.5, 1, 1, 0);
CalcNewPos(M, tx, ty, tz);

tx = x_new;
ty = y_new;
tz = z_new;

Calc2D(tx, ty, tz, 400, 304);

var curBlend;
curBlend = make_color_hsv(hsv_color_h*255/360, hsv_color_s, hsv_color_v);
image_blend = curBlend;

hsv_color_h += 1;
