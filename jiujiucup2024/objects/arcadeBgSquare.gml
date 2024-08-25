#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
//square anchor

topX = 0;
topY = 0;

realTopX = 0;
realTopY = 0;

bottomX = 800;
bottomY = 608;

realBottomX = 0;
realBottomY = 0;

z = 500;
zSpd = (500 + 100) / (13 * 4);

rateBase = 100;

centerX = 400;
centerY = 304;
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
var rate;

    rate = rateBase / ( rateBase + z );
    realTopX = centerX + ((topX - centerX) - z / 2) * rate;
    realTopY = centerY + (topY - centerY) * rate;

    realBottomX = centerX + ((bottomX - centerX) + z / 2) * rate;
    realBottomY = centerY + (bottomY - centerY) * rate;

//centerX = 400 + 64 * cos(degtorad((view_angle[0] + 180) mod 180));
//centerY = 304 - 64 * sin(degtorad((view_angle[0] + 180) mod 180));

z -= zSpd;
if(z <= -100)
    instance_destroy();
#define Draw_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
draw_set_color(GetMainColor());
draw_set_alpha(rateBase / (rateBase + z));

draw_rectangle(realTopX, realTopY, realBottomX, realBottomY, 1);

draw_set_color(c_white);
draw_set_alpha(1);
