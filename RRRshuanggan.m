function [ XC,YC,VCX,VCY,ACX,ACY,PHI2,PHI3,OMG2,OMG3,EPS2,EPS3 ] = RRRshuanggan( XB,YB,VBX,VBY,ABX,ABY,XD,YD,VDX,VDY,ADX,ADY,LBC,LDC,M )
%UNTITLED7 此处显示有关此函数的摘要
%   此处显示详细说明
DEL=atan((YD-YB)/(XD-XB));
GAM=acos(((XD-XB)^2+(YD-YB)^2+LBC^2-LDC^2)/(2*sqrt((XD-XB)^2+(YD-YB)^2)*LBC));
PHI2=DEL+M*GAM;
XC=XB+LBC*cos(PHI2);
YC=YB+LBC*sin(PHI2);
if(XC>XD)
  PHI3=atan((YC-YD)/(XC-XD));
else
  PHI3=atan((YC-YD)/(XC-XD))+pi;
end%仅免试题目一可用！！！
OMG2=((VDX-VBX)*(XC-XD)+(VDY-VBY)*(YC-YD))/((YC-YD)*(XC-XB)-(YC-YB)*(XC-XD));
OMG3=((VDX-VBX)*(XC-XB)+(VDY-VBY)*(YC-YB))/((YC-YD)*(XC-XB)-(YC-YB)*(XC-XD));
VCX=VBX-OMG2*(YC-YB);
VCY=VBY+OMG2*(XC-XB);
E=ADX-ABX+OMG2^2*(XC-XB)-OMG3^2*(XC-XD);
F=ADY-ABY+OMG2^2*(YC-YB)-OMG3^2*(YC-YD);
EPS2=(E*(XC-XD)+F*(YC-YD))/((XC-XB)*(YC-YD)-(XC-XD)*(YC-YB));
EPS3=(E*(XC-XB)+F*(YC-YB))/((XC-XB)*(YC-YD)-(XC-XD)*(YC-YB));
ACX=ABX-OMG2^2*(XC-XB)-EPS2*(YC-YB);
ACY=ABY-OMG2^2*(YC-YB)+EPS2*(XC-XB);
end


