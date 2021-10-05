x_1 = [3, 2]
x_2 = [6, 5]
x_3 = [2, 1]
T_2 = [0, 2, -2]';
T_3 = [0, -2, 2]';
R = eye(3)

x_1 = [x_1, 1]'
x_2 = [x_2, 1]'
x_3 = [x_3, 1]'
M_p = [skew(x_2) * R * x_1, skew(x_2)*T_2;
       skew(x_3) * R * x_1, skew(x_3)*T_3]
rank(M_p)
if (rank(M_p) == 1)
    fprintf('\n matching triplet \n')
end 