#define 0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=201
relative=0
applies_to=self
invert=0
arg0=objfmod
arg1=0
arg2=0
*/
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
DrawBlocks(0, 0, "h", 25);

DrawBlocks(0, 608 - 32, "h", 25);

DrawBlocks(0, 0, "v", 19);

DrawBlocks(800 - 32, 0, "v", 19);

instance_create(player.x, player.y, obj_dotkid);
#define 50
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=201
relative=0
applies_to=self
invert=0
arg0=p1
arg1=0
arg2=0
*/
#define 850
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=201
relative=0
applies_to=self
invert=0
arg0=p2
arg1=400
arg2=304
*/
