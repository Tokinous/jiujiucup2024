//PVCreateLineStar(angle count, r, step, line num, offset, obj, type)

var angleCount, r, step, lineNum, offset, obj, type;

angleCount = argument0;
r = argument1;
step  = argument2;
lineNum = argument3;
offset = argument4;
obj = argument5;
type = argument6;

var listObj;
listObj = ds_list_create();

var i;
for(i = 0; i < angleCount; i += 1)
{
    var xx, yy, temp;
    xx = CalcCircleX(400, 128, r, angleCount, i, offset);
    yy = CalcCircleY(400, 128, r, angleCount, i, offset);

    temp = instance_create(xx, yy, objTmp);

    ds_list_add(listObj, temp);
}

PVCreateLineDot(listObj, lineNum, obj, step, type);

with objTmp instance_destroy();

ds_list_destroy(listObj);
