//PMSquareLine(initX, initY, destX, destY, num)

var initX, initY, destX, destY;

initX = argument0;
initY = argument1;

destX = argument2;
destY = argument3;

var num, i;

num = argument4;

i = 0;

for(i = 0; i <= num; i += 1)
{
    var inst;

    inst = instance_create(initX, initY, pMbLine);
    inst.destX = CalcLineX(initX, destX, num, i);
    inst.destY = CalcLineY(initY, destY, num, i);
}
