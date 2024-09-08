///PCGOuterCircle(r, num, flag)

var r, flag;
r = argument0;
flag = argument2;

var num;
num = argument1;

var i, offset, dPhase;
offset = random(360);
dPhase = offset;

for(i = 0; i < num; i += 1)
{
    dPhase += 360 / num * flag;

    var xx, yy, inst;

    xx = CalcCircleX(400, 304, r, 1, 1, offset);
    yy = CalcCircleY(400, 304, r, 1, 1, offset);

    inst = instance_create(xx, yy, pCGbCircle);
    inst.centerX = 400;
    inst.centerY = 304;
    inst.r = r;
    inst.destR = r;
    inst.image_alpha = 0.5;
    inst.phase = offset;
    inst.destPhase = dPhase;
    inst.flag = flag;
}
