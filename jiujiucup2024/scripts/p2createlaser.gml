//x, y, dir, scale time, init width

var laser;
laser = instance_create(argument0, argument1, p2blaser);
laser.image_angle = argument2;
laser.time = argument3;
laser.scale = argument4/laser.sprite_height;
laser.image_yscale = laser.scale;
