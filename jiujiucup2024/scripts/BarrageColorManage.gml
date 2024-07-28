with all
{
    var parent;
    parent = object_get_parent(object_index);

    if(-1 != parent)
    {
        if(brgbase == parent || brgbase == object_get_parent(parent))
        {
            image_blend = colorManager.barrageColor;
        }
    }

}

with block
{
    image_blend = colorManager.barrageColor;
}
