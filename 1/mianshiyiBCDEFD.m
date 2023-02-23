xa=0;ya=100;vax=0;vay=0;aax=0;aay=0;lab=100;phia=1*2*pi/360;omga=5;epsa=0;
xd=200;yd=0;vdx=0;vdy=0;adx=0;ady=0;lbc=200;ldc=200;lde=100.24;
xp=200;yp=0;vpx=0;vpy=0;apx=0;apy=0;lef=200;phi5=0;omg5=0;eps5=0;
while(phia<=2*pi)
[xb,yb,vbx,vby,abx,aby]=dangan(xa,ya,vax,vay,aax,aay,lab,phia,omga,epsa);
[xc,yc,vcx,vcy,acx,acy,phi2,phi3,omg2,omg3,eps2,eps3]=RRRshuanggan(xb,yb,vbx,vby,abx,aby,xd,yd,vdx,vdy,adx,ady,lbc,ldc,1);
[xe,ye,vex,vey,aex,aey]=dangan(xd,yd,vdx,vdy,adx,ady,lde,phi3,omg3,eps3);
[xf,yf,vfx,vfy,afx,afy,sr,vr,ar,phi4,omg4,eps4]=RRPshuanggan(xe,ye,vex,vey,aex,aey,xp,yp,vpx,vpy,apx,apy,lef,phi5,omg5,eps5,1);

phiBCD=360-180-26.57-phi2*360/2/pi-(180-26.57-phi3*360/(2*pi));%´«¶¯½Ç
phiEFD=-phi4*360/(2*pi);%Ñ¹Á¦½Ç
subplot(211)
if(phiBCD<90)
    plot(phia*360/(2*pi),phiBCD,'*','LineWidth',1);
else
    plot(phia*360/(2*pi),180-phiBCD,'*','LineWidth',1);
end;
hold on;
subplot(212)
plot(phia*360/(2*pi),phiEFD,'*','LineWidth',1);
hold on


phia=phia+1*2*pi/360;
end;
hold off;
