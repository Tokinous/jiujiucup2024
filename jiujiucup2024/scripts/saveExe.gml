{
    var f,list,i,pos;
    //open save data to read
    f = file_text_open_read(global.saving_directory+"SaveData"+string(global.savenum));
    //create the save data list
    list = ds_list_create();
    pos = 0;
    //read game data
    ds_list_read(list,dataDecrypt(file_text_read_string(f)));
    //assigning variables
    global.death = ds_list_find_value(list,pos);                //1
    pos += 1;
    global.timestep = ds_list_find_value(list,pos);             //2
    pos += 1;
    roomTo = ds_list_find_value(list,pos);                      //3
    pos += 1;
    room_goto(roomTo);
    global.reverse = ds_list_find_value(list,pos);              //4
    pos += 1;
    player.x = ds_list_find_value(list,pos);                    //5
    pos += 1;
    player.y = ds_list_find_value(list,pos);                    //6
    pos += 1;
    player.image_xscale = ds_list_find_value(list,pos);         //7
    pos += 1;
    global.difficulty = ds_list_find_value(list,pos);           //8
    pos += 1;
    global.clear = ds_list_find_value(list,pos);                //9
    pos += 1;
    global.bestRecord = ds_list_find_value(list, pos);          //10
    pos += 1;
    //for more saving data, add your code here

    //destroy the save list
    ds_list_destroy(list);
    //close save file
    file_text_close(f);
}
