#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
alarm[0] = 50;

sprite_index = sprPlayerFall;
image_speed = 0;
#define Alarm_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
sprite_index = choose(sprPlayerFall, sprPlayerIdle, sprPlayerJump, sprPlayerRunning, sprPlayerSliding, sprPlayerBack);
image_xscale = random_range(-100, 100);
image_yscale = random_range(-5, 5);
image_angle = random(360);

alarm[0] = 1;
