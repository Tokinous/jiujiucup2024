with all
{
    var parent;
    parent = object_get_parent(object_index);

    if(-1 != parent)
    {
        if(ts_brgbase == parent)
        {
            sprite_index = argument0;
            image_angle += random(1);
        }
        else if(ts_brgbase == object_get_parent(parent))
        {
            sprite_index = argument0;
            image_angle += random(1);
        }
    }

}
