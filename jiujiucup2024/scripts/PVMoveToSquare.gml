//PVMoveToSquare(x, y, offset, basicR, lineNum)

var centerX, centerY, basicR;

centerX = argument0;
centerY = argument1;
basicR = argument3;

listAnchorX = ds_list_create();
listAnchorY = ds_list_create();

var angleNum, spd, lineNum, objAnchor, offset;
angleNum = 4;
lineNum = argument4;
objAnchor = objTmp;
spd = 10;
offset = argument2;

var a, i, j, dir, n, v, vv, ddd, k;
n = lineNum - 1 ;
dir = offset;

for(j = 1; j <= angleNum; j += 1)
{
    v = spd;
    ddd = degtorad((180 - (360 / angleNum)) / 2)
    k = 2 * v * cos(ddd);
    for(i = 1; i <= n; i += 1)
    {
        a = instance_create(centerX, centerY, objAnchor);
        a.speed = abs(sqrt(sqr(v) + sqr(k*i/n) - 2*v*(k*i/n)*cos(ddd)));
        vv = a.speed;
        a.direction = dir + radtodeg(arccos((sqr(v) + sqr(vv) - sqr(k*i/n)) / (2*v*(vv))));
        if(i == n)
        {
            dir += 360/angleNum;
        }

        var realX, realY;
        realX = CalcCircleX(centerX, centerY, basicR*vv, 1, 1, a.direction);
        realY = CalcCircleY(centerX, centerY, basicR*vv, 1, 1, a.direction);
        //instance_create(realX, realY, pVbPub);

        ds_list_add(listAnchorX, realX);
        ds_list_add(listAnchorY, realY);

        with objAnchor instance_destroy();
    }
}

listAnchorSize = ds_list_size(listAnchorX);
listI = 0;

with pVbStop
{
    if(pV.listI <= pV.listAnchorSize && id mod 2 == 0)
    {
        var ease;
        ease = instance_create(x, y, pVbEaseMove);
        ease.destX = ds_list_find_value(pV.listAnchorX, pV.listI);
        ease.destY = ds_list_find_value(pV.listAnchorY, pV.listI);

        pV.listI += 1;

        instance_destroy();
    }
}

ds_list_destroy(listAnchorX);
ds_list_destroy(listAnchorY);
