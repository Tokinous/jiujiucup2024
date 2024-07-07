if(!disappear || !animeFlag)
{
    animeFlag = 1;
    disappear = 1;
    endFlag = 1;
}
else
    return 0;

var ii, jj;
ii = 0;
jj = 0;

repeat(2)
{
    ii = 0;

    repeat(2)
    {
        instance_create(x + 8*(1+ii), y + 8*(1+jj), ts_block_brg);
        ii += 2;
    }

    jj += 2;
}
