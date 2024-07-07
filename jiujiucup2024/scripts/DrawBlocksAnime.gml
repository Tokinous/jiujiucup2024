// DrawBlock
// only for 32px block
// x, y, horizonal / vertical (string H, V), num, special

var xx, yy, i, initBlock, endBlock, lineBlock;

xx = argument0;
yy = argument1;

if(IsInView(xx, yy, 32))
    initBlock = instance_create(xx, yy, blockAnime);
else
    initBlock = instance_create(xx, yy, block);

initBlock.sprite_index = block_avo;
initBlock.image_speed = 0;
initBlock.image_index = 0;

for(i = 0; i < argument3 - 2; i+=1)
{
    if("h" == argument2)
    {
        xx += 32;
    }
    else if("v" == argument2)
    {
        yy += 32;
    }

    if(IsInView(xx, yy, 32))
        lineBlock = instance_create(xx, yy, blockAnime);
    else
        lineBlock = instance_create(xx, yy, block);

    lineBlock.sprite_index = block_avo;
    lineBlock.image_speed = 0;

    if("h" == argument2)
    {
        lineBlock.image_index = 1;
    }
    else if("v" == argument2)
    {
        lineBlock.image_index = 2;
    }

}

if("h" == argument2)
{
    xx += 32;
}
else if("v" == argument2)
{
    yy += 32;
}

if(IsInView(xx, yy, 32))
    endBlock = instance_create(xx, yy, blockAnime);
else
    endBlock = instance_create(xx, yy, block);

endBlock.sprite_index = block_avo;
endBlock.image_speed = 0;
endBlock.image_index = 0;
