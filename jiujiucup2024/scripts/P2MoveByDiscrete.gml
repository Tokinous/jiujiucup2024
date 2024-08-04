var moveDistance;
moveDistance = 16;

switch(discreteDirection)
{
    case DISCRETE_MOVE_TYPE_LEFT:
        {
            x -= moveDistance;
        }
        break;
    case DISCRETE_MOVE_TYPE_RIGHT:
        {
            x += moveDistance;
        }
        break;
    case DISCRETE_MOVE_TYPE_JUMP:
        {
            y -= moveDistance;
        }
        break;
    case DISCRETE_MOVE_TYPE_FALL:
        {
            y += moveDistance;
        }
        break;
    case DISCRETE_MOVE_TYPE_JUMP_LEFT:
        {
            x -= moveDistance;
            y -= moveDistance;
        }
        break;
    case DISCRETE_MOVE_TYPE_JUMP_RIGHT:
        {
            x += moveDistance;
            y -= moveDistance;
        }
        break;
    case DISCRETE_MOVE_TYPE_FALL_LEFT:
        {
            x -= moveDistance;
            y += moveDistance;
        }
        break;
    case DISCRETE_MOVE_TYPE_FALL_RIGHT:
        {
            x += moveDistance;
            y += moveDistance;
        }
        break;
    default:
        break;
}
