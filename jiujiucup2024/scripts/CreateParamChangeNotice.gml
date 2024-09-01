//CreateParamChangeNotice(notice, type)

var inst, type;
inst = instance_create(player.x, player.y, show_param_change);

inst.text = argument0;
inst.type = argument1;
