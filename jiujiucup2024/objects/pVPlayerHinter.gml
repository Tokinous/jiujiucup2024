#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
sprite_index = player.sprite_index;
image_index = player.image_index;
image_xscale = player.image_xscale;
image_yscale = player.image_yscale;

image_speed = 0;

flag = choose(1, -1);
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if(image_xscale > 0)
    image_xscale += 0.02;
else
    image_xscale -= 0.02;

image_yscale += 0.02;

image_angle += 3 * flag;

image_alpha -= 0.02;

if(image_alpha < 0)
    instance_destroy();
