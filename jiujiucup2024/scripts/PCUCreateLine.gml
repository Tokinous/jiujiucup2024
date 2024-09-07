///PCUCreateLine(destY)

var destY;
destY = argument0;

var num;
num = 50;

var i;
for(i = 0; i < num; i += 1)
{
    var xx, yy;
    xx = CalcLineX(0, 800, num, i);
    yy = 0;

    var inst;
    inst = instance_create(xx, 0, pCUbLine2);
    inst.destY = destY;
}
