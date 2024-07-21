//ParamChange(type, value)

var type, value, arg1;

type = argument0;
value = argument1;
arg1 = argument2;

switch(type)
{
    case PARAM_CHANGE_TYPE_JUMP:
        {
            switch(value)
            {
                case PLAYER_JUMP_RESTRICT_INFINITE:
                    {
                        with player
                        {
                            infJump = true;
                        }

                        CreateParamChangeNotice("Parameter Change: Jump Restrict - Infinite");
                    }
                    break;
                case PLAYER_JUMP_RESTRICT_TIMES:
                    {
                        with player
                        {
                            infJump = false;
                            maxJumps = arg1;
                        }

                        CreateParamChangeNotice("Parameter Change: Jump Restrict - max jump: " + string(arg1));
                    }
                    break;
                default:
                    break;
            }
        }
        break;
    case PARAM_CHANGE_TYPE_DISCRETE_MOVE:
        {
            with player
            {
                x -= x mod 32;
                y -= y mod 32;

                x += 17;
                y += 23;

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
