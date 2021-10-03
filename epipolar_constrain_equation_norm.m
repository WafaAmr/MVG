x_1 = [4, 3]

K_1 = [3,5,0;0,5,0;0,0,1]
K_2 = [4,0,0;0,4,0;0,0,1]
% K_1 , K_2 = eye(3)
T = [2, 2, -1]';
R = eye(3)
% --------------------------

x_1 = [x_1, 1]'
format rational
l = inv(K_2)'* skew(T) * R  * x_1
m = -l(1)/l(2)
b = -l(3)/l(2)
disp(['y =' deblank(num2str(rats(m))) 'x + ' deblank(num2str(rats(b)))])


% For any pixel p_1 of the first image (in homogeneous coordinates), the equation of the associated epipolar line
% in the second image is given by : ax + by + c = 0 where (a,b,c)^⊤ = Fp_1, and F is the fundamental matrix,
% whose expression is F = K^−⊤_2 * E * K^−1_1
% Since x_1 corresponds to the normalized coordinates (and not the pixel) of X_1, we have that (a,b,c)^⊤ =
% F * K_1 * x_1 = K^−⊤_2 * E * x_1, which lead to the result after few calculation steps