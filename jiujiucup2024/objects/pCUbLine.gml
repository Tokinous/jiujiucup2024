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
