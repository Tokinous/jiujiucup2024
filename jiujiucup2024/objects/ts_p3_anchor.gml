#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
image_speed = 0;

tempVal = 0;

visible = false;
#define Alarm_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
alarm[0] = 4;

if(tempVal >= 1)
    createCircle(x, y, tempVal*12, ts_p3_b1, 8, 1, 0, 360/8/2);

tempVal += 1;

if(tempVal >= 5)
    alarm[0] = 0;
#define Alarm_1
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
setBaseBrgProp(SelectColor_ts("white"), 1);
createMoveOne(x - 80 + 16 * tempVal, y + 128, ts_pub_brg, 0, 0);

alarm[1] = 8;

tempVal += 1;

if(tempVal > 10)
    alarm[1] = 0;
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if(y > view_yview[0]+608)instance_destroy();
