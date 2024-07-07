//CalcCircleX(centerX, centerY, radium, total number, number, init offset)
//return X;

var xx, cX, cY, r, total, num, offset;

cX = argument0;
cY = argument1;

r = argument2;

total = argument3;
num = argument4;

offset = argument5;

var phase;

phase = offset + 360 / total * num;

xx = cX + r * cos(degtorad(phase));

return xx;
