//Polygon(x, y, num, speed, numperline, obj, direction)
var a,i,j,dir,n,v,vv,ddd,k;
n = argument4-1;
dir = argument6
for(j=1;j<=argument2;j+=1;)
{
    v=argument3;
    ddd = degtorad((180-(360/argument2))/2)
    k=2*v*cos(ddd);
    for(i=1;i<=n;i+=1)
    {
        a=instance_create(argument0, argument1, argument5);
        a.speed=abs(sqrt(sqr(v)+sqr(k*i/n)-2*v*(k*i/n)*cos(ddd)));
        vv=a.speed;
        a.direction=dir+radtodeg(arccos((sqr(v)+sqr(vv)-sqr(k*i/n))/(2*v*(vv))));
        if(i==n)
        {
            dir += 360/argument2;
        }
    }
}
