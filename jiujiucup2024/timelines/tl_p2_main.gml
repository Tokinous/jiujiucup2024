#define 0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
ClearAllBrg();
screenFlash(10);

DrawBlocks(0, 0, BLOCK_DRAW_DIRECTION_HORIZONAL, 25);

DrawBlocks(0, 608 - 32, BLOCK_DRAW_DIRECTION_HORIZONAL, 25);

DrawBlocks(0, 0, BLOCK_DRAW_DIRECTION_VERTICAL, 19);

DrawBlocks(800 - 32, 0, BLOCK_DRAW_DIRECTION_VERTICAL, 19);

CameraRect(VIEW_OPERATION_RESET);
