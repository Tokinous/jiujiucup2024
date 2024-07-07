var rx, ry, rd;

rd = random(360);
rx = random(400);
ry = random_range(view_yview[0] + 608 - 128, view_yview[0] + 608);

createCircle(rx, ry, 64, argument0, argument1, 1, 0, rd);
createCircle(800 - rx, ry, 64, argument0, argument1, 1, 0, 180 - rd);
