//P1ThreeCircle(offset);

P1SingleCircle(400, 304, argument0);
P1SingleCircle(400, 304, argument0 + 120);
P1SingleCircle(400, 304, argument0 + 120 + 120);

var i;
i = 0;

repeat(3)
{
    var xx, yy;

    xx = CalcCircleX(400, 304, 128, 3, i, argument0 + 60);
    yy = CalcCircleY(400, 304, 128, 3, i, argument0 + 60);

    var inst;
    inst = instance_create(400, 304, p1bAnchor);
    inst.destX = xx;
    inst.destY = yy;
    inst.index = 1;

    i += 1;
}
