//P2CreateDiamondCircle
var xx, yy, i;

xx[0] = 416; yy[0] = 304;
xx[1] = 448; yy[1] = 288;
xx[2] = 480; yy[2] = 272;
xx[3] = 512; yy[3] = 256;
xx[4] = 544; yy[4] = 272;
xx[5] = 576; yy[5] = 288;
xx[6] = 608; yy[6] = 304;
xx[7] = 576; yy[7] = 320;
xx[8] = 544; yy[8] = 336;
xx[9] = 512; yy[9] = 352;
xx[10] = 448; yy[10] = 320;
xx[11] = 480; yy[11] = 336;
xx[12] = 432; yy[12] = 296;
xx[13] = 464; yy[13] = 280;
xx[14] = 496; yy[14] = 264;
xx[15] = 528; yy[15] = 264;
xx[16] = 560; yy[16] = 280;
xx[17] = 592; yy[17] = 296;
xx[18] = 592; yy[18] = 312;
xx[19] = 560; yy[19] = 328;
xx[20] = 528; yy[20] = 344;
xx[21] = 496; yy[21] = 344;
xx[22] = 464; yy[22] = 328;
xx[23] = 432; yy[23] = 312;
xx[24] = 424; yy[24] = 300;
xx[25] = 440; yy[25] = 292;
xx[26] = 456; yy[26] = 284;
xx[27] = 472; yy[27] = 276;
xx[28] = 488; yy[28] = 268;
xx[29] = 504; yy[29] = 260;
xx[30] = 520; yy[30] = 260;
xx[31] = 536; yy[31] = 268;
xx[32] = 552; yy[32] = 276;
xx[33] = 568; yy[33] = 284;
xx[34] = 584; yy[34] = 292;
xx[35] = 600; yy[35] = 300;
xx[36] = 600; yy[36] = 308;
xx[37] = 584; yy[37] = 316;
xx[38] = 568; yy[38] = 324;
xx[39] = 552; yy[39] = 332;
xx[40] = 536; yy[40] = 340;
xx[41] = 520; yy[41] = 348;
xx[42] = 504; yy[42] = 348;
xx[43] = 488; yy[43] = 340;
xx[44] = 472; yy[44] = 332;
xx[45] = 456; yy[45] = 324;
xx[46] = 440; yy[46] = 316;
xx[47] = 424; yy[47] = 308;


var baseR;
baseR = 100;

var circleNum, circleI;
circleNum = 4;
circleI = 1;

var diamondNum, diamondI;
diamondNum = 5;
diamondI = 0;

for(circleI = 1; circleI <= circleNum; circleI += 1)
{
    var  circleFlag;
    circleFlag = 1;

    //calc one diamond
    for(diamondI = 0; diamondI < diamondNum; diamondI += 1)
    {
        for(i = 0; i < 48; i += 1)
        {
            //calc one relative
            var scale;
            scale = (circleI / 1.4) * point_distance(400, 304, xx[i], yy[i]);

            var phase;
            phase = power(-1, circleI) * point_direction(400, 304, xx[i], yy[i]) + 360 / diamondNum * diamondI;

            var inst;
            inst = instance_create(400, 304, p2bCircle);
            inst.phase = phase + 180 * power(-1, circleI + 1);
            inst.destPhase = phase;
            inst.phaseSpd = (1.5 - circleI * 1 / circleNum) * power(-1, circleI);
            inst.r = 0;
            inst.destR = scale;

            if(i > 12)
            {
                inst.image_alpha = 0.25;
            }

            inst.centerX = 400;
            inst.centerY = 304;

        }
    }

    circleFlag *= -1;
}
