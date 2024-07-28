//CameraRotate(type, value)

with TokinousCamera
{
    var type, value;
    type = argument0;
    value = argument1;

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
        default:
            break;
    }

}
