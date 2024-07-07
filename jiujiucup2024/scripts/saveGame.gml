{
    var f,list,i;
    //open save data
    f = file_text_open_write(global.saving_directory+"SaveData"+string(global.savenum));
    //create the save data list
    list = ds_list_create();
    //saving game data to the list
    ds_list_add(list,global.death);                         //1
    ds_list_add(list,global.timestep);                      //2
    ds_list_add(list,room);                                 //3
    ds_list_add(list,global.reverse);                       //4
    ds_list_add(list,player.xprevious);                     //5
    ds_list_add(list,player.yprevious);                     //6
    ds_list_add(list,player.image_xscale);                  //7
    ds_list_add(list,global.difficulty);                    //8
    ds_list_add(list,global.clear);                         //9
    ds_list_add(list, global.bestRecord);                   //10

    //write the encrypted string to save file
    file_text_write_string(f,dataEncrypt(ds_list_write(list)));
    //destroy the list
    ds_list_destroy(list);
    //close save data
    file_text_close(f);
}
