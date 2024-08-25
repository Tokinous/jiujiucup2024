//ParamChange(type, value)

var type, value, arg1;

type = argument0;
value = argument1;
arg1 = argument2;

switch(type)
{
    case PARAM_CHANGE_TYPE_VISIBILITY:
        {
            with player
            {
                visible = value;
            }

            var strVisible;
            if(value)
                strVisible = "ENABLE";
            else
                strVisible = "DISABLE";

            CreateParamChangeNotice("VISIBLE: " + strVisible);
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
            }
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
    default:
        break;
}
