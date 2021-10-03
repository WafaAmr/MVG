X_1 = [2,3,5]'
X_2 = [1,-1,1]'
p_1 = [372,462]'
p_2 = [480,30]'

C = [0,0,0]'
T = -C
R = eye(3)
%  ---------------------------
X_1 = [X_1;1]
X_2 = [X_2;1]
p_1 = [p_1;1]
p_2 = [p_2;1]
g = [R    ,T;
     0,0,0,1;]
U = [1,0,0,0;
     0,1,0,0;
     0,0,1,0;]
 
syms fx fy ox oy lambda1 lambda2
K = [fx 0 ox; 0 fy oy; 0 0 1];  
eq1 = lambda1 * p_1 == K * U * g * X_1;
eq2 = lambda2 * p_2 == K * U * g * X_2;
[ffx, ffy, oox, ooy, lambda1, lambda2] = solve([eq1, eq2], [fx, fy, ox, oy, lambda1, lambda2]);
disp(['Fx = ' num2str(double(ffx)) ', '  'Fy = ' num2str(double(ffy)) ', ' 'Ox = ' num2str(double(oox)) ', ' 'Oy = ' num2str(double(ooy)) ',' 'lambda_1 = ' num2str(double(lambda1)) ', ' 'lambda_2 = ' num2str(double(lambda2)) ', ' ])
