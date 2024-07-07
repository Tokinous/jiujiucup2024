#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
var ii;
ii=0;

repeat(50){
    var inst;
    inst=instance_create(400,200,w62b1);
    inst.phase=(32*ii);
    inst.r=ii*10
    ii+=1;
}
#define Alarm_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
i+=random_range(-2,2);
r+=16;
var xx,yy,ii;
ii=0;
repeat(3){
    xx=x+r*cos((i+ii*120)/180*3.14159);
    yy=y+r*sin((i+ii*120)/180*3.14159);
    instance_create(xx,yy,w3b1);
    ii+=1;
}

alarm[0]=2;
#define Step_2
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
view_xview[0]=viewX;
view_yview[0]=viewY;
