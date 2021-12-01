


%trayectoria 
t_total = 10;

%Centro del elipsoide
x_c = 0.25;
y_c = 0.0;
z_c = 0.25;

%Punto final
r_A = 0.1;
r_B = 0.1;

t_p = 0:0.1:10;


%Puntos de la trayectoria
xe = x_c+0*((10/t_total^3)*t_p.^3-(15/t_total^4)*t_p.^4+(6/t_total^5)*t_p.^5);
ye = y_c+r_A*cos(((10/t_total^3)*t_p.^3-(15/t_total^4)*t_p.^4+(6/t_total^5)*t_p.^5)*(2*pi-0));
ze = z_c+r_B*sin(((10/t_total^3)*t_p.^3-(15/t_total^4)*t_p.^4+(6/t_total^5)*t_p.^5)*(2*pi-0));


plot3(xe,ye,ze)
grid on
title('Trayectoria')
xlabel('x')
ylabel('y')
zlabel('z')