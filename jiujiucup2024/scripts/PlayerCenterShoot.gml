//shoot a bullet when press shoot button
var inst;
if(keyboard_check_pressed(global.shootbutton)){
    if(instance_number(bullet)<4){
        inst = instance_create(x+2*image_xscale,y-2*yflag,bullet);
        inst.speed = 16 * image_xscale;
        inst.direction = image_angle;
        audio_playsound(sndShoot);
    }
}
