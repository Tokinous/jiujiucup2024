#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
//view
destViewAng = 0;

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
#define Step_2
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
//view

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

/*
else if(viewAdj == 1)
{
    view_wview[0] = 800*viewScale;
    view_hview[0] = 608*viewScale;

    view_xview[0] = player.x-view_wview[0]/2;
    view_yview[0] = player.y-view_hview[0]/2;
}
else if(viewAdj == 2)
{
    viewX += (destViewX-viewX)/10;
    viewY += (destViewY-viewY)/10;

    viewH += (destViewH-viewH)/10;
    viewW += (destViewW-viewW)/10;

    view_xview[0] = viewX;
    view_yview[0] = viewY;

    view_hview[0] = viewH;
    view_wview[0] = viewW;

}
else if(viewAdj == 4)
{
    viewScale += 0.05;

    viewX += (destViewX-viewX)/easeParam;
    viewY += (destViewY-viewY)/easeParam;

    viewH += (destViewH-viewH)/easeParam;
    viewW += (destViewW-viewW)/easeParam;

    view_xview[0] = viewX;
    view_yview[0] = viewY;

    view_hview[0] = viewH;
    view_wview[0] = viewW;
}
*/
