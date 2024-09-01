with pVbSpinLaser flag = 1;

with pVbStop instance_destroy();
with pVbPub instance_destroy();

screenShake(4, 16, 16);

DrawBolcksDefault();

DrawBlocks(0, 288, BLOCK_DRAW_DIRECTION_HORIZONAL, 25);

DrawBlocks(384, 0, BLOCK_DRAW_DIRECTION_VERTICAL, 19);

with player
{
    x = 100;
    y = 608 - 150;
    Polygon(x, y, 8, 16, 2, pVbHint, random(360));
}

ParamChange(PARAM_CHANGE_TYPE_NUMBER, 4);

instance_create(100, 304 + 16 - 150, pMPlayer);
instance_create(400 - 16 + 100, 304 + 16 - 150, pMPlayer);
instance_create(400 - 16 + 100, 608 - 150, pMPlayer);

with pMPlayer
{
    Polygon(x, y, 8, 16, 2, pVbHint, random(360));
}
