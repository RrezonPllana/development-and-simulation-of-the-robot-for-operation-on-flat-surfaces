% Create the robot rigid body based in denavit hartenberg
%DH  = [  r_n  alpha_n  d_n  theta_n]
dhparams = [
    0.102 0 0 pi/2;
    0 -pi/2 0.1775 -pi/2;
    0 0 0 0;
    0 0 0 (pi/2);
    0 0 0.1924 0;
    -0.48 0 0 0;
    -0.48 0 0 0;
     0 0 0 pi;
     0.166 0 0 0;
     0 -pi/2 0 pi/2;
];

robotManual_1 = rigidBodyTree;

body1 = rigidBody('body1');
jnt1 = rigidBodyJoint('jnt1','fixed');

setFixedTransform(jnt1,dhparams(1,:),'dh');
body1.Joint = jnt1;

addBody(robotManual_1,body1,'base')

body2 = rigidBody('body2');
jnt2 = rigidBodyJoint('jnt2','fixed');
body3 = rigidBody('body3');
jnt3 = rigidBodyJoint('jnt3','prismatic');
body4 = rigidBody('body4');
jnt4 = rigidBodyJoint('jnt4','fixed');

body5 = rigidBody('body5');
jnt5 = rigidBodyJoint('jnt5','revolute');

body6 = rigidBody('body6');
jnt6 = rigidBodyJoint('jnt6','revolute');

body7 = rigidBody('body7');
jnt7 = rigidBodyJoint('jnt7','revolute');

body8 = rigidBody('body8');
jnt8 = rigidBodyJoint('jnt8','fixed');

body9 = rigidBody('body9');
jnt9 = rigidBodyJoint('jnt9','fixed');

body10 = rigidBody('body10');
jnt10 = rigidBodyJoint('jnt10','fixed');

setFixedTransform(jnt2,dhparams(2,:),'dh');
setFixedTransform(jnt3,dhparams(3,:),'dh');
setFixedTransform(jnt4,dhparams(4,:),'dh');
setFixedTransform(jnt5,dhparams(5,:),'dh');
setFixedTransform(jnt6,dhparams(6,:),'dh');
setFixedTransform(jnt7,dhparams(7,:),'dh');
setFixedTransform(jnt8,dhparams(8,:),'dh');
setFixedTransform(jnt9,dhparams(9,:),'dh');
setFixedTransform(jnt10,dhparams(10,:),'dh');

body2.Joint = jnt2;
body3.Joint = jnt3;
body4.Joint = jnt4;
body5.Joint = jnt5;
body6.Joint = jnt6;
body7.Joint = jnt7;
body8.Joint = jnt8;
body9.Joint = jnt9;
body10.Joint = jnt10;


addBody(robotManual_1,body2,'body1')
addBody(robotManual_1,body3,'body2')
addBody(robotManual_1,body4,'body3')
addBody(robotManual_1,body5,'body4')
addBody(robotManual_1,body6,'body5')
addBody(robotManual_1,body7,'body6')
addBody(robotManual_1,body8,'body7')
addBody(robotManual_1,body9,'body8')
addBody(robotManual_1,body10,'body9')

show(robotManual_1)