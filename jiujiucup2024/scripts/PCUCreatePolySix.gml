///PCUCreatePolySix(r, index)

var polyR, polyNum, index;

polyR = argument0;
polyNum = 6;

index = argument1;

var listAnchors;
listAnchors = ds_list_create();

var numEachLine, lackNum;

numEachLine = 10 + index * 2;
lackNum = 6;

var i, offset;
offset = random(360);

//calc anchors
for(i = 0; i < polyNum; i += 1)
{
    var xx, yy, anchor;

    xx = CalcCircleX(400, 304, polyR, polyNum, i, offset);
    yy = CalcCircleY(400, 304, polyR, polyNum, i, offset);

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
        var xx, yy;
        xx = CalcLineX(anchor1.x, anchor2.x, numEachLine, j);
        yy = CalcLineY(anchor1.y, anchor2.y, numEachLine, j);

        if(i == polyNum - 1)
        {
            if(j < numEachLine / 2 - lackNum / 2 || j > numEachLine / 2 + lackNum / 2)
            {
                var inst;
                inst = ConvertCircleObjByPos(400, 304, xx, yy, pCbCircle);
                inst.phaseSpd = 0.4 * power(-1, index);
                inst.destR = inst.r;
                inst.destCenterX = inst.centerX;
                inst.destCenterY = inst.centerY;
                inst.type = 1;
                inst.image_xscale = 0.75;
                inst.image_yscale = 0.75;
            }
            else
            {
                continue;
            }
        }
        else
        {
            var inst;
            inst = ConvertCircleObjByPos(400, 304, xx, yy, pCbCircle);
            inst.phaseSpd = 0.4 * power(-1, index);
            inst.destR = inst.r;
            inst.destCenterX = inst.centerX;
            inst.destCenterY = inst.centerY;
            inst.type = 1;
            inst.image_xscale = 0.75;
            inst.image_yscale = 0.75;
        }
    }
}

with pCUAnchor instance_destroy();

ds_list_destroy(listAnchors);
