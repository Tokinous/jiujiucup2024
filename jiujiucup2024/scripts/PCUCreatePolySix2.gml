///PCUCreatePolySix2(centerX, centerY, index)

var centerX, centerY;
centerX = argument0;
centerY = argument1;

var polyR, polyNum, index;

polyR = ( 800 / 5 - 64 ) / sqrt(3);
polyNum = 6;

index = argument2;

var listAnchors;
listAnchors = ds_list_create();

var numEachLine, lackNum;

numEachLine = 14;
lackNum = 8;

var i;

//calc anchors
for(i = 0; i < polyNum; i += 1)
{
    var xx, yy, anchor;

    xx = CalcCircleX(centerX, centerY, polyR, polyNum, i, 90);
    yy = CalcCircleY(centerX, centerY, polyR, polyNum, i, 90);

    anchor = instance_create(xx, yy, pCUAnchor);

    ds_list_add(listAnchors, anchor);
}

//calc line objs

for(i = 0; i < polyNum; i += 1)
{
    var anchor1, anchor2;
    anchor1 = ds_list_find_value(listAnchors, i);
    anchor2 = ds_list_find_value(listAnchors, (i + 1) mod polyNum);

    var j;
    for(j = 0; j < numEachLine; j += 1)
    {
        if(j < numEachLine / 2 - lackNum / 2 || j > numEachLine / 2 + lackNum / 2)
        {
            var xx, yy;
            xx = CalcLineX(anchor1.x, anchor2.x, numEachLine, j);
            yy = CalcLineY(anchor1.y, anchor2.y, numEachLine, j);

            var inst;
            inst = instance_create(xx, yy, pCUbLine);
            inst.xSpeed = 2 * power(-1, index);
            inst.recordX = xx;
        }
    }
}

with pCUAnchor instance_destroy();

ds_list_destroy(listAnchors);
