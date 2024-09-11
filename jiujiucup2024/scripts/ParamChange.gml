//ParamChange(type, value)

with show_param_change instance_destroy();

var type, value, arg1;

type = argument0;
value = argument1;
arg1 = argument2;

switch(type)
{
    case PARAM_CHANGE_TYPE_GRAVITY:
        {
            with player
            {
                noneGrav = 1;
                infJump = 1;
            }

            CreateParamChangeNotice("GRAVITY: NONE");
        }
        break;
    case PARAM_CHANGE_TYPE_MOUSE_INPUT:
        {
            with player
            {
                playerMoveType = PLAYER_MOVE_TYPE_MOUSE;
            }

            CreateParamChangeNotice("INPUT: MOUSE");
        }
        break;
    case PARAM_CHANGE_TYPE_NUMBER:
        {
            with player
            {
                infJump = false;
                maxJumps = 2;
                playerMoveType = PLAYER_MOVE_TYPE_DEFAULT;
                slopeGravity = false;
                invertControl = 0;
                visible = 1;
                dotkidMode = false;
                noneGrav = 0;
                visibleFlag = 1;
            }

            CreateParamChangeNotice("PLAYER COUNT: " + string(value), 1);
        }
        break;
    case PARAM_CHANGE_TYPE_HITBOX:
        {
            with player
            {
                dotkidMode = value;
            }

            var strEnable;
            if(value)
                strEnable = "ENABLE";
            else
                strEnable = "DISABLE";

            CreateParamChangeNotice("DOTKID: " + strEnable);
        }
        break;
    case PARAM_CHANGE_TYPE_VISIBILITY:
        {
            with player
            {
                visible = value;
                visibleFlag = value;
            }

            var strVisible;
            if(value)
                strVisible = "ENABLE";
            else
                strVisible = "DISABLE";

            CreateParamChangeNotice("VISIBLE: " + strVisible, 1);
        }
        break;
    case PARAM_CHANGE_TYPE_INVERT_CONTROL:
        {
            with player
            {
                invertControl = 1;
            }

            CreateParamChangeNotice("ERROR: INVERTED");
        }
        break;
    case PARAM_CHANGE_TYPE_RESET:
        {
            with player
            {
                infJump = false;
                maxJumps = 2;
                playerMoveType = PLAYER_MOVE_TYPE_DEFAULT;
                slopeGravity = false;
                invertControl = 0;
                visible = 1;
                dotkidMode = false;
                mask_index = maskPlayer;
                image_angle = 0;
                grav = 0.4;
                gravity = 0.4;
                noneGrav = 0;
                visibleFlag = 1;
            }

            CreateParamChangeNotice("RESET");
        }
        break;
    case PARAM_CHANGE_TYPE_JUMP:
        {
            switch(value)
            {
                case PLAYER_JUMP_RESTRICT_INFINITE:
                    {
                        with player
                        {
                            playerMoveType = PLAYER_MOVE_TYPE_DEFAULT;
                            infJump = true;
                        }

                        CreateParamChangeNotice("Jump: Infinite");
                    }
                    break;
                case PLAYER_JUMP_RESTRICT_TIMES:
                    {
                        with player
                        {
                            infJump = false;
                            maxJumps = arg1;
                            playerMoveType = PLAYER_MOVE_TYPE_DEFAULT;
                        }

                        //CreateParamChangeNotice("Jump: Max - " + string(arg1));
                    }
                    break;
                default:
                    break;
            }
        }
        break;
    case PARAM_CHANGE_TYPE_SLOPE_GRAVITY:
        {
            with player
            {
                infJump = false;
                maxJumps = 2;
                playerMoveType = PLAYER_MOVE_TYPE_DEFAULT;
                slopeGravity = true;
            }

            CreateParamChangeNotice("MOVE: SLOPE");
        }
        break;
    case PARAM_CHANGE_TYPE_DISCRETE_MOVE:
        {
            with player
            {
                hspeed = 0;
                vspeed = 0;
                gravity = 0;

                playerMoveType = PLAYER_MOVE_TYPE_DISCRETE;
            }

            CreateParamChangeNotice("ERROR: DISCRETE");
        }
        break;
    case PARAM_CHANGE_TYPE_V6:
        {
            with player
            {
                vspeed = 0;
                gravity = 0;
                playerMoveType = PLAYER_MOVE_TYPE_V6;
                v6Vspeed = value;
            }

            CreateParamChangeNotice("VVVVVV");
        }
        break;
    case PARAM_CHANGE_TYPE_CENTER_MOVE:
        {
            with player
            {
                hspeed = 0;
                vspeed = 0;
                gravity = 0;
                playerMoveType = PLAYER_MOVE_TYPE_ROTATE_CENTER;
                r = 128;
                phase = 270;
                yflag = -1;
                infJump = false;
            }

            CreateParamChangeNotice("GRAVITY: TO CENTER", 1);
        }
        break;
    default:
        break;
}
