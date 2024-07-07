//num, speed, numperline, obj, direction, special arg
var a,i,j,dir,n,v,vv,ddd,k;
n = argument2-1;
dir = argument4
for(j=1;j<=argument0;j+=1;)
{
    v=argument1;
    ddd = degtorad((180-(360/argument0))/2)
    k=2*v*cos(ddd);
    for(i=1;i<=n;i+=1)
    {
        a=instance_create(x,y,argument3);
        a.speed=abs(sqrt(sqr(v)+sqr(k*i/n)-2*v*(k*i/n)*cos(ddd)));
        vv=a.speed;
        a.direction=dir+radtodeg(arccos((sqr(v)+sqr(vv)-sqr(k*i/n))/(2*v*(vv))));
        if(i==n)
        {
            dir += 360/argument0;
        }

        //extra arg
        if(!argument5)
        {
            if(a.object_index == p1bcurve)
            {
                a.spd = argument5;
            }
            if(a.object_index == p2bsuddenstoplightball)
            {
                a.tmp_dir = argument5;
            }
        }
    }
}
