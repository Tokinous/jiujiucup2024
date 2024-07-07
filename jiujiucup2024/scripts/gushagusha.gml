var inst, ii, rd, rx, ry;
ii = 0;
rd = random(360);

rx = irandom_range(5, 20);

ry = 32*(view_yview[0] div 32 - 10);

repeat(64)
{
    createMoveOne(rx*32, ry - 16 + ii*16, ts_p2_b3, 0, rd + 13*ii);
    ii += 1;
}

var inst;

inst = instance_create(rx*32, 0, ts_p2_bldes);
inst.blockDesX = rx*32 - 16;

return rx*32;
