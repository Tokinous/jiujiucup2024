//CreateLineDots(listobjetct, line num, object, step)

var listObjs, lineNum, obj, step;
listObjs = argument0;
lineNum = argument1;
obj = argument2;
step = argument3;

var i, size;
size = ds_list_size(listObjs);

for(i = 0; i < size; i +=1)
{
    var anchor1, anchor2;

    anchor1 = ds_list_find_value(listObjs, i);
    anchor2 = ds_list_find_value(listObjs, (i + step) mod size);

    var j;

    for(j = 0; j < lineNum; j += 1)
    {
        var xx, yy, inst;

        xx = CalcLineX(anchor1.x, anchor2.x, lineNum, j);
        yy = CalcLineX(anchor1.y, anchor2.y, lineNum, j);

        inst = instance_create(xx, yy, obj);
    }
}
