var i, space, n;
i = 0;
space = 6;
n = 5;

repeat(n)
{
    createMoveOne(view_xview[0] + 400 - space*(mid + i), view_yview[0] + 16, ts_p2_b1, -1, 270 );
    createMoveOne(view_xview[0] + 400 + space*(mid + i), view_yview[0] + 16, ts_p2_b1, -1, 270 );
    i += 1;
}

mid += n;
