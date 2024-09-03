#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=305
applies_to=self
invert=0
arg0=tl_p2_main
arg1=0
arg2=0
arg3=0
*/
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
flag = 0;

index = 0;

//discrete move
discreteTime = 0;
alarm[1] = 0;

discreteIndex = -1;
discreteBorder = 608;

//outercircle
outerCircle = 1;
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
//kick the dance floor
listKickTheDanceFloorX = ds_list_create();
listKickTheDanceFloorY = ds_list_create();

var xx, yy;
xx[0] = 128; yy[0] = 128;
xx[1] = 128; yy[1] = 144;
xx[2] = 128; yy[2] = 160;
xx[3] = 128; yy[3] = 176;
xx[4] = 128; yy[4] = 192;
xx[5] = 144; yy[5] = 160;
xx[6] = 160; yy[6] = 144;
xx[7] = 176; yy[7] = 128;
xx[8] = 160; yy[8] = 176;
xx[9] = 176; yy[9] = 192;
xx[10] = 208; yy[10] = 128;
xx[11] = 224; yy[11] = 128;
xx[12] = 240; yy[12] = 128;
xx[13] = 224; yy[13] = 144;
xx[14] = 224; yy[14] = 160;
xx[15] = 224; yy[15] = 176;
xx[16] = 224; yy[16] = 192;
xx[17] = 208; yy[17] = 192;
xx[18] = 240; yy[18] = 192;
xx[19] = 320; yy[19] = 128;
xx[20] = 304; yy[20] = 128;
xx[21] = 288; yy[21] = 128;
xx[22] = 272; yy[22] = 144;
xx[23] = 272; yy[23] = 160;
xx[24] = 272; yy[24] = 176;
xx[25] = 288; yy[25] = 192;
xx[26] = 304; yy[26] = 192;
xx[27] = 320; yy[27] = 192;
xx[28] = 352; yy[28] = 128;
xx[29] = 352; yy[29] = 144;
xx[30] = 352; yy[30] = 160;
xx[31] = 352; yy[31] = 176;
xx[32] = 352; yy[32] = 192;
xx[33] = 368; yy[33] = 160;
xx[34] = 384; yy[34] = 144;
xx[35] = 400; yy[35] = 128;
xx[36] = 384; yy[36] = 176;
xx[37] = 400; yy[37] = 192;
xx[38] = 128; yy[38] = 224;
xx[39] = 144; yy[39] = 224;
xx[40] = 160; yy[40] = 224;
xx[41] = 176; yy[41] = 224;
xx[42] = 192; yy[42] = 224;
xx[43] = 160; yy[43] = 240;
xx[44] = 160; yy[44] = 256;
xx[45] = 160; yy[45] = 272;
xx[46] = 160; yy[46] = 288;
xx[47] = 224; yy[47] = 224;
xx[48] = 224; yy[48] = 240;
xx[49] = 224; yy[49] = 256;
xx[50] = 224; yy[50] = 272;
xx[51] = 224; yy[51] = 288;
xx[52] = 240; yy[52] = 256;
xx[53] = 256; yy[53] = 256;
xx[54] = 272; yy[54] = 256;
xx[55] = 272; yy[55] = 224;
xx[56] = 272; yy[56] = 240;
xx[57] = 272; yy[57] = 272;
xx[58] = 272; yy[58] = 288;
xx[59] = 352; yy[59] = 224;
xx[60] = 336; yy[60] = 224;
xx[61] = 320; yy[61] = 224;
xx[62] = 304; yy[62] = 224;
xx[63] = 304; yy[63] = 240;
xx[64] = 304; yy[64] = 256;
xx[65] = 304; yy[65] = 272;
xx[66] = 304; yy[66] = 288;
xx[67] = 320; yy[67] = 288;
xx[68] = 336; yy[68] = 288;
xx[69] = 352; yy[69] = 288;
xx[70] = 320; yy[70] = 256;
xx[71] = 336; yy[71] = 256;
xx[72] = 352; yy[72] = 256;
xx[73] = 128; yy[73] = 320;
xx[74] = 128; yy[74] = 336;
xx[75] = 128; yy[75] = 352;
xx[76] = 128; yy[76] = 368;
xx[77] = 128; yy[77] = 384;
xx[78] = 144; yy[78] = 320;
xx[79] = 176; yy[79] = 352;
xx[80] = 144; yy[80] = 384;
xx[81] = 160; yy[81] = 320;
xx[82] = 176; yy[82] = 368;
xx[83] = 160; yy[83] = 384;
xx[84] = 176; yy[84] = 336;
xx[85] = 208; yy[85] = 352;
xx[86] = 208; yy[86] = 336;
xx[87] = 224; yy[87] = 320;
xx[88] = 240; yy[88] = 320;
xx[89] = 256; yy[89] = 336;
xx[90] = 256; yy[90] = 352;
xx[91] = 208; yy[91] = 368;
xx[92] = 224; yy[92] = 368;
xx[93] = 240; yy[93] = 368;
xx[94] = 256; yy[94] = 368;
xx[95] = 208; yy[95] = 384;
xx[96] = 256; yy[96] = 384;
xx[97] = 288; yy[97] = 320;
xx[98] = 288; yy[98] = 336;
xx[99] = 288; yy[99] = 352;
xx[100] = 288; yy[100] = 368;
xx[101] = 288; yy[101] = 384;
xx[102] = 304; yy[102] = 336;
xx[103] = 320; yy[103] = 352;
xx[104] = 336; yy[104] = 368;
xx[105] = 352; yy[105] = 384;
xx[106] = 352; yy[106] = 320;
xx[107] = 352; yy[107] = 336;
xx[108] = 352; yy[108] = 352;
xx[109] = 352; yy[109] = 368;
xx[110] = 384; yy[110] = 336;
xx[111] = 400; yy[111] = 320;
xx[112] = 432; yy[112] = 320;
xx[113] = 416; yy[113] = 320;
xx[114] = 384; yy[114] = 352;
xx[115] = 384; yy[115] = 368;
xx[116] = 400; yy[116] = 384;
xx[117] = 416; yy[117] = 384;
xx[118] = 432; yy[118] = 384;
xx[119] = 464; yy[119] = 320;
xx[120] = 464; yy[120] = 336;
xx[121] = 464; yy[121] = 352;
xx[122] = 464; yy[122] = 368;
xx[123] = 464; yy[123] = 384;
xx[124] = 480; yy[124] = 320;
xx[125] = 512; yy[125] = 320;
xx[126] = 496; yy[126] = 320;
xx[127] = 480; yy[127] = 352;
xx[128] = 496; yy[128] = 352;
xx[129] = 512; yy[129] = 352;
xx[130] = 480; yy[130] = 384;
xx[131] = 496; yy[131] = 384;
xx[132] = 512; yy[132] = 384;
xx[133] = 128; yy[133] = 416;
xx[134] = 128; yy[134] = 432;
xx[135] = 128; yy[135] = 448;
xx[136] = 128; yy[136] = 464;
xx[137] = 128; yy[137] = 480;
xx[138] = 144; yy[138] = 416;
xx[139] = 160; yy[139] = 416;
xx[140] = 176; yy[140] = 416;
xx[141] = 144; yy[141] = 448;
xx[142] = 160; yy[142] = 448;
xx[143] = 176; yy[143] = 448;
xx[144] = 208; yy[144] = 416;
xx[145] = 208; yy[145] = 432;
xx[146] = 208; yy[146] = 448;
xx[147] = 208; yy[147] = 464;
xx[148] = 208; yy[148] = 480;
xx[149] = 224; yy[149] = 480;
xx[150] = 240; yy[150] = 480;
xx[151] = 256; yy[151] = 480;
xx[152] = 288; yy[152] = 432;
xx[153] = 288; yy[153] = 448;
xx[154] = 288; yy[154] = 464;
xx[155] = 304; yy[155] = 416;
xx[156] = 320; yy[156] = 416;
xx[157] = 336; yy[157] = 432;
xx[158] = 336; yy[158] = 448;
xx[159] = 336; yy[159] = 464;
xx[160] = 304; yy[160] = 480;
xx[161] = 320; yy[161] = 480;
xx[162] = 368; yy[162] = 432;
xx[163] = 368; yy[163] = 448;
xx[164] = 368; yy[164] = 464;
xx[165] = 384; yy[165] = 416;
xx[166] = 400; yy[166] = 416;
xx[167] = 416; yy[167] = 432;
xx[168] = 416; yy[168] = 448;
xx[169] = 416; yy[169] = 464;
xx[170] = 384; yy[170] = 480;
xx[171] = 400; yy[171] = 480;
xx[172] = 448; yy[172] = 416;
xx[173] = 448; yy[173] = 432;
xx[174] = 448; yy[174] = 448;
xx[175] = 448; yy[175] = 464;
xx[176] = 448; yy[176] = 480;
xx[177] = 464; yy[177] = 416;
xx[178] = 480; yy[178] = 416;
xx[179] = 496; yy[179] = 432;
xx[180] = 464; yy[180] = 448;
xx[181] = 480; yy[181] = 448;
xx[182] = 496; yy[182] = 464;
xx[183] = 496; yy[183] = 480;

var i;

for(i = 0; i < 184; i += 1)
{
    ds_list_add(listKickTheDanceFloorX, xx[i]);
    ds_list_add(listKickTheDanceFloorY, yy[i]);
}
#define Destroy_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
ds_list_destroy(listKickTheDanceFloorX);
ds_list_destroy(listKickTheDanceFloorY);

with block visible = 1;
#define Alarm_1
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
discreteBorder = 608;
discreteIndex += 1;

alarm[1] = discreteTime;
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if(discreteTime > 0)
{
    discreteBorder -= 608 / discreteTime;
}

index += 1;

//if(index mod 2 == 0)
{
    if(1 == outerCircle)
    {
        var range;
        range = 1200;
        CreateMoveOne(random_range(-range, 800 + range), random_range(-96, -32), p2bFollowView, random_range(8, 16), 270 - view_angle[0]);
    }
    else if(2 == outerCircle)
    {
        var range;
        range = 1200;
        CreateMoveOne(random_range(-range, 800 + range), random_range(-96, -32), p2bFollowView2, random_range(8, 16), 270 - view_angle[0]);
    }
}
#define KeyPress_82
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=203
applies_to=self
invert=0
*/
