//BarrageColorChange(change type, param 1, up, down)

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

                if(argument2 && argument3)
                {
                    barrageColorHMax = argument2;
                    barrageColorHMin = argument2;
                }
            }
        }
        break;
    default:
        break;
}
