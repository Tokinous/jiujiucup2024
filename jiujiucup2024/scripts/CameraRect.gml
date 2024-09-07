//CameraRect(operation type, param 1, param 2)

with TokinousCamera
{
    var type;
    type = argument0;

    switch(type)
    {
        case VIEW_OPERATION_SCALE_EASE:
            {
                var destScale, easeSpd;
                destScale = argument1;
                easeSpd = argument2;

                //apply
                viewAdj = VIEW_OPERATION_SCALE_EASE;
                destViewScale = destScale;
                easeParam = easeSpd;

                centerViewX = 400;
                centerViewY = 304;
            }
            break;
        case VIEW_OPERATION_SCALE_LINEAR_DECREASE:
            {
                var destScale, easeSpd;
                destScale = argument1;
                easeSpd = argument2;

                //apply
                viewAdj = VIEW_OPERATION_SCALE_LINEAR_DECREASE;
                destViewScale = destScale;
                linearParam = easeSpd;

                centerViewX = 400;
                centerViewY = 304;
            }
            break;
        case VIEW_OPERATION_RESET:
            {
                //apply
                viewAdj = VIEW_OPERATION_RESET;

            }
            break;
        case VIEW_OPERATION_SCALE_STATIC:
            {
                //apply
                viewAdj = VIEW_OPERATION_SCALE_STATIC;
                viewScale = argument1;

                centerViewX = 400;
                centerViewY = 304;
            }
            break;
        default:
            break;
    }

}
