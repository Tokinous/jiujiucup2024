///PMSquareLine(initX, initY, destX, destY, num, timer)

var initX, initY, destX, destY, timer;

initX = argument0;
initY = argument1;

destX = argument2;
destY = argument3;

timer = argument4;

var num, i, range;

num = argument4;
range = 10;

i = 0;

for(i = 0; i <= num; i += 1)
{
    var inst;

    //if(i > range && i <= num - range)
    //    continue;

    inst = instance_create(initX, initY, pMbLine);
    inst.destX = CalcLineX(initX, destX, num, i);
    inst.destY = CalcLineY(initY, destY, num, i);
    if(!timer)
        inst.alarm[0] = 346 - 277;
    else
        inst.alarm[0] = timer;
}
