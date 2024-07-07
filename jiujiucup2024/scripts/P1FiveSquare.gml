//P1FiveSquare(obj, offset);

var xx, yy, i, inst, offset, num;

i = 0;
num = 8;
offset = argument1;

repeat(5)
{
    xx = CalcCircleX(400, 304, 200, 5, i, offset);
    yy = CalcCircleY(400, 304, 200, 5, i, offset);

    Polygon(xx, yy, 4, 24, 8, argument0, point_direction(xx, yy, 400, 304) + 45);

    i += 1;
}
