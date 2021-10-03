P = [0;1;2]

K = [500,0,320;
     0,400,240;
     0,  0,  1;]
C = [1,0,0]' 


T = -C
R = eye(3)

%  ---------------------------
P = [P;1]
g = [R    ,T;
     0,0,0,1;]
U = [1,0,0,0;
     0,1,0,0;
     0,0,1,0;]
 
pixel = K*U*g*P
lamda = pixel(3,:)
pixel = pixel/lamda

disp(['[u, v] = [' num2str(pixel(1)) ','  num2str(pixel(2)) ']' ])
if P(3) <= C(3) 
    disp(['Check if P lies behind the camera origin [' num2str(C') ']'])
end