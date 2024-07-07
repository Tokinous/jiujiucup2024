#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
//see the blocks in debug mode
//if(debug_mode){
//    visible = true;
//}

image_speed=0

animeFlag = 0;
appear = 0;
disappear = 0;

sp = 0;
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if(animeFlag)
{
    if(appear)
    {
        fadeIn(16);
    }

    if(disappear)
    {
        fadeOut(16);
    }
}
