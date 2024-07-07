// IsInView ( x, y, offset );

var xx, yy, borderX, borderY, offset;

xx = argument0;
yy = argument1;
offset = argument3;

borderX = view_xview[0];
borderY = view_yview[0];

return !(
    ( xx < borderX - offset )
    || (xx > borderX + view_wview[0] + offset)
    || (yy > borderY + view_hview[0] + offset)
    || (yy < borderY - offset)
);
