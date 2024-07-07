#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
//this should be put at where game ends.
#define Collision_player
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
global.clear = 1;
saveGame();
with(objgameclear){
    instance_destroy();
}
