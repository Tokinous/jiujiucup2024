#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
dir = 0;

image_alpha = 0.3;

SetScale(2.75, 2.75);

index = 0;
#define Alarm_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
image_alpha = 1;

SetScale(2.75, 2.75);
#define Alarm_1
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
instance_destroy();
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
image_xscale += (1 - image_xscale) / 10;
image_yscale += (1 - image_yscale) / 10;

if(y > 632)
    instance_destroy();
