#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=303
applies_to=self
invert=0
arg0=
arg1=0
*/
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
viewAdj=1;

image_index=2;
image_speed=0;

viewAdd=0;
#define Alarm_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
with(w1multiscreen){
    ds_list_replace(alphaList,arr,c_black);
    arr+=1;
}

alarm[0]=4;
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if(room_exists(player)=1)timeline_running=1;
#define Step_2
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if(viewAdj==1){
    view_xview[0]+=800/2/2;
    view_yview[0]+=608/2/2;
}else if(viewAdj==0){
    view_xview[0]=0;
    view_yview[0]=0;
}

if(viewAdd==1){
    view_hview[0]*=1.001;
    view_wview[0]*=1.001;

    view_xview[0]=-(view_wview[0]-800)/2;
    view_yview[0]=-(view_hview[0]-608)/2;
}
