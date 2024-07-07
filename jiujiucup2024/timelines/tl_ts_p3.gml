#define 0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
clearAllBrg();
DebugMusicPart(72.438);

screenFlash(66);

instance_create(view_xview[0], view_yview[0], ts_p3_fg);

//reset view anchor
view_xview[0] = 0;
view_yview[0] = 320;

x = view_xview[0] + view_wview[0] / 2;
y = view_yview[0] + view_hview[0] / 2 - 128;

//reset player
with player
{
    x = 400;
    y = 608 - 32;
}

with objscreenFlashEx instance_destroy();

with block instance_destroy();

var i, j, k;
i = 0;
j = 0;
k = 0;

anchorBase = view_yview[0];

//draw horizon
repeat(20)
{
    //calc (x, y) by mod 2
    if(0 == (i mod 2))
    {
        var xx, yy, ii;
        ii = 0;
        xx = 0;
        yy = anchorBase + 608 - 32 - 128 * i;

        repeat(5)
        {
            if(0 == (ii mod 2))
            {
                DrawBlocks(xx + 160 * ii, yy, 'h', 5);
            }
            else
            {
                instance_create(xx + 160 * ii + 80, yy + 16, ts_p3_anchor);
            }
            ii += 1;
        }
    }
    else
    {
        var xx, yy, ii;
        ii = 0;
        xx = 0;
        yy = anchorBase + 608 - 32 - 128 * i;

        repeat(5)
        {
            if(1 == (ii mod 2))
            {
                DrawBlocks(xx + 160 * ii, yy, 'h', 5);
            }
            else
            {
                instance_create(xx + 160 * ii + 80, yy + 16, ts_p3_anchor);
            }
            ii += 1;
        }
    }

    i += 1;
}

/*
with ts_p3_anchor
{
    if(y > 0)
    {
        setBaseBrgProp(SelectColor_ts("cyanine"), 1);
        polygon(8, 3, 2, ts_p3_b1, 360/8/2);
        polygon(8, 1, 2, ts_p3_b1, 360/8/2);
        alarm[0] = 1;
    }
}
*/


//global.tempVal = 0;

/*
with block
{
    if(y < global.tempVal)
        global.tempVal = y;

}
*/

//anchorBase = global.tempVal;
#define 117
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
/*
with ts_p3_b1
{
    if(0 == speed)
    {
        direction = direction + 135;
        speed = 1;
    }
}
#define 212
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
/*with ts_p3_b1
    fadeout = 1;

with block
{
    if(abs(y - (view_yview[0] + view_hview[0]/2)) < 800)
    {
        instance_create(x+8, y+16, ts_p3_b3);
        instance_create(x+24, y+16, ts_p3_b3);
    }
}


with ts_p3_anchor
{
    if(y > view_yview[0] - 160)
    {

    }
}
