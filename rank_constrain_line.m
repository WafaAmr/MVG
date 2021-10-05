l_1 = [3, 2, 0]'
l_2 = [3, 4, -2]'
l_3 = [3, 0, 2]'
T_2 = [0, 2, -2]';
T_3 = [0, -2, 2]';
R_2 = eye(3)
R_3 = eye(3)

M_l = [l_2' * R_2 * skew(l_1), l_2' * T_2;
       l_3' * R_3 * skew(l_1), l_3' * T_2]
rank(M_l)
if (rank(M_l) == 1)
    fprintf('\n matching triplet \n')
end