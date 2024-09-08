#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=305
applies_to=self
invert=0
arg0=tl_pV_main
arg1=0
arg2=0
arg3=0
*/
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
offset = random(360);

listAnchorX = 0;
listAnchorY = 0;
listAnchorSize = 0;
listI = 0;

lineY = 0;
index = 0;

angleCount = 5;
angleR = 128;
#define Alarm_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
alarm[0] = 13;

PVCreateDelayLine(random_range(200, 600), random_range(0, 608 - 32 * 6), 0, index mod 2);
PVCreateDelayLine(random_range(200, 600), random_range(0, 608 - 32 * 6), 0, (index + 1) mod 2);

index += 1;

lineY += 32;

if(index mod 4 == 0)
    angleCount += 1;
#define Alarm_1
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
alarm[1] = 13;

PVCreateDelayLine(random_range(200, 600), random_range(0, 608 - 32 * 6), 0, 2);
PVCreateDelayLine(random_range(200, 600), random_range(0, 608 - 32 * 6), 0, 2);

index += 1;

lineY -= 32;

if(index mod 4 == 0)
    angleCount += 1;
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if(instance_number(player) == 0)
    instance_destroy();
