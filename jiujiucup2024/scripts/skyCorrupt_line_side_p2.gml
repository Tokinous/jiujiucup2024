var i, space, n;
i = 0;
space = 8;
n = 5;

repeat(n)
{
    createMoveOne(view_xview[0], view_yview[0] + 608, ts_p2_b1, 0, 270 );
    createMoveOne(view_xview[0] + 4800, view_yview[0] + 608, ts_p2_b1, 0, 270 );
    i += 1;
}

btm += n;
