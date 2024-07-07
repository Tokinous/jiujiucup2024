#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
maxNum = 0;
if(instance_number(all) > maxNum)
    maxNum = instance_number(all);

_curStep = 'curStep: ' + string(round(timeline_position));
_isPlaying = ' IsPlaying: ' + string(FMODInstanceIsPlaying(global.BGMHandler));
_maxInstNum = ' maxInst: ' + string(maxNum);
_instNum = ' nums: ' + string(instance_number(all));
_playerX = ' X: ';
_playerY = ' Y: ';
if instance_exists(player)
{
    _playerX += string(player.x);
    _playerY += string(player.y);
}
else
{
    _playerX += string(0);
    _playerY += string(0);
}
_curFps = ' FPS: ' + string(fps) + '/50';
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
global.BGMHandler = FMODSoundPlay(BGM_Ad,1);
FMODInstanceSetVolume(global.BGMHandler,1);

start_pos = 0;
realtime=0;

bgm_length = FMODSoundGetLength(BGM_Ad);
//bpm = 169;

//beat = 4;

//globalvar SPB;
//SPB = 3000 / bpm;

/*timeline_index = tlmain;
timeline_speed = (beat * bpm) / 3000;

timeline_running = 1;
timeline_position = start_pos;*/

start_pos = start_pos / timeline_speed;

m_time = start_pos / 50 * 1000;
_st = start_pos / 50;

FMODInstanceSetPosition(global.BGMHandler,_st/bgm_length);
FMODInstanceSetPaused(global.BGMHandler,0);

if FMODInstanceIsPlaying(global.BGMHandler)
    m_time += 1000 / room_speed;

if abs(FMODInstanceGetPosition(global.BGMHandler)*bgm_length-m_time)>75
    FMODInstanceSetPosition(global.BGMHandler,m_time/bgm_length);

FMODUpdate();

/*
//debug
_curStep = 'curStep: ' + string(round(timeline_position));
_isPlaying = ' IsPlaying: ' + string(FMODInstanceIsPlaying(global.BGMHandler));
_instNum = ' nums: ' + string(instance_number(all));
_curFps = ' FPS: ' + string(fps) + '/50';
_route=' route: '+ string(global.route);
#define Destroy_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if FMODInstanceIsPlaying(global.BGMHandler)
    FMODInstanceStop(global.BGMHandler);
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
global.STEP=realtime;
realtime+=1;

if(instance_number(all) > maxNum)
    maxNum = instance_number(all);

_curStep = 'curStep: ' + string(round(timeline_position));
_isPlaying = ' IsPlaying: ' + string(FMODInstanceIsPlaying(global.BGMHandler));
_maxInstNum = ' maxInst: ' + string(maxNum);
_instNum = ' nums: ' + string(instance_number(all));
_playerX = ' X: ';
_playerY = ' Y: ';
if instance_exists(player)
{
    _playerX += string(player.x);
    _playerY += string(player.y);
}
else
{
    _playerX += string(0);
    _playerY += string(0);
}
_curFps = ' FPS: ' + string(fps) + '/50';
#define Step_1
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if(FMODInstanceIsPlaying(global.BGMHandler)){
    m_time += 1000/room_speed;
}

if(abs(FMODInstanceGetPosition(global.BGMHandler)*bgm_length-m_time)>75){
    FMODInstanceSetPosition(global.BGMHandler,m_time/bgm_length);
}

m_fps = round(ffps);

if abs(room_speed - m_fps) > 1 && m_fps != 0
{
    FMODInstanceSetPitch(global.BGMHandler,1 / (room_speed / m_fps));
}
else
{
    FMODInstanceSetPitch(global.BGMHandler,1);
    FMODEffectSetParamValue(effect,0,1);
}
#define Draw_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
draw_set_color(c_yellow);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_font(font12);
draw_set_alpha(1);

draw_text_transformed(
    view_xview[0] + 64,
    view_yview[0] + 64,
    _curStep + _isPlaying + _maxInstNum + _instNum + _playerX + _playerY,
    view_wview[0]/800,
    view_hview[0]/608,
    0
);
