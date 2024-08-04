#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
//view rect
viewAdj = 0;
viewScale = 1;
destViewScale = 1;

centerViewX = 400
viewX = 0;
destViewX = 0;
centerViewY = 304;
viewY = 0;
destViewY = 0;

viewW = 800;
destViewW = 800;
viewH = 608;
destViewH = 608;

viewType = 0;

//param
easeParam = 10;

linearParam = 0;

//rotate
viewRotate = 0;
viewRotateType = 0;
destViewRotate = 0;
viewRotateEaseParam = 0;
viewRotateSpeed = 0;
#define Step_2
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
//view rect

viewH = view_hview[0];
viewW = view_wview[0];

viewX = view_xview[0];
viewY = view_yview[0];

switch(viewAdj)
{
    case VIEW_OPERATION_RESET:
        {
            view_xview[0] = 0;
            view_yview[0] = 0;
            view_wview[0] = 800;
            view_hview[0] = 608;
        }
        break;
    case VIEW_OPERATION_SCALE_EASE:
        {
            viewScale += (destViewScale - viewScale)/easeParam;

            destViewW = 800*viewScale;
            destViewH = 608*viewScale;

            destViewX = centerViewX-destViewW/2;
            destViewY = centerViewY-destViewH/2;

            viewX += (destViewX-viewX)/easeParam;
            viewY += (destViewY-viewY)/easeParam;

            viewH += (destViewH-viewH)/easeParam;
            viewW += (destViewW-viewW)/easeParam;

            view_xview[0] = viewX;
            view_yview[0] = viewY;

            view_hview[0] = viewH;
            view_wview[0] = viewW;
        }
        break;
    case VIEW_OPERATION_SCALE_STATIC:
        {
            viewW = 800*viewScale;
            viewH = 608*viewScale;

            viewX = centerViewX - viewW/2;
            viewY = centerViewY - viewH/2;

            view_xview[0] = viewX;
            view_yview[0] = viewY;

            view_hview[0] = viewH;
            view_wview[0] = viewW;
        }
        break;
    case VIEW_OPERATION_SCALE_LINEAR_DECREASE:
        {
            viewScale += linearParam;
            if(viewScale <= destViewScale)
            {
                viewScale = destViewScale;
                viewAdj = VIEW_OPERATION_SCALE_STATIC;
                break;
            }

            viewW = 800*viewScale;
            viewH = 608*viewScale;

            viewX = centerViewX - viewW/2;
            viewY = centerViewY - viewH/2;

            view_xview[0] = viewX;
            view_yview[0] = viewY;

            view_hview[0] = viewH;
            view_wview[0] = viewW;
        }
        break;
    case VIEW_OPERATION_RESET:
        {

        }
        break;
    default:
        break;
}

//view rotate
switch(viewRotateType)
{
    case VIEW_OPERATION_ROTATE_STATIC:
        {
            view_angle[0] = viewRotate;
        }
        break;
    case VIEW_OPERATION_ROTATE_LINEAR:
        {
            var flag;
            if(destViewRotate < view_angle[0])
            {
                flag = -1;
            }
            else
            {
                flag = 1;
            }

            view_angle[0] += viewRotateSpeed * flag;

        }
        break;
    case VIEW_OPERATION_ROTATE_EASE:
        {
            view_angle[0] += (destViewRotate - view_angle[0]) / viewRotateEaseParam;
        }
        break;
    case VIEW_OPERATION_ROTATE_RESET:
        {
            view_angle[0] = 0;
        }
    default:
        break;
}
