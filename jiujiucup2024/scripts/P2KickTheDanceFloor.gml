//P2KickTheDanceFloor(flag, mod)

var flag, nMod;
flag = argument0;
nMod = argument1;

//delete discretebarrage
with p2bDiscrete
{
    discreteDirection = DISCRETE_MOVE_TYPE_NONE;
    if(id mod 5 == nMod)
        instance_destroy();
}

//block flash
with block
{
    visible = flag;
}

//pop and create kick the dance floor
var i;
i = 0;

for(i = 0; i < ds_list_size(listKickTheDanceFloorX); i += 1)
{
    if(i mod 5 != nMod)
    {
        continue;
    }

    var xx, yy;
    xx = ds_list_find_value(listKickTheDanceFloorX, i);
    yy = ds_list_find_value(listKickTheDanceFloorY, i);

    instance_create(xx, yy, p2bPub);

}

with arcadeBgSquare visible = flag;
