#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
image_speed = 0.2;
select = 1;
str[1] = "Data1";
str[2] = "Data2";
str[3] = "Data3";
bossicon[1] = bossicon1;
bossicon[2] = bossicon2;
bossicon[3] = bossicon3;
/*
bossicon[2] = bossicon2;
bossicon[3] = bossicon3;
bossicon[4] = bossicon4;
....
*/
//load boss&item icon information
loadIcons();
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
//锟絁锟絒锟絓锟斤拷锟节擄拷
if(difselect=0){
    if(keyboard_check_pressed(global.leftbutton) == true){
        audio_playsound(sndJump);
        select -= 1;
        if(select < 1){
            select = 3;
        }
    }
    else if(keyboard_check_pressed(global.rightbutton) == true){
        audio_playsound(sndJump);
        select += 1;
        if(select > 3){
            select = 1;
        }
    }
    else if(keyboard_check_pressed(global.jumpbutton) == true){
        global.savenum = select;
        difselect=1
        difname=0
        if(file_exists(global.saving_directory+"SaveData"+string(global.savenum))){
            difname=-1;
        }
    }
}
else{
    if (keyboard_check_pressed(global.leftbutton) == true) {
        audio_playsound(sndJump);
        difname -= 1;
        if (difname =-1) {
            if (file_exists(global.saving_directory+"SaveData"+string(global.savenum)) = false){
                difname = 3;
            }
        }
        if (difname < -1) {
            difname = 3;
        }
    }
    else if (keyboard_check_pressed(global.rightbutton) == true) {
        audio_playsound(sndJump);
        difname += 1;
        if (difname > 3) {
            difname = -1;
        }
        if (difname =-1) {
            if (file_exists(global.saving_directory+"SaveData"+string(global.savenum)) = false){
                difname=0;
            }
        }
    }
    else if(keyboard_check_pressed(global.shootbutton) == true) {
        global.savenum = 0;
        difselect = 0;
    }
    else if(keyboard_check_pressed(global.jumpbutton) == true) {
        dif=difname;
        if (dif < 0) {
            room_goto(rLoad);
        }
        else{
            global.difficulty = dif;
            if(file_exists(global.saving_directory+"SaveData"+string(global.savenum)) == true){
                file_delete(global.saving_directory+"SaveData"+string(global.savenum));
            }
            global.death = 0;
            global.timestep = 0;
            roomTo = global.first_stage;
            room_goto(roomTo);
            with(player){
                instance_destroy();
            }
        }
    }
}
#define Draw_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
var i;

for(i = 1; i <= 3; i += 1){
    draw_set_color(c_white);
    draw_set_halign(fa_left);
    draw_set_font(font24);
    // draw "Data x"
    draw_text(x+21+(i-1)*239,y+9,str[i]);
    draw_set_font(font12);
    //draw deaths
    draw_text(x+(i-1)*239+10,y+70,"death:"+string(menu_death[i]));
    //draw time
    time[i]=menu_time[i] div 100;
    hour[i]=time[i] div 3600;
    atime[i]=time[i] mod 3600;
    muni[i]=atime[i] div 60;
    sec[i]=atime[i] mod 60;
    draw_text(x+(i-1)*239+10,y+90,"time:"+string(hour[i])+":"+string(muni[i])+":"+string(sec[i]));
    draw_set_halign(fa_center)
    if(difselect=1){
        if(difname=-1) draw_text(x + (global.savenum-1)*239 + 65, y+49,"< Load game >");
        if(difname=0) draw_text(x + (global.savenum-1)*239 + 65, y+49,"< Medium >");
        if(difname=1) draw_text(x + (global.savenum-1)*239 + 65, y+49,"< Hard >");
        if(difname=2) draw_text(x + (global.savenum-1)*239 + 65, y+49,"< Very Hard >");
        if(difname=3) draw_text(x + (global.savenum-1)*239 + 65, y+49,"< Impossible >");
    }
    draw_set_color(c_black);
    if(file_exists(global.saving_directory+"SaveData"+string(i)) == true){
        if(difselect=0 || (difselect=1 && i!=global.savenum)){
            if(menu_difficulty[i]=0){draw_text(x+(i-1)*239+65,y+49,"Medium")}
            if(menu_difficulty[i]=1){draw_text(x+(i-1)*239+65,y+49,"Hard")}
            if(menu_difficulty[i]=2){draw_text(x+(i-1)*239+65,y+49,"Very Hard")}
            if(menu_difficulty[i]=3){draw_text(x+(i-1)*239+65,y+49,"Impossible")}
        }
        draw_set_font(font24);
        //draw clear
        if(menu_clear[i]=1){draw_text(x+(i-1)*239+65,y+215,"Clear!!")}
        //draw icon
        for(j=1;j<=8;j+=1){
            if(menu_boss[i,j] && sprite_exists(bossicon[j])){
                draw_sprite(bossicon[j],-1,x+(i-1)*239+32*((j-1) mod 4),y+128+32*((j-1) div 4));
            }
        }
    }
    //draw the cherry indicator
    if(i == select){
        draw_sprite(sprCherry,-1,x+(i-1)*239+5,y+310);
        draw_sprite(sprCherry,-1,x+(i-1)*239+25,y+310);
        draw_sprite(sprCherry,-1,x+(i-1)*239+45,y+310);
        draw_sprite(sprPlayerIdle,-1,x+(i-1)*239+67,y+312);
        draw_sprite(sprCherry,-1,x+(i-1)*239+85,y+310);
        draw_sprite(sprCherry,-1,x+(i-1)*239+105,y+310);
        draw_sprite(sprCherry,-1,x+(i-1)*239+125,y+310);
    }
}
