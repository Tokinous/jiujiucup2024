//SetBgState(bg order(1,2,3,4), radium, spin speed)

var inst;

switch(argument0)
{
    case 1:
    {
        if(instance_number(bg1obj) > 0)
        {
            with bg1obj
            {
                var tmp;
                tmp = sprite_width;

                image_xscale = argument1/tmp;
                image_yscale = argument1/tmp;

                spinSpd = argument2;
                return 0;
            }
        }

        inst = instance_create(400, 304, bg1obj);
    }
        break;
    case 2:
    {
        if(instance_number(bg2obj) > 0)
        {
            with bg2obj
            {
                var tmp;
                tmp = sprite_width;

                image_xscale = argument1/tmp;
                image_yscale = argument1/tmp;

                spinSpd = argument2;
                return 0;
            }
        }

        inst = instance_create(400, 304, bg2obj);
    }
        break;
    case 3:
        break;
    default:
        return -1;
        break
}

var tmp;
tmp = inst.sprite_width;
inst.image_xscale = argument1/tmp;
inst.image_yscale = argument1/tmp;
inst.spinSpd = argument2;
