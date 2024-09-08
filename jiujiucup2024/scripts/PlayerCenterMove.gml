var L,R,h;

image_yscale = 1;
if(global.reverse == 0)
{
    yflag = 1;
    L = keyboard_check_direct(global.leftbutton);
    R = keyboard_check_direct(global.rightbutton);
}
else
{
    yflag = -1;
    R = keyboard_check_direct(global.leftbutton);
    L = keyboard_check_direct(global.rightbutton);
}

//right overrides left
h = R;
if(h == 0){
    h = -L;
}
if(global.frozen == true){
    h = 0;
}

//if we're going to run
if(h != 0 )
{
    if(distance_to_object(WalljumpR) != 1 && distance_to_object(WalljumpL) > 1)
    {
        image_xscale = h;
    }
    if((h = -1 && distance_to_object(WalljumpR) != 1) || (h=1 && distance_to_object(WalljumpL) > 1))
    {
        //if not slipping
        phaseSpd = maxPSpd*h;

        //running sprites
        sprite_index = sprPlayerRunning;
        image_speed = 0.5;
    }
}
else
{
    //stop if we're going to idle
    phaseSpd = 0;

    //idling sprite
    sprite_index = sprPlayerIdle;
    image_speed = 0.2;
}

//jumping sprites
if(rSpd < -0.05 && !r < 128)
{
    sprite_index = sprPlayerFall;
}
if(rSpd > 0.05 && r > 128)
{
    sprite_index = sprPlayerJump;
}

//vertical speed limitations
if(rSpd * yflag > maxRSpd)
{
    rSpd = sign(rSpd)*maxRSpd;
}

//shooting and jumping
if(global.frozen == false)
{
    if(maxJumps > 0)
        PlayerCenterJump();
    if(global.enable_jump_cancel && keyboard_check_released(global.jumpbutton) && yflag*rSpd < 0){
        rSpd *= 0.45;
    }
}

r += rSpd;

if(r <= 128)
{
    rSpd = 0;
    r = 128;
}

if(r > 128)
    rSpd -= rGrav;

phase += phaseSpd;

x = CalcCircleX(centerX, centerY, r, 1, 1, phase);
y = CalcCircleY(centerX, centerY, r, 1, 1, -phase);

image_angle = point_direction(x, y, 400, 304) + 90;
