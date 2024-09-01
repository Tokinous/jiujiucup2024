#define 0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
instance_create(0, 0, _3rdAv_fmod);

instance_create(0, 0, p1);

with camera instance_destroy();

instance_create(0, 0, TokinousCamera);

instance_create(0, 0, colorManager);

CameraRect(VIEW_OPERATION_RESET);
ParamChange(PARAM_CHANGE_TYPE_RESET);
#define 831
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
with p1 instance_destroy();

instance_create(0, 0, p2);
#define 2308
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
with p2 instance_destroy();

instance_create(0, 0, p3);
#define 2677
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
with p3 instance_destroy();

var inst;
inst = instance_create(0, 0, p3);
inst.type = 1;
#define 3046
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
with p3 instance_destroy();

instance_create(0, 0, pV);
#define 3415
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
with pV instance_destroy();

instance_create(0, 0, pM);
