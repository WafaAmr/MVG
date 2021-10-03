P = [-1;1;8]

K = [640,0,320;
     0,480,240;
     0,  0,  1;]
 
g = inv([0,0,1,4;-1,0,0,2;0,-1,0,3;0,0,0,1])

%  ---------------------------
P = [P;1]
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