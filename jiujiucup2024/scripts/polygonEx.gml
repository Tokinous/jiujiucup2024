//num, speed, numperline, obj, direction, mode
// mode 1: center -> obj
//     -1: obj -> center
//      0: all to one dir

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

        var r, rscale;
        rscale = abs(sqrt(sqr(v)+sqr(k*i/n)-2*v*(k*i/n)*cos(ddd)));

        a.speed=abs(sqrt(sqr(v)+sqr(k*i/n)-2*v*(k*i/n)*cos(ddd)));
        vv=a.speed;
        a.direction=dir+radtodeg(arccos((sqr(v)+sqr(vv)-sqr(k*i/n))/(2*v*(vv))));
        if(i==n)
        {
            dir += 360/argument0;
        }

        a.r = 128*rscale;
        a.phase = a.direction;
        a.speed = 0;
        a.spinSpd = 1.5;
    }
}
