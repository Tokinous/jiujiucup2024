#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
flag = 0;

recordX = 0;
xSpeed = 0;
destRecordX = 0;

scale = 2;
SetScale(scale, scale);
#define Alarm_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
scale = 2;
image_alpha = 1;
alarm[1] = 23;
//alarm[0] = 23 * 3;
#define Alarm_1
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
image_alpha = 0.3;
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if(recordX > 0)
    x = recordX mod 800;
else
    x = recordX mod -800 + 800;

if(!flag)
    recordX += xSpeed;
else
    recordX += (destRecordX - recordX) / 10;

scale += (0.5 - scale) / 10;

SetScale(scale, scale);
