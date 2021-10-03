x_1 = [10,6,1]
x_2 = [5,15,1]
x_3 = [8,9,1]

volume = dot(x_1', cross(x_2',x_3'))
if volume == 0
    fprintf('\n Co-Planar \n')
else
  fprintf('\n Non Co-Planar \n')
end

% The vectors x1 , x2 and x3 are not coplanar, hence the pairwise epipolar
% constraints ensure the existence and uniqueness of the preimage, i.e.
% those pixels are projections of a unique 3D point.