#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
var ii, jj;
ii = 0;
jj = 0;

image_alpha = 0;

repeat(2)
{
    ii = 0;

    repeat(2)
    {
        instance_create(x + 8*(1+ii), y + 8*(1+jj), ts_block_brg_appear);
        ii += 2;
    }

    jj += 2;
}

alarm[0] = 32;
alarm[1] = 16;
image_speed = 0;
#define Alarm_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
var inst;
inst = instance_create(x, y, block);
inst.image_index = image_index;
inst.image_speed = image_speed;
inst.sprite_index = sprite_index;

instance_destroy();
#define Alarm_1
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
fadeIn(16);
alarm[1]=1;
