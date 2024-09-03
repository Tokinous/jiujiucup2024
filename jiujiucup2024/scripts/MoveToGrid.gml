//MoveToGrid(grid size, offset)

var size, offset, tmpX, tmpY;

size = argument0;
offset = argument1;

tmpX = x;
tmpY = y;

var nModAdd, nModMinus;

nModAdd = tmpX mod size;
nModMinus = size - nModAdd;

if(nModAdd < nModMinus)
    tmpX -= nModAdd + offset;
else
    tmpX += nModMinus

nModAdd = tmpY mod size;
nModMinus = size - nModAdd;

if(nModAdd < nModMinus)
    tmpY -= nModAdd + offset;
else
    tmpY += nModMinus

x = tmpX;
y = tmpY;
