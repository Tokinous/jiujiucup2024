//PRCreateLinkLaser

listAnchor = ds_list_create();

with pRbCircle2
{
    if(image_xscale > 1)
        ds_list_add(other.listAnchor, id);
}

var size, i;
size = ds_list_size(listAnchor);

i = 0;

for(i = 0; i < size; i += 1)
{
    var j;

    for(j = 0; j < size; j += 1)
    {
        if(i == j)
        {
            j += 1;
            continue;
        }

        var anchor1, anchor2;
        anchor1 = ds_list_find_value(listAnchor, i);
        anchor2 = ds_list_find_value(listAnchor, j);

        var inst;

        inst = instance_create(anchor1.x, anchor1.y, pRbLaser);
        inst.image_angle = point_direction(anchor1.x, anchor1.y, anchor2.x, anchor2.y);
    }
}

ds_list_destroy(listAnchor);
