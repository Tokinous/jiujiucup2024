//DrawBolcksDefault(offset x, offset y)
var xOffset, yOffset;
xOffset = argument0;
yOffset = argument1;

DrawBlocks(xOffset, yOffset, BLOCK_DRAW_DIRECTION_HORIZONAL, 25);

DrawBlocks(xOffset, 608 - 32 + yOffset, BLOCK_DRAW_DIRECTION_HORIZONAL, 25);

DrawBlocks(xOffset, yOffset, BLOCK_DRAW_DIRECTION_VERTICAL, 19);

DrawBlocks(800 - 32 + xOffset, yOffset, BLOCK_DRAW_DIRECTION_VERTICAL, 19);
