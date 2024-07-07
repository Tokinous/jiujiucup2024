#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
scale = random_range(0.4, 1.25);

setScale(scale, scale);

image_speed = 0;
image_alpha = 0;

SelectColor_ts("white");

loopTime = 66*irandom_range(2, 4);
alphaTime = 0;

ySpd = random_range(1, 2);

maxAlpha = random(0.1);
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
alphaTime += 1;

image_alpha = maxAlpha * sin(degtorad(alphaTime/loopTime*180));

y -= ySpd;

createShadow(maxAlpha/10, 0);

if(alphaTime >= loopTime)
    instance_destroy();

destroyByDistance(800);
#define Draw_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
draw_set_blend_mode(bm_add);
draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,0,c_white,image_alpha);
draw_set_blend_mode(bm_normal);
