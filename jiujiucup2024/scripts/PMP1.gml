//PMP1(index)

var index;
index = argument0;

var type;
type = index mod 2;

switch(type)
{
    case 0:
        {
            PMCreateCircleArr(400, 304, ((index div 2) + 1) * 80, random(360), power(-1 ,(index div 2)), (index div 3) + 1);
        }
        break;
    case 1:
        {
            PMCreateCircle(400, 304, 128, ((index div 2) + 1) * 80, random(360), power(-1 ,(index div 2)), (index div 3) + 1);
        }
        break;
    default:
        break;
}
