syms d1 theta1 theta2 theta3

% Base transformation matrix to the first prismatic joint
B_matrix = [pi/2 0 0.102 0]
B_DH_matrix = DH_HTM(B_matrix,'r')

% End effector configuration from the last joint frame until the tip of marker
H_matrix = [ pi/2 -pi/2 0 0]
H_DH_matrix = DH_HTM(H_matrix, 'r')

% Whole Matrix parameter table from Base to End effector
DH_final=[
    pi/2 0 0.101 0;
    -pi/2 -pi/2 0 0.1775;
    0 0 0 0.1905+d1;
    theta1+(pi/2) 0 -0.48 0;
    theta2 0 -0.48 0;
    theta3+pi 0  0.206 0;
    pi/2 -pi/2 0 0;
    ];

% The whole Calculation of forward kinematics from base to end-effector
solved_DH_Matrix_final = DH_HTM(DH_final, 'r')

px = solved_DH_Matrix_final(1,4)
py = solved_DH_Matrix_final(2,4)
pz = solved_DH_Matrix_final(3,4)

