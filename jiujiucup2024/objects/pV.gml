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

PVCreateDelayLine(player.x, 64*2, 0);

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
alarm[0] = 12;

//PVCreateDelayLine(random_range(200, 600), lineY, 0, index mod 2);
//PVCreateDelayLine(random_range(200, 600), random_range(0, 304), 0, (index + 1) mod 2);

index += 1;

//lineY += 32;

if(index mod 4 == 0)
    angleCount += 1;

PVCreateLineStar(angleCount, angleR, irandom_range(2, 3 + (index div 2)), 16 + (index div 4) * 8, random(360), pVbDelay, index mod 2);

angleR += 20;

angleCount += 1;
