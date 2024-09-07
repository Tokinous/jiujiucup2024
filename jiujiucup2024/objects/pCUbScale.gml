#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
scale = 2;
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
scale += (-0.75 - scale) / 10;

if(scale <= 0)
    instance_destroy();

SetScale(scale, scale);
