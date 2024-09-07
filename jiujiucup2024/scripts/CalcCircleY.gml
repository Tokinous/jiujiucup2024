///CalcCircleY(centerX, centerY, radium, totalnumber, number, initoffset)
//return Y;

var yy, cX, cY, r, total, num, offset;

cX = argument0;
cY = argument1;

r = argument2;

total = argument3;
num = argument4;

offset = argument5;

var phase;

phase = offset + 360 / total * num;

yy = cY - r * sin(degtorad(phase));

return yy;
