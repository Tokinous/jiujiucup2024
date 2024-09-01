//PVCreateLaser(x, y, direction, destAngle)

var xx, yy, dir, destAngle;
xx = argument0;
yy = argument1;
dir = argument2;
destAngle = argument3;

var inst;
inst = instance_create(xx, yy, pVbSpinLaser);
inst.image_angle = dir;
inst.destAngle = dir + destAngle;
