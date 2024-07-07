//CalcMatrix(theta,vx,vy,vz)
//theta is the rotation angle
//(vx,vy,vz)is a vector as the rotation axis


//Calculate Cosine and Sine
ct = cos(degtorad(argument0));
st = sin(degtorad(argument0));

//Make the vector's norm equal to 1
Vl = sqrt(argument1*argument1+argument2*argument2+argument3*argument3);
Vx = argument1/Vl;
Vy = argument2/Vl;
Vz = argument3/Vl;

//Make the Matrix
M[1,1]=ct+Vx*Vx*(1-ct);
M[1,2]=Vx*Vy*(1-ct)+Vz*st;
M[1,3]= Vx*Vz*(1-ct)-Vy*st;
M[2,1]= Vx*Vy*(1-ct)-Vz*st;
M[2,2]= ct+Vy*Vy*(1-ct);
M[2,3]= Vy*Vz*(1-ct)+Vx*st;
M[3,1]= Vx*Vz*(1-ct)+Vy*st;
M[3,2]= Vy*Vz*(1-ct)-Vx*st;
M[3,3]= ct+Vz*Vz*(1-ct);
