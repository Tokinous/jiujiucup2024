//CameraRotate(type, value, value2)

with TokinousCamera
{
    var type, value, value2;
    type = argument0;
    value = argument1;
    value2 = argument2;

    switch(type)
    {
        case VIEW_OPERATION_ROTATE_STATIC:
            {
                viewRotateType = VIEW_OPERATION_ROTATE_STATIC;
                viewRotate = value;
            }
            break;
        case VIEW_OPERATION_ROTATE_RESET:
            {
                viewRotateType = VIEW_OPERATION_ROTATE_RESET;
            }
            break;
        case VIEW_OPERATION_ROTATE_LINEAR:
            {
                viewRotateType = VIEW_OPERATION_ROTATE_LINEAR;

                destViewRotate = value2;
                viewRotateSpeed = value;
            }
            break;
        case VIEW_OPERATION_ROTATE_EASE:
            {
                viewRotateType = VIEW_OPERATION_ROTATE_EASE;

                destViewRotate = value;
                viewRotateEaseParam = value2;
            }
        default:
            break;
    }

}
