//P2CreateRunningBlockBrg

var num, i;
num = 5;
i = 0;

for(i = 0; i < num ; i += 1)
{
    var inst;
    inst = instance_create(i*(800/5), 16, p2bBlock);
    inst.speed = 16;
    inst.direction = 180;

    var inst2;
    inst2 = instance_create(800 - i*(800/5), 608 - 16, p2bBlock);
    inst2.speed = 16;
    inst2.direction = 0;
}
