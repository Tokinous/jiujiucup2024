if(instance_number(ts_rise_bg_brg) < riseBgCount)
{
    repeat(riseBgCount - instance_number(ts_rise_bg_brg))
    {
        instance_create(
            random(800), random_range(view_yview[0], view_yview[0] + 608), ts_rise_bg_brg);
    }
}
