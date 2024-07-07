//helixChair (phase , num, spd, reverse direction)

var i, j, rd, ry;
i = 0;
j = 0;

rd = 275 + 32 * cos(degtorad(global.STEP));

if(chairFlag)
    ry = view_yview[0]-16;
else
    ry = view_yview[0] + 608 + 16;

    repeat(argument1)
    {
        var inst;
        inst = instance_create(400, ry, ts_p2_bsin);
        inst.phase = argument0;
        inst.phaseSpd = argument2;
        inst.flag = argument3;
        inst.r = i*16 + rd;
        inst.destY = view_yview[0] + 128;
        inst.x = 400 + r*cos(degtorad(phase));
        i+=1;
    }
    i = 0;

    repeat(argument1)
    {
        var inst2;
        inst2 = instance_create(400, ry - 16*(argument1 - i), ts_p2_bsin);
        inst2.phase = -argument0;
        inst2.phaseSpd = -argument2;
        inst2.flag = argument3;
        inst2.r = 80;
        inst2.destY = view_yview[0] + 128 + 16*i;
        inst2.x = 400 + r*cos(degtorad(phase));;
        i+=1;
    }
