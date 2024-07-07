#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
image_yscale=4
image_xscale=48
image_alpha=0
#define Alarm_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
image_alpha-=0.05

alarm[0]=1

if(image_alpha<=0){
    image_alpha=0
    alarm[0]=0
    }
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/

x=player.x-24
y=player.y-20

if(player.curHP=0){
    instance_destroy()
    }

if(!object_exists(player))instance_destroy();
