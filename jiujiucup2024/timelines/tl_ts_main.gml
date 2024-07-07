#define 0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
instance_create(0,0,ts_fmod);
instance_create(0,0,ts_p1);
#define 1683
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
with ts_p1 instance_destroy();

instance_create(0, 0, ts_p2);
#define 3622
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
with ts_p2 instance_destroy();

instance_create(400, 304, ts_p3);
