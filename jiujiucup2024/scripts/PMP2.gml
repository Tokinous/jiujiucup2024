///PMP2(index, alarm)

var index, timer;
index = argument0;
timer = argument1;

var xx, yy, i, inst, offset, num;

i = 0;
num = 32;
offset = random(360);

var linelistX, linelistY;

linelistX = ds_list_create();
linelistY = ds_list_create();

repeat(4)
{
    xx = CalcCircleX(400, 304, (index + 1) * 75, 4, i, partOffset + 25 * index);
    yy = CalcCircleY(400, 304, (index + 1) * 75, 4, i, partOffset + 25 * index);

    ds_list_add(linelistX, xx);
    ds_list_add(linelistY, yy);

    i += 1;
}

var j;
j = 0;

for(j = 0; j < 4; j += 1)
{
    var x1get, y1get, x2get, y2get;
    x1get = ds_list_find_value(linelistX, j);
    y1get = ds_list_find_value(linelistY, j);

    x2get = ds_list_find_value(linelistX, (j + 1) mod 4);
    y2get = ds_list_find_value(linelistY, (j + 1) mod 4);

    PMSquareLine(x1get, y1get, x2get, y2get, num, timer);
}

ds_list_destroy(linelistX);
ds_list_destroy(linelistY);
