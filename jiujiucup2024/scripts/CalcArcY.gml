//CalcArcY(centerX, centerY, r, init phase, end phase, num, i);

var centerX, centerY, r, initPhase, endPhase, num ,i;

centerX = argument0;
centerY = argument1;
r = argument2;
initPhase = argument3;
endPhase = argument4;
num = argument5;
i = argument6;

var phase;
phase = initPhase + (endPhase - iniPhase)*i/num;

var yy;
yy = CalcCircleY(centerX, centerY, r, 1, 1, phase);

return yy;
