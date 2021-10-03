P_1 = [-1,0,10]'
P_2 = [1,1,10]'
P_3 = [3,2,10]'
x_1 = [270,240]'
x_2 = [370,280]'
x_3 = [470,310]'

P_12= P_2 - P_1
P_23= P_3 - P_2
x_12= [x_2 - x_1;0]
x_23= [x_3 - x_2;0]

area_P = norm(0.5 * cross(P_12,P_23))
area_x = norm(0.5 * cross(x_12,x_23))

if area_x ~= 0 
    disp(['The vector -> P1P2 = [' num2str(P_12') '] and the vector -> P2P3 = [' num2str(P_23') '] since all vectors are the same,'])
    disp(['the 3 3D points lie on the same line'])
    disp(['The vector -> x1x2 = [' num2str(x_12') '] and the vector -> x2x3 = [' num2str(x_23') '] the area of the triangle formed with'])
    disp(['the 2 vectors is ' num2str(area_x) ' != 0 => they do not lie on the same line'])
end