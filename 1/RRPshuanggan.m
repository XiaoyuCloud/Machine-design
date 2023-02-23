function [ XC,YC,VCX,VCY,ACX,ACY,SR,VR,AR,PHI2,OMG2,EPS2 ] = RRPshuanggan( XB,YB,VBX,VBY,ABX,ABY,XP,YP,VPX,VPY,APX,APY,LBC,PHI3,OMG3,EPS3,M )
%UNTITLED8 此处显示有关此函数的摘要
%   此处显示详细说明
E=2*((XP-XB)*cos(PHI3)+(YP-YB)*sin(PHI3));
F=(XP-XB)^2+(YP-YB)^2-LBC^2;
SR=abs(-E+M*sqrt(E^2-4*F))/2;
XC=XP+SR*cos(PHI3);
YC=YP+SR*sin(PHI3);
PHI2=atan((YC-YB)/(XC-XB));
E1=VPX-VBX-SR*OMG3*sin(PHI3);
F1=VPY-VBY+SR*OMG3*cos(PHI3);
OMG2=(-E1*sin(PHI3)+F1*cos(PHI3))/(LBC*sin(PHI2)*sin(PHI3)+LBC*cos(PHI2)*cos(PHI3));
VR=(-(E1*cos(PHI2)+F1*sin(PHI2)))/(sin(PHI2)*sin(PHI3)+cos(PHI2)*cos(PHI3));
VCX=VBX-LBC*OMG2*sin(PHI2);
VCY=VBY+LBC*OMG2*cos(PHI2);
E2=APX-ABX+LBC*OMG2^2*cos(PHI2)-2*OMG3*VR*sin(PHI3)-EPS3*SR*sin(PHI3)-OMG3^2*SR*cos(PHI3);
F2=APY-ABY+LBC*OMG2^2*sin(PHI2)+2*OMG3*VR*cos(PHI3)+EPS3*SR*cos(PHI3)-OMG3^2*SR*sin(PHI3);
EPS2=(-E2*sin(PHI3)+F2*cos(PHI3))/(LBC*(sin(PHI2)*sin(PHI3)+cos(PHI2)*cos(PHI3)));
AR=-(E2*cos(PHI2)+F2*sin(PHI2))/(sin(PHI2)*sin(PHI3)+cos(PHI2)*cos(PHI3));
ACX=ABX-OMG2^2*LBC*cos(PHI2)-EPS2*LBC*sin(PHI2);
ACY=ABY-OMG2^2*LBC*sin(PHI2)+EPS2*LBC*cos(PHI2);
end

