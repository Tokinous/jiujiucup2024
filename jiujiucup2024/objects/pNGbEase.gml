#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
destX = 0;
destY = 0;

SetScale(0.8, 0.8);

alarm[0] = 10;
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
x += (destX - x) / 10;
y += (destY - y) / 10;
