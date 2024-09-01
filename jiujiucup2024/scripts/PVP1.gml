//PVP1(index)
var i, num;
i = argument0 + 1;
num = 6;
offset = 64;
PVCreateDelayLine(400, 608 / num * i, 0, -1);

Polygon(0 + offset, 608 / num * i, 4, 5.5, 24, pVbStop, 25 * i);
Polygon(0 + offset, 608 / num * i, 4, 5.5, 4, pVbPub, 25 * i);
Polygon(800 - offset, 608 / num * i, 4, 5.5, 24, pVbStop, 360 - 25 * i);
Polygon(800 - offset, 608 / num * i, 4, 5.5, 4, pVbPub, 360 - 25 * i);
