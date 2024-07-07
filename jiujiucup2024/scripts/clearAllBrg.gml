with all
{
    var parent;
    parent = object_get_parent(object_index);

    if(-1 != parent)
    {
        if(ts_brgbase == parent)
            instance_destroy();
        else if(ts_brgbase == object_get_parent(parent))
            instance_destroy();
    }

}

with objShadow instance_destroy();
