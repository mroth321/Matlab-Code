clc, close all
%% Question 1
R=5;
[x,y,z]= sphere(200);
x=R*x;
y=R*y;
z=R*z;
z(z<=0)=NaN;
figure
colormap(hot);
h = surf(x,y,z);
colorbar
set(h,'edgecolor','none')
shading interp
view(0,5);
lightangle(-45,30);
h.FaceLighting = 'gouraud';
h.AmbientStrength = 0.3;
h.DiffuseStrength = 0.8;
h.SpecularStrength = 0.9;
h.SpecularExponent = 25;
h.BackFaceLighting = 'unlit';

%% Question #2

x = -10:.01:10;                 
y = -10:.01:10;                  
[X,Y] = meshgrid(x,y);    
r=sqrt(X.^(2)+Y.^(2));
Z=(exp(-r)).*cos(2*pi*r);       
figure
h = surf(X,Y,Z);
set(h,'edgecolor','none')
shading interp
view(0,15)
lightangle(-45,30)
h.FaceColor='b';
h.FaceLighting = 'gouraud';
h.AmbientStrength = 0.3;
h.DiffuseStrength = 0.8;
h.SpecularStrength = 0.9;
h.SpecularExponent = 25;
h.BackFaceLighting ='unlit';

% *Grateful Dead Album playing*