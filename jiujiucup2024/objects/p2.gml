#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=305
applies_to=self
invert=0
arg0=tl_p2
arg1=0
arg2=0
arg3=0
*/
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
alarm[0] = 1;

dir = random(360);
spd = 6;
flag = 1;
#define Alarm_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
alarm[0] = 20;

polygon(4, 5, 2, p2bootama, dir);

//num, speed, numperline, obj, direction, special arg
var a,i,j,ddir,n,v,vv,ddd,k, offset, index;
n = 40-1;
ddir = dir;
offset = 13;
index = 0;
for(j=1;j<=4;j+=1;)
{
    v=5;
    ddd = degtorad((180-(360/4))/2)
    k=2*v*cos(ddd);
    for(i=1 + offset;i<=n - offset;i+=1)
    {
        a=instance_create(x,y,p2blightball);
        a.speed=abs(sqrt(sqr(v)+sqr(k*i/n)-2*v*(k*i/n)*cos(ddd)));
        vv=a.speed;
        a.direction=ddir+radtodeg(arccos((sqr(v)+sqr(vv)-sqr(k*i/n))/(2*v*(vv))));
        a.tmp_dir = ddir + 45;
        if(i==n - offset)
        {
            ddir += 360/4;
            index += 1;
        }
    }
}


dir += 33;
#define Alarm_1
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
p2createlaser(400, 304, dir, 40, 96);

dir -= 33;

screenFlash(2);
screenShake(2, 4, 4);

alarm[1] = 5;
#define Alarm_2
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
alarm[2] = 1;

var ry, inst1, inst2;

repeat(4)
{
    ry = random(608);

    inst1 = createMoveOne(0, ry, p2blightball, spd, 0);
    inst1.gravity = 0.4;
    inst1.gravity_direction = 180;
    inst1.image_xscale = 0.75;
    inst1.image_yscale = 0.75;

    inst2 = createMoveOne(800, ry, p2blightball, spd, 180);
    inst2.gravity = 0.4;
    inst2.gravity_direction = 0;
    inst2.image_xscale = 0.75;
    inst2.image_yscale = 0.75;
}

spd += 0.26;
#define Alarm_3
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
alarm[3] = 5;

var xx, yy;

xx = 400 + 64*cos(degtorad(dir));
yy = 304 - 64*sin(degtorad(dir));

p2createlaser(xx, yy, point_direction(xx, yy, 400, 304)+90, 30, 96);

xx = 400 + 128*2*cos(degtorad(dir + 180));
yy = 304 - 128*2*sin(degtorad(dir + 180));
p2createlaser(xx, yy, point_direction(xx, yy, 400, 304)+90, 30, 96);


dir += 22.5*flag;

screenShake(4, 8, 8);
#define Alarm_4
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
var rd;
rd = point_direction(400, 304, player.x, player.y);

polygon(4, 32 + random_range(-2, 2), 20, p2blightball, rd);
polygon(4, 32 + random_range(-2, 2), 20, p2blightball, rd + 45);

alarm[4] = 2;
