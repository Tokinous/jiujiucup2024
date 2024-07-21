var discreteMove;

var L, R;

L = keyboard_check_pressed(global.leftbutton);
R = keyboard_check_pressed(global.rightbutton);

var up, fall;

up = keyboard_check_pressed(global.jumpbutton);

if(!up)
{
    //check fall
    if(discreteIdleCount < discreteIdleInterrupt)
    {
        discreteIdleCount += 1;
    }
    else
    {
        discreteIdleCount = 0;
        fall = 1;
    }
}
else
{
    //reset falling
    discreteIdleCount = 0;
}

//calc move
if(L){ discreteMove = DISCRETE_MOVE_TYPE_LEFT; image_xscale = -1; }
if(R){ discreteMove = DISCRETE_MOVE_TYPE_RIGHT; image_xscale = 1; }
if(up){ discreteMove = DISCRETE_MOVE_TYPE_JUMP; sprite_index = sprPlayerJump; }
if(fall){ discreteMove = DISCRETE_MOVE_TYPE_FALL; sprite_index = sprPlayerFall; }
if(!up && !fall) sprite_index = sprPlayerIdle;
if(L && up) discreteMove = DISCRETE_MOVE_TYPE_JUMP_LEFT;
if(R && up) discreteMove = DISCRETE_MOVE_TYPE_JUMP_RIGHT;
if(L && fall) discreteMove = DISCRETE_MOVE_TYPE_FALL_LEFT;
if(R && up) discreteMove = DISCRETE_MOVE_TYPE_FALL_RIGHT;

switch(discreteMove)
{
    case DISCRETE_MOVE_TYPE_LEFT:
        {
            x -= 32;
        }
        break;
    case DISCRETE_MOVE_TYPE_RIGHT:
        {
            x += 32;
        }
        break;
    case DISCRETE_MOVE_TYPE_JUMP:
        {
            y -= 32;
        }
        break;
    case DISCRETE_MOVE_TYPE_FALL:
        {
            y += 32;
        }
        break;
    case DISCRETE_MOVE_TYPE_JUMP_LEFT:
        {
            x -= 32;
            y -= 32;
        }
        break;
    case DISCRETE_MOVE_TYPE_JUMP_RIGHT:
        {
            x += 32;
            y -= 32;
        }
        break;
    case DISCRETE_MOVE_TYPE_FALL_LEFT:
        {
            x -= 32;
            y += 32;
        }
        break;
    case DISCRETE_MOVE_TYPE_FALL_RIGHT:
        {
            x += 32;
            y += 32;
        }
        break;
    default:
        break;

}
