//P2GenerateCircleToPlayer(radium)

with p2bCircleToPlayer instance_destroy();

var r, num;

r = argument0;
num = 128;

var offset;
offset = random(360);

var i;

for(i = 0; i < num; i += 1)
{
    var xx, yy;
    xx = CalcCircleX(400, 128, r, num, i, offset);
    yy = CalcCircleY(400, 128, r, num, i, offset);

    var inst;
    inst = instance_create(xx, yy, p2bCircleToPlayer);
}
