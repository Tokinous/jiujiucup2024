#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
event_inherited();

SelectColor_ts("cyanine");

outViewDesFlag = 1;
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
var inst;
inst = createMoveOne(x, y, ts_pub_brg, 0, 0);
inst.p2EndFlag = 1;
#define Collision_ts_pub_brg
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
with other
{
    if(!p2EndFlag)instance_destroy();

}
#define Collision_ts_p2_b2
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
with other instance_destroy();
#define Collision_ts_p2_b1_white
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
with other instance_destroy();
#define Collision_ts_p2_b3
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
with other instance_destroy();
