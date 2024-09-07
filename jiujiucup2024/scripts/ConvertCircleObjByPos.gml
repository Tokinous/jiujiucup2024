///CreateCircleNumByPos(centerX, centerY, obj x, obj y, circle obj)

var centerX, centerY, xx, yy, obj;

centerX = argument0;
centerY = argument1;
xx = argument2;
yy = argument3;
obj = argument4;

var r, phase;

r = point_distance(xx, yy, centerX, centerY);
phase = point_direction(centerX, centerY, xx, yy);

var inst;

inst = instance_create(xx, yy, obj);
inst.r = r;
inst.phase = phase;
inst.centerX = centerX;
inst.centerY = centerY;

return inst;
