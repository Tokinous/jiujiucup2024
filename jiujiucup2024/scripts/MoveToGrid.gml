//MoveToGrid(grid size, offset)

var size, offset;

size = argument0;
offset = argument1;

var nModAdd, nModMinus;

nModAdd = x mod size;
nModMinus = size - nModAdd;

if(nModAdd < nModMinus)
    x -= nModAdd + offset;
else
    x += nModMinus

nModAdd = y mod size;
nModMinus = size - nModAdd;

if(nModAdd < nModMinus)
    y -= nModAdd + offset;
else
    y += nModMinus
