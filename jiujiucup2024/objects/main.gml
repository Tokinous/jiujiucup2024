#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=303
applies_to=self
invert=0
arg0=
arg1=0
*/
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
instance_create(0,0,HpBar);
instance_create(0,0,HpBarbg);
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if(room_exists(player)=1)timeline_running=1;
