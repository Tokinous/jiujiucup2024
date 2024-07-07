#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
// this object is used to prevent bugs from pausing.
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
var a,i;
if(!global.enable_keypad){
    if(keyboard_get_numlock()){
        keyboard_set_numlock(off);
    }
}
for(i=0;i<=100;i+=1){
    if(global.flash_object[i]!=0){
    a=global.flash_object[i]
    global.flash_time[i]-=1
        if(global.flash_time[i]=0){
        global.flash_time[i]=global.flash_temptime[i]
            if(a.visible=1){a.visible=0}
            else{
            a.visible=1
            global.flash_count[i]-=1
                if(global.flash_count[i]=0){
                global.flash_object[i]=0
                global.flash_count[i]=0
                global.flash_time[i]=0
                global.flash_temptime[i]=0
                a.flash=0
                }
            }
        }
    }
}
