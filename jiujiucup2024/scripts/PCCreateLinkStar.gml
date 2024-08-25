//PCCreateLinkStar(angle count, r, step, line num, offset, obj)

var angleCount, r, step, lineNum, offset, obj;

angleCount = argument0;
r = argument1;
step  = argument2;
lineNum = argument3;
offset = argument4;
obj = argument5;

var listObj;
listObj = ds_list_create();

var i;
for(i = 0; i < angleCount; i += 1)
{
    var xx, yy, temp;
    xx = CalcCircleX(400, 304, r, angleCount, i, offset);
    yy = CalcCircleY(400, 304, r, angleCount, i, offset);

    temp = instance_create(xx, yy, pCbLaser);

    ds_list_add(listObj, temp);
}

CreateLineDots(listObj, lineNum, obj, step);

ds_list_destroy(listObj);
