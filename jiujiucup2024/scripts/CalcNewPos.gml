//CalcNewPos(objFramr,tx,ty,tz)
//objFrame is the 3D-Frame
//(tx,ty,tz)is the old 3D position
M=argument0;
tmpx=argument1;
tmpy=argument2;
tmpz=argument3;

//x_new=objFrame.M[1,1]*tmpx+objFrame.M[2,1]*tmpy+objFrame.M[3,1]*tmpz;
//y_new=objFrame.M[1,2]*tmpx+objFrame.M[2,2]*tmpy+objFrame.M[3,2]*tmpz;
//z_new=objFrame.M[1,3]*tmpx+objFrame.M[2,3]*tmpy+objFrame.M[3,3]*tmpz;

x_new=M[1,1]*tmpx+M[2,1]*tmpy+M[3,1]*tmpz;
y_new=M[1,2]*tmpx+M[2,2]*tmpy+M[3,2]*tmpz;
z_new=M[1,3]*tmpx+M[2,3]*tmpy+M[3,3]*tmpz;
