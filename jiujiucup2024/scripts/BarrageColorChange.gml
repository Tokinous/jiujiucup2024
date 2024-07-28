//BarrageColorChange(change type, param 1)

var changeType, param1;

changeType = argument0;
param1 = argument1;

switch(changeType)
{
    case COLOR_CHANGE_TYPE_LINEAR:
        {
            with colorManager
            {
                barrageColorEnable = 1;
                barrageColorHChangeType = COLOR_CHANGE_TYPE_LINEAR;
                barrageColorHChangeSpeed = param1;
            }
        }
        break;
    default:
        break;
}
