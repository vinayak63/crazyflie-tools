% inputs are in omega_square

% exp1
% f1 = 1;
% f2 = 2;
% f3 = 3;
% f4 = 4;
% A1 = 5;
% A2 = 5;
% A3 = 5;
% A4 = 5;
% u0 = 12;

% exp2
% f1 = 5;
% f2 = 5;
% f3 = 10;
% f4 = 10;
% A1 = 10;
% A2 = 5;
% A3 = 15;
% A4 = 5;
% u0 = 15;

% exp3
% f1 = 1;
% f2 = 1;
% f3 = 1;
% f4 = 1;
% A1 = 20;
% A2 = 0;
% A3 = 20;
% A4 = 0;
% u0 = 15;

% exp4
% f1 = 5;
% f2 = 5;
% f3 = 1;
% f4 = 1;
% A1 = 10;
% A2 = 10;
% A3 = 1;
% A4 = 1;
% u0 = 15;

% exp5
% f1 = 2;
% f2 = 3;
% f3 = 4;
% f4 = 5;
% A1 = 25;
% A2 = 20;
% A3 = 15;
% A4 = 10;
% u0 = 12;

% exp6
% f1 = 5;
% f2 = 5;
% f3 = 5;
% f4 = 5;
% A1 = 10;
% A2 = 5;
% A3 = 10;
% A4 = 5;
% u0 = 15;

% exp7
% f1 = 7;
% f2 = 9;
% f3 = 5;
% f4 = 5;
% A1 = 8;
% A2 = 12;
% A3 = 9;
% A4 = 11;
% u0 = 16;

% exp8
% f1 = 10;
% f2 = 5;
% f3 = 5;
% f4 = 5;
% A1 = 14;
% A2 = 10;
% A3 = 10;
% A4 = 10;
% u0 = 15;

% exp9
% f1 = 1;
% f2 = 5;
% f3 = 5;
% f4 = 10;
% A1 = 14;
% A2 = 12;
% A3 = 10;
% A4 = 2;
% u0 = 15;

% exp10
f1 = 2;
f2 = 3;
f3 = 2;
f4 = 1;
A1 = 10;
A2 = 10;
A3 = 10;
A4 = 10;
u0 = 16;

t = linspace(0,2,200);
u1 = A1*sin(2*pi*f1*t);
u2 = A2*sin(2*pi*f2*t);
u3 = A3*sin(2*pi*f3*t);
u4 = A4*sin(2*pi*f4*t);
utraj = PPTrajectory(spline(t,[u1;u2;u3;u4]+u0));

cf = Crazyflie();

while (1)
  cf.run(utraj,'omegasqu');
end