#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
///Initializing
//global variables:
//
//  global.frozen       set to true to make player uncontrollable
//  global.frozen2      set to true to make player unmovable
//  global.reverse      0: normal kid ; 1: reverse kid
//
//whether can infinite jump or not
infJump = true;
//first jump speed
jump[1] = 8.5;
//second jump speed
jump[2] = 7;
//maximum jump times
//you should have variables such as jump[3] if you need 3 jumps or more
maxJumps = 2;
//current jump times
curJumps = 1;
//horizontal speed
maxSpeed = 3;
//gravity
grav = 0.4;
//maximum speed when falling
maxVspeed = 9;
//reverse gravity
if(global.reverse == 0)
{
    yflag = 1;
}
if(global.reverse == 1)
{
    yflag = -1;
    y -= 4;
    curJumps = 1;
}
image_yscale = yflag;
image_speed = 0.2;
//save game when playing for the 1st time
if(room != rSelectStage && room != rOptions)
{
    if(file_exists(global.saving_directory+"SaveData"+string(global.savenum)) == false)
    {
      global.death = 0;
      global.timestep = 0;
      saveGame();
    }
}

maxHP = 20;
curHP = maxHP;

playerMoveType = PLAYER_MOVE_TYPE_DEFAULT;

//discrete move
discreteIdleCount = 0;
discreteIdleInterrupt = 24;

//slope gravity
slopeGravity = false;

//dotkid mode
dotkidMode = 0;

//invert control
invertControl = 0;

//v6
v6Vspeed = 0;

//nonegrav
noneGrav = 0;

//center grav
centerGrav = 0;

centerX = 400;
centerY = 304;
r = 0;
rSpd = 0;
rGrav = 0.4;
maxRSpd = 4;
phase = 0;
phaseSpd = 0;
maxPSpd = 3;
#define Alarm_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if(!keyboard_check(global.jumpbutton) && yflag*vspeed < 0){
    vspeed *= 0.45;
    alarm[0] = 0;
}
else{
    alarm[0] = 1;
}
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
switch(playerMoveType)
{
    case PLAYER_MOVE_TYPE_DEFAULT:
    case PLAYER_MOVE_TYPE_V6:
        {
            ///Player movements
            if(global.frozen2 == 0)
            {
                playerMove();
                playerWallJump();
                playerMisc();
            }
            else
            {
                gravity = 0;
                image_speed = 0;
                speed = 0;
            }
        }
        break;
    case PLAYER_MOVE_TYPE_DISCRETE:
        {
            PlayerDiscreteMove();
            //playerShoot();
        }
        break;
    case PLAYER_MOVE_TYPE_MOUSE:
        {
            x = mouse_x;
            y = mouse_y;
        }
        break;
    case PLAYER_MOVE_TYPE_ROTATE_CENTER:
        {
            PlayerCenterMove();
            PlayerCenterShoot();
        }
        break;
    default:
        break;
}
#define Step_2
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
switch(playerMoveType)
{
    case PLAYER_MOVE_TYPE_DEFAULT:
        {
            ///Checking for Slopes
            playerSlope();
        }
        break;
    default:
        break;
}
#define Collision_block
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
switch(playerMoveType)
{
    case PLAYER_MOVE_TYPE_DEFAULT:
        {
            ///collision with blocks
            //horizontal
            if(place_free(x+hspeed,y) == false){
                if(hspeed <= 0){
                    move_contact_solid(180,abs(hspeed));
                }
                if(hspeed > 0){
                    move_contact_solid(0,abs(hspeed));
                }
                hspeed = 0;
            }
            //vertical
            if(place_free(x,y+vspeed) == false){
                if(global.reverse){
                    if(vspeed <= 0){
                        move_contact_solid(90,abs(vspeed));
                        curJumps=1;
                    }
                    if(vspeed > 0){
                        move_contact_solid(270,abs(vspeed));
                    }
                }
                else{
                    if(vspeed <= 0){
                        move_contact_solid(90,abs(vspeed));
                    }
                    if(vspeed > 0){
                        move_contact_solid(270,abs(vspeed));
                        curJumps=1;
                    }
                }
                vspeed = 0;
                gravity = 0;
            }
            if (place_free(x+hspeed,y+vspeed) == false){
                hspeed=0;
            }

        }
        break;
    case PLAYER_MOVE_TYPE_V6:
        {
            v6Vspeed *= -1;
        }
        break;
    default:
        break;
}
#define Collision_platform
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
switch(playerMoveType)
{
    case PLAYER_MOVE_TYPE_DEFAULT:
        {
            ///collision with platforms
            if(global.reverse == 0){
                if(y-vspeed/2 <= other.y){
                    if(other.vspeed >= 0){
                        y = other.y-9;
                        vspeed = other.y-other.yprevious;
                        curJumps=1;
                    }
                    onPlatform = 1;
                    curJumps=1;
                }
            }
            else{
                if(y-vspeed/2 >= other.y+15){
                    if(other.vspeed >= 0){
                        y = other.y+24;
                        vspeed = other.y-other.yprevious;
                        curJumps=1;
                    }
                    onPlatform = 1;
                    curJumps=1;
                }
            }
        }
    default:
        break;
}
#define Other_4
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
//creating bow
if !instance_exists(bow){
    var a;
    a = instance_create(x,y,bow);
    a.image_xscale = image_xscale;
    a.image_yscale = image_yscale;
}
//spin view
if(global.reverse == 1){
    view_enabled = true;
    view_angle[0] = 180;
}
else{
    view_angle[0] = 0;
}
#define Other_40
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
/*
if(place_meeting(x,y,roomChanger) == false){
    killPlayer();
}
#define Draw_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if(dotkidMode)
{
    draw_set_color(c_white);
    draw_set_blend_mode(bm_add);
    draw_set_alpha(1);

    draw_rectangle(x - 16, y - 16, x + 16, y + 16, 1);

    draw_set_blend_mode(bm_normal);
    draw_set_alpha(1);
}

draw_self();
#define KeyPress_81
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
//kill yourself
killPlayer();
