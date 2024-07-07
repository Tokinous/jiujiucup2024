//createCircle(center x, center y, circle r, obj, num, mode, spd, offset, dir(optional) or extra arg);
// mode 1: center -> obj
//     -1: obj -> center
//      0: all to one dir

var centerX, centerY, r, obj, num, mode, spd;

centerX = argument0;
centerY = argument1;
r = argument2;

obj = argument3;
num = argument4;
mode = argument5;
spd = argument6;

var i,ph;

ph = argument7;

for(i=0;i<num;i+=1){

    var xx,yy;

    ph = argument7+360/num*i;

    xx = centerX + r*cos(degtorad(ph));
    yy = centerY + r*sin(degtorad(ph));

    var inst;

    inst = instance_create(xx, yy, obj);
    inst.speed=spd;

    if(1 == mode)
    {
        inst.direction = point_direction(centerX, centerY, xx, yy);
    }
    else if(-1 == mode)
    {
        inst.direction = point_direction(xx, yy, centerX, centerY);
    }
    else if(0 == mode)
    {
        if(argument8)
            inst.direction=argument8;
            inst.image_angle = point_direction(xx, yy, centerX, centerY);
    }

    //arg 8, extra arg
    if(!argument8)
    {
        if(ts_p3_bpath == inst.object_index)
        {
            inst.flag = argument8;
        }
    }

}
