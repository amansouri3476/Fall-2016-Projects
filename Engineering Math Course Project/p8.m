%%1
syms x y
syms z
z0=0;
z1=-1;
f(x,y)=(sin(z))./((z-2).*(((z).^2)+1))
g0=taylor(f, z , 0 )
g1=taylor(f, z , -1 )
%%2
 [x,y]=meshgrid([-0.5:0.1:0.5],[-0.5:0.05:0.5]);
 x0=0+x;
 y0=0+y;
 F0=eval(subs(f,z,x+i.*y));
 G0=eval(subs(g0,z,x+i.*y));
 
 figure
 hold on 
 
 surf(x0,y0,real(F0),'FaceColor',[0 1  0],'FaceAlpha',0.8)
 surf(x0,y0,real(G0),'FaceColor',[1 0 0],'FaceAlpha',0.8)
 title('Real Part for z=0')
 
  figure
 hold on 
 
 surf(x0,y0,imag(F0),'FaceColor',[0 1 0],'FaceAlpha',0.8)
 surf(x0,y0,imag(G0),'FaceColor',[1 0 0],'FaceAlpha',0.8)
 title('Imaginary Part for z=0')
 
  figure
 hold on 
 
 surf(x0,y0,abs(F0),'FaceColor',[0 1 0],'FaceAlpha',0.8)
 surf(x0,y0,abs(G0),'FaceColor',[1 0 0],'FaceAlpha',0.8)
 title('Absolute for z=0')
 
  figure
 hold on 
 
 surf(x0,y0,angle(F0),'FaceColor',[0 1 0],'FaceAlpha',0.8)
 surf(x0,y0,angle(G0),'FaceColor',[1 0 0],'FaceAlpha',0.8)
 title('Angle for z=0')
  
 %%3
  [x,y]=meshgrid([-0.5:0.1:0.5],[-0.5:0.05:0.5]);
 x1=-1+x;
 y1=0+y;
 F1=eval(subs(f,z,-1+x+i.*y));
 G1=eval(subs(g1,z,-1+x+i.*y));
 
 figure
 hold on 
 
 surf(x1,y1,real(F1),'FaceColor',[0 1  0],'FaceAlpha',0.8)
 surf(x1,y1,real(G1),'FaceColor',[1 0 0],'FaceAlpha',0.8)
 title('Real Part for z=-1')
 
  figure
 hold on 
 
 surf(x1,y1,imag(F1),'FaceColor',[0 1 0],'FaceAlpha',0.8)
 surf(x1,y1,imag(G1),'FaceColor',[1 0 0],'FaceAlpha',0.8)
 title('Imaginary Part for z=-1')
 
  figure
 hold on 
 
 surf(x1,y1,abs(F1),'FaceColor',[0 1 0],'FaceAlpha',0.8)
 surf(x1,y1,abs(G1),'FaceColor',[1 0 0],'FaceAlpha',0.8)
 title('Absolute for z=-1')
 
  figure
 hold on 
 
 surf(x1,y1,angle(F1),'FaceColor',[0 1 0],'FaceAlpha',0.8)
 surf(x1,y1,angle(G1),'FaceColor',[1 0 0],'FaceAlpha',0.8)
 title('Angle for z=-1')
 
 