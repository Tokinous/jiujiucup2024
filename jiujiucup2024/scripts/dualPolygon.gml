var rx, ry, rd;

//random direction
rd = random(360);
rx = choose((800 - random(128)), random(128));
ry = random_range(view_yview[0] + 128, view_yview[0] + 608);
//random radium
rr = random_range(64, 128);

//random shape
rn = 4;

var a,i,j,dir,n,v,vv,ddd,k;

//num per line
n = 4;
dir = rd;

for(j=1;j<=rn;j+=1;)
{
    v=rr;
    ddd = degtorad((180-(360/rn))/2)
    k=2*v*cos(ddd);
    for(i=1;i<=n;i+=1)
    {
        var r, rscale, phase;
        r = abs(sqrt(sqr(v)+sqr(k*i/n)-2*v*(k*i/n)*cos(ddd)));

        rscale = abs(sqrt(sqr(v)+sqr(k*i/n)-2*v*(k*i/n)*cos(ddd)))/abs(sqrt(sqr(v)+sqr(k/n)-2*v*(k/n)*cos(ddd)));

        vv = r;
        phase = dir+radtodeg(arccos((sqr(v)+sqr(vv)-sqr(k*i/n))/(2*v*(vv))));

        var xx, yy;

        xx = rx + r*cos(degtorad(phase));
        yy = ry - r*sin(degtorad(phase));

        var i1;
        i1 = instance_create(xx, yy, ts_p2_b1);
        i1.direction = phase + 180;
        i1.spdScale = rscale;

        xx = 800 - rx + r*cos(degtorad(180 - phase));
        yy = ry - r*sin(degtorad(180 - phase));

        var i2;
        i2 = instance_create(xx, yy, ts_p2_b1);
        i2.direction = 180 - phase + 180;
        i2.spdScale = rscale;

        if(i==n)
        {
            dir += 360/rn;
        }
    }
}
