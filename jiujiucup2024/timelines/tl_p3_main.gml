#define 0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if(room == r_p3)
{
    type = 1;

    P3CreateCircleArr(400, 304, 0);
}

if(type == 0)
{
    //ParamChange(PARAM_CHANGE_TYPE_RESET);
    DebugMusicPart(46.153);
}
else if(type == 1)
{
    DebugMusicPart(53.538);
}

CameraRotate(VIEW_OPERATION_ROTATE_RESET);
BarrageColorChange(COLOR_CHANGE_TYPE_LINEAR, 0.5);

if(type == 1)
{
    with p3bCircle
    {
        image_alpha = 1;
        rSpd = 0;
    }
}
else
{
    P3CreateCircleArr(400, 304, 0);

    with p3bCircle
    {
        image_alpha = 0.5;
        rSpd = 0;
    }
}
#define 23
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
with p3bCircle
{
    image_alpha = 1;
    rSpd = 128 * 2 / 46;
}
#define 139
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
with p3bCircle rSpd *= -2;
#define 161
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
with p3bCircle rSpd = 0;
#define 184
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
with p3bCircle rSpd = 128 * 2 / 46;
#define 277
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if(type == 1)
{
    with p3bCircle
    {
        rSpd = 0;
        flag = 1;

        basicPhase = phase;
    }

    CameraRotate(VIEW_OPERATION_ROTATE_EASE, 180, 70);
}
#define 323
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if(type == 0)
{
    P3CreateCircleArr(400 - 200, 304, 0);

    with p3bCircle
    {
        if(image_alpha >= 1)
        {
            if(id mod 2 == 1)
                instance_destroy();
        }
    }
}
#define 334
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if(type == 0)
{
    P3CreateCircleArr(400 + 200, 304, 0);

    with p3bCircle
    {
        if(image_alpha >= 1)
        {
            if(id mod 2 == 0)
                instance_destroy();
        }
    }
}
#define 346
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if(type == 0)
{
    instance_destroy();
    with p3bCircle instance_destroy();

    P3CreateCircleArr(400, 304, 0);

    ParamChange(PARAM_CHANGE_TYPE_RESET);
    ParamChange(PARAM_CHANGE_TYPE_INVERT_CONTROL);
}
else if(type == 1)
{
    with p3bCircle
    {
        //if(image_alpha >= 0)
            //CreateMoveOne(x, y, p3bShadow, 48, point_direction(400, 304, x, y));

        instance_destroy();
    }

    CameraRotate(VIEW_OPERATION_ROTATE_RESET);
    screenShake(12, 8, 8);
}
#define 369
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if(type == 1)
{
    with p3bCircle instance_destroy();
}
