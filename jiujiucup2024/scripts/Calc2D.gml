tmpx=argument0;
tmpy=argument1;
tmpz=argument2;
centerX=argument3;
centerY=argument4;

if(100+tmpz>0)
{
    var rate;
    rate=centerY/(centerY+tmpz);
    x=centerX+tmpx*rate;
    y=centerY+tmpy*rate;
    depth = tmpz;

    image_xscale = xscl*rate;
    image_yscale = yscl*rate;

    image_alpha = alpha*rate*rate*rate;

    if(argument5)
    {
        //image_alpha = alpha*rate*rate*rate;
    }
}
else
{
    //visible = false;
}
