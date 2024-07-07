#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
initWX = window_get_x();
initWY = window_get_y();

windowX = window_get_x();
windowY = window_get_y();

windowH = window_get_height();
windowW = window_get_width();

destH = 608*1.1;
destW = 800*1.25;

t = 0;

alarm[0] = 1;
#define Destroy_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
window_set_rectangle(initWX, initWY, 800, 608);
#define Alarm_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
t += 1;

if(windowW < destW)
{
    windowY -= 1;
    windowH += 2;
}

if(windowW < destW)
{
    windowX -= 1;
    windowW += 2;
}

if((windowW < destW)&&(windowW < destW))
{
    window_set_region_scale(1, 0);
    window_set_rectangle(windowX, windowY, windowW, windowH);
}

alarm[0] = 2;
#define KeyPress_82
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
instance_destroy();
