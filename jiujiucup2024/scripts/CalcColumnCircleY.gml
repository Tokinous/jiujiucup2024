//CalcColumnCircleY(centerX, centerY, radium, total number, number, xoff, init offset)
//x = acosktcost, y = bsint

var yy, cX, cY, r, total, num, xoff, offset;

cX = argument0;
cY = argument1;

r = argument2;

total = argument3;
num = argument4;

xoff = argument5;

offset = argument6;

var phase;

phase = offset + 360 / total * num;

//yy = cY - r * cos(degtorad(xoff * phase)) * sin(degtorad(phase));

yy = cY - r * sin(degtorad(phase));

return yy;
