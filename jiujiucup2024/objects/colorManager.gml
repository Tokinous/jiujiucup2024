#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
//brg color

barrageColorEnable = 0;

barrageColorH = irandom_range(BARRAGE_COLOR_H_MIN, BARRAGE_COLOR_H_MAX);
barrageColorS = 32;
barrageColorV = 100;

barrageColor = c_white;

barrageColorHChangeType = COLOR_CHANGE_TYPE_NONE;
barrageColorHChangeSpeed = 1;
barrageColorHChangeFlag = 1;
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
//brg color
if(barrageColorEnable)
{
    switch(barrageColorHChangeType)
    {
        case COLOR_CHANGE_TYPE_LINEAR:
            {
                barrageColorH += barrageColorHChangeSpeed * barrageColorHChangeFlag;

                if(barrageColorH > BARRAGE_COLOR_H_MAX || barrageColorH < BARRAGE_COLOR_H_MIN)
                {
                    barrageColorHChangeFlag *= -1;
                }

                barrageColor = make_color_hsv(barrageColorH / 360 * 255, barrageColorS / 100 * 255, barrageColorV / 100 * 255);

                BarrageColorManage();
            }
            break;
        default:
            break;
    }
}
