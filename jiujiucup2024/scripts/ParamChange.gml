//ParamChange(type, value)

var type, value;

type = argument0;
value = argument1;

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
                default:
                    break;
            }
        }
        break;
    default:
        break;
}
