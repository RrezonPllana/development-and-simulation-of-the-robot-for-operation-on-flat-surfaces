syms d1 theta1 theta2 theta3

% Base transformation matrix to the first prismatic joint
B_matrix = [0 pi/2 0.05 0.102]
B_DH_matrix = DH_HTM(B_matrix,'r')

% End effector configuration from the last joint frame until the tip of marker
H_matrix = [ 0 0 0 0.224]
H_DH_matrix = DH_HTM(H_matrix, 'r')

% Whole Matrix parameter table from Base to End effector
DH_matrix = [0 pi/2 -0.052 0.105;
    0 0 0 0.0994;
    -pi/2 0 0.0781 d1+0.222;
    0 0 0.052 0;
    theta1 0 0.48 0;
    theta2-pi/2 0 0.48 0;
    theta3+pi/2 0 0 0;
    0 -pi/2 0.166 0]

DH_matrix_simplify_structure=[
    0 pi/2 0 0.0994;
    0 0 0 0.102+d1;
    0 0 0 0.1904;
    theta1 0 -0.0781 0;
    theta2 0 -0.48 0;
    theta3 0 -0.48 0;
    0 0 0.166 0;
    pi/2 -pi/2 0 0;
];
% DH_matrix_simplify_structure=[
%     0 pi/2 0 0.0994;
%     0 0 0 0.316+d1;
%     theta1-(pi/2) 0 0.0781 0;
%     theta2 0 0.48 0;
%     theta3-pi 0 0.48 0;
%     -pi/2 pi/2 0.166 0;
% ];

%DH  = [  r_n  alpha_n  d_n  theta_n]
% dhparams = [
%     0.102 0 0 pi/2;
%     0 -pi/2 0.1775 -pi/2;
%     0 0  0.1904 0;
%     0 0 0 (pi/2);
%     0 0 0.2924 0;
%     -0.48 0 0 0;
%     -0.48 0 0 0;
%      0 0 0 pi;
%      0.166 0 0 0;
%      0 -pi/2  0 pi/2;
%];

% DH_final=[
%     -pi/2 pi 0.102 0;
%     pi/2 pi/2 0 0.1775;
%     -(pi/2) 0 0 0 ;
%     0 0 0 0.1904+d1;
%     theta1 0 0 0;
%     theta2 0 -0.48 0;
%     theta3 0 -0.48 0;
%     -pi 0 0 0;
%     0 0 0.166 0;
%     -pi/2 pi/2 0 0;
%     ];
%DH  = [  theta_n alpha_n r_n d_n  ]
% DH_final=[
%     -pi/2 0 0.102 0;
%     -pi/2 -pi/2 0 0.1775;
%     0 0 0 0.1904+d1;
%     theta1 0 -0.48 0;
%     theta2 0 -0.48 0;
%     theta3 0  0 0;
%     -pi -pi/2 0.166 0;
%     ];
% solved_DH_Matrix_final = DH_HTM(DH_final, 'r')


% add the theta_1 and angles +pi/2 pi other things;
DH_final=[
    pi/2 0 0.102 0;
    -pi/2 -pi/2 0 0.1775;
    0 0 0 0.1904+d1;
    theta1+(pi/2) 0 -0.48 0;
    theta2 0 -0.48 0;
    ];
solved_DH_Matrix_final = DH_HTM(DH_final, 'r')
% The whole Calculation of forward kinematics from base to end-effector
solved_DH_Matrix = DH_HTM(DH_matrix, 'r')

solved_DH_Matrix_simplify = DH_HTM(DH_matrix_simplify_structure, 'r')

px = solved_DH_Matrix_final(1,4)
py = solved_DH_Matrix_final(2,4)
pz = solved_DH_Matrix_final(3,4)
