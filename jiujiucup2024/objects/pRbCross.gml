#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
image_alpha = 1;
flag = 0;
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if(flag)
{
    image_alpha -= 1/23;
    if(image_alpha < 0)
        instance_destroy();
}
else
{
if(image_alpha <= 1)
    image_alpha += 1/(23*4);
}
#define Other_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=203
applies_to=self
invert=0
*/
