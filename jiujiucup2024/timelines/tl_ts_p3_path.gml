#define 102
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
pathType = 1;

centerX = view_xview[0] + view_wview[0] / 2;
centerY = view_yview[0] + view_hview[0] / 2;

centerR = point_distance(centerX, centerY, x, y);

phase = point_direction(centerX, centerY, x, y);

shootFlag = 0;
#define 153
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
flag *= -1;
/*
pathType = 2;
direction = point_direction(x, y, 400, player.y) + 90*flag;
#define 161
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
flag *= -1;
#define 220
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
pathType = 2;
direction = point_direction(x, y, 400, player.y) + 90*flag;
#define 252
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
direction = point_direction(x, y, 400, player.y) + 30*flag;
pathType = 3;
#define 315
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=203
applies_to=self
invert=0
*/
