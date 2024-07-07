#define 0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
screenFlash(240);
screenShake(16, 8, 8);
SetBgState(1, 1000, -1.5);
SetBgState(2, 600, 1.5);

//center rect shape
{
var a,i,j,dir,n,v,vv,ddd,k;
n = 24-1;
dir = 0;
for(j=1;j<=4;j+=1;)
{
    v=128;
    ddd = degtorad((180-(360/4))/2)
    k=2*v*cos(ddd);
    for(i=1;i<=n;i+=1)
    {
        a=instance_create(x,y,p1bspin1);

        var r, rscale;
        rscale = abs(sqrt(sqr(v)+sqr(k*i/n)-2*v*(k*i/n)*cos(ddd)));

        a.speed=abs(sqrt(sqr(v)+sqr(k*i/n)-2*v*(k*i/n)*cos(ddd)));
        vv=a.speed;
        a.direction=dir+radtodeg(arccos((sqr(v)+sqr(vv)-sqr(k*i/n))/(2*v*(vv))));
        if(i==n)
        {
            dir += 360/4;
        }

        a.r = rscale;
        a.phase = a.direction;
        a.speed = 0;
        a.spinSpd = 1.5;
        a.split = 0;
    }
}
}

{
var a,i,j,dir,n,v,vv,ddd,k;
n = 24-1;
dir = 45;
for(j=1;j<=4;j+=1;)
{
    v=128;
    ddd = degtorad((180-(360/4))/2)
    k=2*v*cos(ddd);
    for(i=1;i<=n;i+=1)
    {
        a=instance_create(x,y,p1bspin1);

        var r, rscale;
        rscale = abs(sqrt(sqr(v)+sqr(k*i/n)-2*v*(k*i/n)*cos(ddd)));

        a.speed=abs(sqrt(sqr(v)+sqr(k*i/n)-2*v*(k*i/n)*cos(ddd)));
        vv=a.speed;
        a.direction=dir+radtodeg(arccos((sqr(v)+sqr(vv)-sqr(k*i/n))/(2*v*(vv))));
        if(i==n)
        {
            dir += 360/4;
        }

        a.r = rscale;
        a.phase = a.direction;
        a.speed = 0;
        a.spinSpd = 1.5;
        a.split = 0;
    }
}
}

{
var a,i,j,dir,n,v,vv,ddd,k;
n = 2-1;
dir = 0;
for(j=1;j<=128;j+=1;)
{
    v=128;
    ddd = degtorad((180-(360/128))/2)
    k=2*v*cos(ddd);
    for(i=1;i<=n;i+=1)
    {
        a=instance_create(x,y,p1bspin1);

        var r, rscale;
        rscale = abs(sqrt(sqr(v)+sqr(k*i/n)-2*v*(k*i/n)*cos(ddd)));

        a.speed=abs(sqrt(sqr(v)+sqr(k*i/n)-2*v*(k*i/n)*cos(ddd)));
        vv=a.speed;
        a.direction=dir+radtodeg(arccos((sqr(v)+sqr(vv)-sqr(k*i/n))/(2*v*(vv))));
        if(i==n)
        {
            dir += 360/64;
        }

        a.r = rscale;
        a.phase = a.direction;
        a.speed = 0;
        a.spinSpd = -1.5;
        a.split = 1;
    }
}
}

x = 400;
y = 304;

//difficult point
polygon(4, 8, 2, p1bcurve, random(360), 8);
#define 320
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
alarm[0] = 1;
#define 640
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
with p1bspin1
{
    if(spinSpd > 0)
        spinSpd = 0.25;
    else
        spinSpd = -0.25;
}

with p1brice1
{
    flag = -1;
    speed = 0.5;
}

with p1bcurve
{
    alarm[2] = 0;
    speed = 0.5;
}

alarm[0] = 0;

with p1brice2
{
    alarm[0] = 0;
    speed = 0.5;
    spdFlag = 0;
}

with bg1obj spinSpd = 0.25;
with bg2obj spinSpd = 0.25;
#define 755
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
with p1bspin1
    spin = 0;

alarm[1] = 1;
#define 800
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=203
applies_to=self
invert=0
*/
