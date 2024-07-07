#define 0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
DebugMusicPart(17);

screenFlash(240);

with bg2obj instance_destroy();
with bg1obj instance_destroy();

x = 400;
y = 304;

/*
var layercount;
layercount = 0;

for(layercount = 1; layercount < 6; layercount += 1)
{
    {
        var a,i,j,dir,n,v,vv,ddd,k;
        n = 24+10*layercount-1;
        dir = point_direction(x, y, player.x, player.y);
        for(j=1;j<=4;j+=1;)
        {
            v=128*layercount;
            ddd = degtorad((180-(360/4))/2)
            k=2*v*cos(ddd);
            for(i=1+5*layercount;i<=n-5*layercount-1;i+=1)
            {
                a=instance_create(x,y,p2bspin1);

                var r, rscale;
                rscale = abs(sqrt(sqr(v)+sqr(k*i/n)-2*v*(k*i/n)*cos(ddd)));

                a.speed=abs(sqrt(sqr(v)+sqr(k*i/n)-2*v*(k*i/n)*cos(ddd)));
                vv=a.speed;
                a.direction=dir+radtodeg(arccos((sqr(v)+sqr(vv)-sqr(k*i/n))/(2*v*(vv))));
                if(i==n-5*layercount-1)
                {
                    dir += 360/4;
                }

                a.r = rscale;
                a.phase = a.direction + layercount*60*power(-1, layercount);
                a.speed = 0;
                a.spinSpd = 1.25* power(-1, layercount);
                a.split = 0;
            }
        }
    }
}
#define 80
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
#define 280
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
with p2bootama speed = 0;
with p2blightball speed = 0;

alarm[0] = 0;
alarm[1] = 1;
dir -= 33;
#define 325
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
alarm[1] = 0;

screenFlash(2);
screenShake(4, 16, 16);

with p2blightball instance_destroy();
with p2bootama instance_destroy();
with p2blaser instance_destroy();

instance_create(0, 0, bg3obj);

x = 400;
y = 304;

var i;
i = 2;

repeat(6)
{
    i += 1;
    polygon(16, i*16, 2, p2bsuddenstoplightball, i*12, point_direction(x, y, 400, 304) + 180);
}


/*
var offset;
offset = 91;

p2createlaser(400, 304 + offset, 0, 32, 64);
p2createlaser(400, 304 - offset, 0, 32, 64);
p2createlaser(400 + offset, 304, 90, 32, 64);
p2createlaser(400 - offset, 304, 90, 32, 64);

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
        a=instance_create(x,y,p2blightball2laser);

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
        a.x = 400 + a.r*sin(degtorad(a.phase));
        a.y = 304 - a.r*cos(degtorad(a.phase));
    }
}
}
#define 335
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
screenShake(4, 16, 16);

with p2bsuddenstoplightball
{
    polygon(4, 6, 3, p2bsuddenstoplightball, point_direction(x, y, 400, 304), point_direction(x, y, 400, 304) + 180);
    instance_destroy();
}
#define 345
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
dir = 0;

alarm[3] = 1;
#define 385
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
alarm[3] = 0;
flag = -1;
#define 480
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
with p2blightball2laser instance_destroy();
with bg3obj instance_destroy();
with p2bsuddenstoplightball instance_destroy();

screenFlash(32);

alarm[2] = 1;
#define 560
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
alarm[2] = 0;

screenShake(8, 8, 8);

with p2blightball
{
    speed = 0;
}

dir = 0;
#define 620
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
alarm[4] = 0;

with p2blightball
{
    instance_destroy();
}
