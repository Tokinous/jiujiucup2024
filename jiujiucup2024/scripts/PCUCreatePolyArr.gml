var i, j;

for(i = 0; i < 4; i += 1)
{
    for(j = 0; j < 5; j += 1)
    {
        var xOffset, xx, yy;
        xOffset = (i mod 2) * 80;

        xx = xOffset + 80 + j * 160;
        yy = 100 + i * 160;

        PCUCreatePolySix2(xx, yy, i);
    }
}
