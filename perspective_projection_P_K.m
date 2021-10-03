P = [-3;-2;-5]

K = [250,0,640;
     0,500,360;
     0,  0,  1;]
 
T = [0;0;0]
R = eye(3)

%  ---------------------------
P = [P;1]
g = [R    ,T;
     0,0,0,1]
U = [1,0,0,0;
     0,1,0,0;
     0,0,1,0;]
 
pixel = K*U*g*P
lamda = pixel(3,:)
pixel = pixel/lamda

disp(['[u, v] = [' num2str(pixel(1)) ','  num2str(pixel(2)) ']' ])
if P(3) < 0 
    disp(['Check if P lies behind the camera origin [0, 0, 0]'])
end