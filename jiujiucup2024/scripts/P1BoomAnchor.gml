//P1BoomAnchor(index);

with p1
{
    anchorIndex = argument0;
}

with(p1bAnchor)
{
    if(index == p1.anchorIndex)
        ds_list_add(p1.listAnchor, id);
}

with p1
{
    var size, i;
    size = ds_list_size(p1.listAnchor);

    i = 0;

    repeat(size)
    {
        var j;
        j = 0;

        repeat(size)
        {
            if(i == j)
            {
                j += 1;
                continue;
            }

            var anchor1, anchor2;
            anchor1 = ds_list_find_value(p1.listAnchor, i);
            anchor2 = ds_list_find_value(p1.listAnchor, j);

            var inst;

            inst = instance_create(anchor1.x, anchor1.y, p1bLaser);
            inst.image_angle = point_direction(anchor1.x, anchor1.y, anchor2.x, anchor2.y);

            j += 1;
        }

        i += 1;
    }
}

var i;

for(i = 0; i < ds_list_size(p1.listAnchor) ; i += 1)
{
    var index;
    index = ds_list_find_value(p1.listAnchor, i);
    with index
        instance_destroy();
}

ds_list_clear(p1.listAnchor);
