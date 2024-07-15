//CalcCircleXAsync(centerX, centerY, radium, total number, number, init offset, sync phase)
//return X;

var xx, cX, cY, r, total, num, offset, asyncPhase;

cX = argument0;
cY = argument1;

r = argument2;

total = argument3;
num = argument4;

offset = argument5;

asyncPhase = argument6;

var phase;

phase = offset + 360 / total * num;

xx = cX + r * cos(degtorad(phase + asyncPhase));

return xx;
