#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=305
applies_to=self
invert=0
arg0=tl_p1_main
arg1=0
arg2=0
arg3=0
*/
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
listAnchor = ds_list_create();

anchorIndex = 0;

insaneFlag = 1;

//p1GlobOffset = -45;
#define Destroy_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
ds_list_destroy(listAnchor);
#define Alarm_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
alarm[0] = 185;

//p1GlobOffset += 45;
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=201
relative=0
applies_to=self
invert=0
arg0=p1sub1
arg1=0
arg2=0
*/
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if(instance_number(player) == 0)
    instance_destroy();
#define KeyPress_82
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=203
applies_to=self
invert=0
*/
