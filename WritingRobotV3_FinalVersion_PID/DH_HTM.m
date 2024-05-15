function [DH_HTM] = DH_HTM(Matrix,angtype)
% Input Matrix: DH Table of (n,4) Dimension, else throw error
% Output matrix: Homogenous transformation: Dimension (4,4)

if size(Matrix,2) ~= 4
    error("Matrix must have 4 columns");
end

output = eye(4);

len = size(Matrix,1); % Number of Rows
transformation_matrices=cell(1, len);

for i = 1 : len
    params = Matrix(i,:);
    theta = params(1);
    alpha = params(2);
    rx = params(3);
    dz = params(4);
    next = dh_link(theta,alpha,rx,dz,angtype);
    output = output * next;
    transformation_matrices{i}=next;
    simplify(transformation_matrices{i});
    % Print the matrix with a formatted string
    fprintf('%s =\n', sprintf('transformation_%d', i));
    disp(transformation_matrices{i});
end

output = simplify(output);
DH_HTM = output;
end