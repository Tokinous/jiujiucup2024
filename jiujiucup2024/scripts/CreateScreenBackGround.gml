//CreateScreenBackGround

var iNum, jNum, i, j;
iNum = 4;
jNum = 4;

for(i = 0; i < iNum; i += 1)
{
    for(j = 0; j < jNum; j += 1)
    {
        var inst, offset;
        if(power(-1, i) == -1)
        {
            offset = -96;
        }
        else
        {
            offset = 0;
        }
        inst = instance_create(224 * j + offset, 160 * i, bgScreen);
        inst.speed = 3 * power(-1, i);
    }
}
