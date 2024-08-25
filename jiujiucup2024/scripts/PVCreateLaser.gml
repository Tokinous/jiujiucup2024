//PVCreateLaser(x, y, direction)

var xx, yy, dir;
xx = argument0;
yy = argument1;
dir = argument2;

var inst;
inst = instance_create(xx, yy, pVbLaser);
inst.image_angle = dir;
