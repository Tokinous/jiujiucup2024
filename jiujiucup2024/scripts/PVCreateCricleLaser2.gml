//PVCreateCricleLaser2(x, y, num, offset, destAngle)

var xx, yy, num, offset, destAngle;

xx = argument0;
yy = argument1;
num = argument2;
offset = argument3;
destAngle = argument4;

var i;

for(i = 0; i < num; i += 1)
{
    PVCreateLaser2(xx, yy, 360 / num * i + offset, destAngle);
}
