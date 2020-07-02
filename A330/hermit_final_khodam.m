u = 0:0.01:1;
h_0 = 2*u.^3-3*u.^2+1;
h_1 = -2*u.^3+3*u.^2;
h_2 = u.^3-2*u.^2+u;
h_3 = u.^3-u.^2;
P_1 = 69.0000;
P_2 = 72.0202;
DP_1 = 2.74;
DP_2 = -2.74;
p1 = P_1*h_0+P_2*h_1+DP_1*h_2+DP_2*h_3;
Py_1 = 0;
Py_2 = 41.5809;
py1 = Py_1*h_0+Py_2*h_1+DP_1*h_2+DP_2*h_3;
P_3 = 64.3519;
DP_3 = -1.19;
p2 = P_2*h_0+P_3*h_1+DP_2*h_2+DP_3*h_3;
Py_3 = P_3;
py2 = Py_2*h_0+Py_3*h_1+DP_2*h_2+DP_3*h_3;
%4
P_4 = 33.2730;
DP_4 = -0.268;
Py_4 = 91.4167;
p3 = P_3*h_0+P_4*h_1+DP_3*h_2+DP_4*h_3;
py3 = Py_3*h_0+Py_4*h_1+DP_3*h_2+DP_4*h_3;
%5
P_5 = 0;
DP_5 = 0;
Py_5 = 100.4218;
p4 = P_4*h_0+P_5*h_1+DP_4*h_2+DP_5*h_3;
py4 = Py_4*h_0+Py_5*h_1+DP_4*h_2+DP_5*h_3;
figure
plot(x, y, 'o--')
hold
axis equal
plot(p1, py1,'linewidth',2)
plot(p2, py2,'linewidth',2)
plot(p3, py3,'linewidth',2)
plot(p4, py4,'linewidth',2)
legend('points', 'f2','f2','f3','f4')
axis([0 80 0 110])
DP_1 = 70;
p5 = P_1*h_0+P_5*h_1+DP_1*h_2+DP_5*h_3;
py5 = Py_1*h_0+Py_5*h_1+DP_1*h_2+DP_5*h_3;
figure
plot(x, y, 'o--')
hold
axis equal
plot(p5, py5,'linewidth',2)

