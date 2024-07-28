#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
discreteDirection = 0;

discreteIndex = 0;
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if(y > p2.discreteBorder
    && discreteIndex < p2.discreteIndex)
{
    discreteIndex += 1;
    P2MoveByDiscrete();
    visible = 1;
}
else if(y < p2.discreteBorder
    && discreteIndex >= p2.discreteIndex)
{
    visible = 0;
}
else
{
    visible = 1;
}
#define Other_40
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=203
applies_to=self
invert=0
*/
