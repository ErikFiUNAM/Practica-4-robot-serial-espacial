%%%Diseño de trayectorias continuas de línea recta unidas con un perfil de
%%%trayectorias de quinto grado.


%Inicio de la primera lineal

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%
%trayectoria 1

%Punto inicial
x_in_1 = 0.20;
y_in_1 = 0.20;
z_in_1 = 0.15;

%Punto final
x_fin_1 = -0.20;
y_fin_1 = 0.20;
z_fin_1 = 0.15;

%Definición de los parámetros de la trayectoria
t_total_1 = 4;%s
t_in = 0.1; %S
tlinea_1 = 0:t_in:t_total_1;

%Puntos de la trayectoria
xp_1 = x_in_1+((10/t_total_1^3)*tlinea_1.^3-(15/t_total_1^4)*tlinea_1.^4+(6/t_total_1^5)*tlinea_1.^5)*(x_fin_1-x_in_1);
yp_1 = y_in_1+((10/t_total_1^3)*tlinea_1.^3-(15/t_total_1^4)*tlinea_1.^4+(6/t_total_1^5)*tlinea_1.^5)*(y_fin_1-y_in_1);
zp_1 = z_in_1+((10/t_total_1^3)*tlinea_1.^3-(15/t_total_1^4)*tlinea_1.^4+(6/t_total_1^5)*tlinea_1.^5)*(z_fin_1-z_in_1);

%%
%trayectoria 2

%Punto inicial
x_in_2 = -0.20;
y_in_2 = 0.20;
z_in_2 = 0.15;

%Punto final
x_fin_2 = -0.20;
y_fin_2 = 0.20;
z_fin_2 = 0.25;

%Definición de los parámetros de la trayectoria
t_total_2 = 4;%s
tlinea_2 = 0:t_in:t_total_2;

%Puntos de la trayectoria
xp_2 = x_in_2+((10/t_total_2^3)*tlinea_2.^3-(15/t_total_2^4)*tlinea_2.^4+(6/t_total_2^5)*tlinea_2.^5)*(x_fin_2-x_in_2);
yp_2 = y_in_2+((10/t_total_2^3)*tlinea_2.^3-(15/t_total_2^4)*tlinea_2.^4+(6/t_total_2^5)*tlinea_2.^5)*(y_fin_2-y_in_2);
zp_2 = z_in_2+((10/t_total_2^3)*tlinea_2.^3-(15/t_total_2^4)*tlinea_2.^4+(6/t_total_2^5)*tlinea_2.^5)*(z_fin_2-z_in_2);

%%
%trayectoria 3

%Punto inicial
x_in_3 = -0.20;
y_in_3 = 0.20;
z_in_3 = 0.25;

%Punto final
x_fin_3 = 0.20;
y_fin_3 = 0.20;
z_fin_3 = 0.25;

%Definición de los parámetros de la trayectoria
t_total_3 = 4;%s
tlinea_3 = 0:t_in:t_total_3;

%Puntos de la trayectoria
xp_3 = x_in_3+((10/t_total_3^3)*tlinea_3.^3-(15/t_total_3^4)*tlinea_3.^4+(6/t_total_3^5)*tlinea_3.^5)*(x_fin_3-x_in_3);
yp_3 = y_in_3+((10/t_total_3^3)*tlinea_3.^3-(15/t_total_3^4)*tlinea_3.^4+(6/t_total_3^5)*tlinea_3.^5)*(y_fin_3-y_in_3);
zp_3 = z_in_3+((10/t_total_3^3)*tlinea_3.^3-(15/t_total_3^4)*tlinea_3.^4+(6/t_total_3^5)*tlinea_3.^5)*(z_fin_3-z_in_3);


%%
%trayectoria 4

%Punto inicial
x_in_4 = 0.20;
y_in_4 = 0.20;
z_in_4 = 0.25;

%Punto final
x_fin_4 = 0.20;
y_fin_4 = 0.20;
z_fin_4 = 0.15;

%Definición de los parámetros de la trayectoria
t_total_4 = 4;%s
tlinea_4 = 0:t_in:t_total_4;

%Puntos de la trayectoria
xp_4 = x_in_4+((10/t_total_4^3)*tlinea_4.^3-(15/t_total_4^4)*tlinea_4.^4+(6/t_total_4^5)*tlinea_4.^5)*(x_fin_4-x_in_4);
yp_4 = y_in_4+((10/t_total_4^3)*tlinea_4.^3-(15/t_total_4^4)*tlinea_4.^4+(6/t_total_4^5)*tlinea_4.^5)*(y_fin_4-y_in_4);
zp_4 = z_in_4+((10/t_total_4^3)*tlinea_4.^3-(15/t_total_4^4)*tlinea_4.^4+(6/t_total_4^5)*tlinea_4.^5)*(z_fin_4-z_in_4);


%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%Gráfica de la trayectoria

plot3(xp_1,yp_1,zp_1,xp_2,yp_2,zp_2,xp_3,yp_3,zp_3,xp_4,yp_4,zp_4)
grid on
title('Trayectoria')
xlabel('x')
ylabel('y')
zlabel('z')



%%

x_arr_1_4 = [xp_1 xp_2 xp_3 xp_4];

y_arr_1_4 = [yp_1 yp_2 yp_3 yp_4];

z_arr_1_4 = [zp_1 zp_2 zp_3 zp_4];

%Arreglo en el tiempo
%%%%%%%%%%%%%%%%
t_total_1_a = 4;%s
t_in = 0.1; %S
tlinea_1_tray = 0:t_in:t_total_1_a;

%%%%%%%%%%%%%%%%%
t_total_2_a = 4+t_total_1_a;%s
tlinea_2_tray = t_total_1_a:t_in:t_total_2_a;

%%%%%%%%%%%%%%%%%
t_total_3_a = 4+t_total_2_a;%s
tlinea_3_tray = t_total_2_a:t_in:t_total_3_a;

%%%%%%%%%%%%%%%%%
t_total_4_a = 4+t_total_3_a;%s
tlinea_4_tray = t_total_3_a:t_in:t_total_4_a;

%%%%%%%%%%%%%%%%%%
t_trayectoria = [tlinea_1_tray tlinea_2_tray tlinea_3_tray tlinea_4_tray];


%%
plot3(x_arr_1_4,y_arr_1_4,z_arr_1_4)

grid on
title('Trayectoria')
xlabel('x')
ylabel('y')
zlabel('z')

%%
%%Creación de la señal







