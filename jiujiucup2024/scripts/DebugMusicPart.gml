if(room!=rAvoidance)
{
var fmod;
fmod=instance_create(0,0,_3rdAv_fmod);
fmod.realtime= argument0 * 50;
fmod.m_time= argument0 * 1000;
fmod.showDebugMsg = 1;

instance_create(0, 0, colorManager);
instance_create(0, 0, TokinousCamera);
}
