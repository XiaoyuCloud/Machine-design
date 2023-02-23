function [ XB,YB,VBX,VBY,ABX,ABY ] = dangan( XA,YA,VAX,VAY,AAX,AAY,L,PHI,OMG,EPS)
XB=XA+L*cos(PHI);
YB=YA+L*sin(PHI);
VBX=VAX-OMG*(YB-YA);
VBY=VAY+OMG*(XB-XA);
ABX=AAX-OMG^2*(XB-XA)-EPS*(YB-YA);
ABY=AAY-OMG^2*(YB-YA)+EPS*(XB-XA);
%UNTITLED5 �˴���ʾ�йش˺�����ժҪ
%   �˴���ʾ��ϸ˵��


end

