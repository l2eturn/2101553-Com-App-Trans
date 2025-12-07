f1   = [80; 215; 100; 108; 102; 68];
A1   = [1	1	0	0	0	0;
        0	0	1	1	0	0;
        0	0	0	0	1	1];
Aeq1 = [1	0	1	0	1	0;
        0	1	0	1	0	1];
b1   = [1000; 1500; 1200];
beq1 = [2300; 1400];
lb1  = zeros(6,1);
ub1  = [];

%General form
[x1, fval1, exitflag1, output1, lambda1] = linprog(f1, A1, b1, Aeq1, beq1, lb1, ub1);

% Display the results of the optimization
disp('Optimal solution (x1):');
disp(x1);
disp('Minimum transportation cost (fval1):');
disp(fval1);