#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
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
if(keyboard_check_pressed(global.leftbutton) == true){
  audio_playsound(sndJump);
  select -= 1;
  if(select < 1){
    select = 3;
  }
}else if(keyboard_check_pressed(global.rightbutton) == true){
  audio_playsound(sndJump);
  select += 1;
  if(select > 3){
    select = 1;
  }
}else if(keyboard_check_pressed(global.jumpbutton) == true){
  global.savenum = select;
  room_goto(rSelectStage);
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
    // draw death count
    draw_text(x+(i-1)*239+10,y+70,"death:"+string(menu_death[i]));
    // draw time
    time[i]=menu_time[i] div 100;
    hour[i]=time[i] div 3600;
    atime[i]=time[i] mod 3600;
    muni[i]=atime[i] div 60;
    sec[i]=atime[i] mod 60;
    draw_text(x+(i-1)*239+10,y+90,"time:"+string(hour[i])+":"+string(muni[i])+":"+string(sec[i]));
    // draw boss&item information
    if(file_exists(global.saving_directory+"SaveData"+string(i)) == true){
        draw_set_halign(fa_center)
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
    if(i == select){
        draw_sprite(sprPlayerRunning,-1,x+(i-1)*239+60,y+313);
    }
}
