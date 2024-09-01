#define 0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
DebugMusicPart(75.692);

PRCreatePolygon();

CameraRotate(VIEW_OPERATION_ROTATE_RESET);
CameraRect(VIEW_OPERATION_RESET);

with block instance_destroy();

DrawBolcksDefault();

with arcadeBg instance_destroy();
with arcadeBgSquare instance_destroy();

with colorManager instance_destroy();

with pMPlayer instance_destroy();

ParamChange(PARAM_CHANGE_TYPE_HITBOX, PLAYER_HITBOX_TYPE_DOTKID);

screenFlash(4);

instance_create(0, 0, pRBg);
#define 81
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
PRCreatePolygon();
#define 127
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
PRCreatePolygon();
#define 162
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
PRCreatePolygon();
#define 185
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
PRCreatePolygon();
#define 242
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
PRCreatePolygon();
#define 265
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
PRCreatePolygon();
#define 323
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
PRCreatePolygon();
#define 335
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
PRCreatePolygon();
#define 346
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
PRCreatePolygon();
#define 358
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
PRCreatePolygon();
#define 369
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
PRCreatePolygon();
#define 450
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
PRCreatePolygon();
#define 496
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
PRCreatePolygon();
#define 531
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
PRCreatePolygon();
#define 554
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
PRCreatePolygon();
#define 612
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
PRCreatePolygon();
#define 635
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
PRCreatePolygon();
#define 692
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
PRCreateCircle();
#define 741
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
with pRbCross flag = 1;
#define 1108
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
PRCreateAsyncCircle();
#define 1292
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/

with pRbCircle2
{
    async = 1;
    //asyncPhaseSpd = 0.25;
}
