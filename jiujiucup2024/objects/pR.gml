#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=305
applies_to=self
invert=0
arg0=tl_pR_main
arg1=0
arg2=0
arg3=0
*/
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
t = 46;

flag = 0;
range = 64;
#define Destroy_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
CameraRect(VIEW_OPERATION_RESET);

with pRFrontGFadeIn instance_destroy();
#define Alarm_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
CreateMoveOne(400 + random_range(-64, 64), 608, pRbPub, random(32), 90);

alarm[0] = 1;
#define Alarm_1
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
PRCreateLinkLaser();

alarm[1] = t;
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if(instance_number(player) == 0)
    instance_destroy();

if(flag)
{
    var inst;
    inst = CreateMoveOne(choose(random_range(0, range), random_range(800 - range, 800)), 608, p2bPub, random(8), 90);
    inst.gravity = 0.4;
    inst.gravity_direction = 90;
}
