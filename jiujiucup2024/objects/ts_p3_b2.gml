#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
event_inherited();
outViewDesFlag = 1;

SelectColor_ts("white");

r = 40;

phase = 0;

initX = 0;
initY = 0;
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
destroyByDistance(550);

r -= 1;

phase -= 2;

var xx, yy;

xx = initX + r*cos(degtorad(phase));
yy = initY - r*sin(degtorad(phase));

x = xx;
y = yy;

createShadow(0, 0.1);

if(r <= 0)
{
    setBaseBrgProp(SelectColor_ts("cyanine"), 1);
    createMoveOne(x, y, ts_pub_brg, random_range(0.25, 1), random(360));

    instance_destroy();
}
