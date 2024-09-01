//PMCreateCircleArr(centerX, centerY, destR, offset, flag, tag)

var centerX, centerY, destR, offset;

centerX = argument0;
centerY = argument1;
destR = argument2;
offset = argument3;
flag = argument4;

var arrNum, rGap;
arrNum = 7;
rGap = 80 / arrNum;

var tag;
tag = argument5;

var i;
for(i = 0; i < arrNum; i += 1)
{
    PMCreateCircle(centerX, centerY, 4, destR - i * rGap, offset, flag, tag);
}
