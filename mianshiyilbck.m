xa=0;ya=100;vax=0;vay=0;aax=0;aay=0;lab=100;phia=1*2*pi/360;omga=5;epsa=0;
xd=200;yd=0;vdx=0;vdy=0;adx=0;ady=0;lbc=50;ldc=200;lde=100.24;
xp=200;yp=0;vpx=0;vpy=0;apx=0;apy=0;lef=200;phi5=0;omg5=0;eps5=0;
shi=0;
K= zeros(1,50);
i=1;
LBC=zeros(1,50);
while(lbc<=500)
while(phia<=2*pi)
[xb,yb,vbx,vby,abx,aby]=dangan(xa,ya,vax,vay,aax,aay,lab,phia,omga,epsa);
[xc,yc,vcx,vcy,acx,acy,phi2,phi3,omg2,omg3,eps2,eps3]=RRRshuanggan(xb,yb,vbx,vby,abx,aby,xd,yd,vdx,vdy,adx,ady,lbc,ldc,1);
%[xe,ye,vex,vey,aex,aey]=dangan(xd,yd,vdx,vdy,adx,ady,lde,phi3,omg3,eps3);
%[xf,yf,vfx,vfy,afx,afy,sr,vr,ar,phi4,omg4,eps4]=RRPshuanggan(xe,ye,vex,vey,aex,aey,xp,yp,vpx,vpy,apx,apy,lef,phi5,omg5,eps5,1);

if(abs(phia-phi2)<0.1)
       jiao1=phia;
end;
if(abs(phia-phi2-pi)<0.1)
        jiao2=phia;
end;
s=(jiao2-jiao1-pi)*360/(2*pi);
K(i)=(180+s)/(180-s);
LBC(i)=lbc;
if(abs(phia-2*pi)<0.01)
i=i+1;
shi=i;
end;

phia=phia+1*2*pi/360;
end;
lbc=lbc+1;
phia=1*2*pi/360;
end;
hold off;
plot(LBC,K);