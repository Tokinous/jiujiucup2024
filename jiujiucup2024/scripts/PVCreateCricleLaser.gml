//PVCreateCricleLaser(x, y, num, offset)

var xx, yy, num, offset;

xx = argument0;
yy = argument1;
num = argument2;
offset = argument3;

var i;

for(i = 0; i < num; i += 1)
{
    PVCreateLaser(xx, yy, 360 / num * i + offset);
}
