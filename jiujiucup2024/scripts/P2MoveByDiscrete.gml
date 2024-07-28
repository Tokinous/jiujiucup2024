switch(discreteDirection)
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
