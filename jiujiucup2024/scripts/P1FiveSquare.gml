//P1FiveSquare(obj, offset);

var xx, yy, i, inst, offset, num;

i = 0;
num = 8;
offset = argument1;

var linelistX, linelistY;

linelistX = ds_list_create();
linelistY = ds_list_create();

repeat(5)
{
    xx = CalcCircleX(400, 304, 200, 5, i, offset);
    yy = CalcCircleY(400, 304, 200, 5, i, offset);

    ds_list_add(linelistX, xx);
    ds_list_add(linelistY, yy);

    Polygon(xx, yy, 4, 10, 12, argument0, point_direction(xx, yy, 400, 304) + 45);

    i += 1;
}

var j;
j = 0;

for(j = 0; j < 5; j += 1)
{
    var x1get, y1get, x2get, y2get;
    x1get = ds_list_find_value(linelistX, j);
    y1get = ds_list_find_value(linelistY, j);

    x2get = ds_list_find_value(linelistX, (j + 1) mod 5);
    y2get = ds_list_find_value(linelistY, (j + 1) mod 5);

    P1SquareLine(x1get, y1get, x2get, y2get);
}

//Polygon(400, 304, 5, 8, 10, p1b2, offset);

ds_list_destroy(linelistX);
ds_list_destroy(linelistY);
