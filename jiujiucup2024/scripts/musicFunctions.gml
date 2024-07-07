// play music in each room
if(getBossRoom()){
    audio_playmusic(BGM_Null);
    exit;
}
switch(room) {
    case rTitle:
    case rMenu:
    case rOptions:
    case rSelectStage:
        //indicates that BGM_Title should be played in the 4 rooms above
        audio_loopmusic(BGM_Title);
        break;
    case rHub:
    case rTraps:
    case rSlopes:
        audio_loopmusic(BGM_1);
        break;
    case rAd1:
    case rAd2:
    case rAd3:
         audio_playmusic(BGM_Ad);
         break;
    //add your code here
    default:
        audio_playmusic(BGM_Null);
}
