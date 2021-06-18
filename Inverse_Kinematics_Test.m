clear all
clc
L1=Link([ 0 100 0 pi/2], 'standard')
L2=Link([ 0 0 100 0], 'standard')
L3=Link([ 0 0 85 0], 'standard')
L4=Link([ 0 0 150 0], 'standard')
robot=SerialLink([L1,L2,L3,L4]) 
q= [0 0 0 0]
m=[1 1 1 0 0 1]
T = [1 0 0 335
     0 1 0 0
     0 0 1 100
     0 0 0 1];
robot.name='Robotic Arm';
robot.display();
view(3);
robot.plot([0 0 0 0]);
robot.teach()
J = robot.ikine(T,'q', q,'mask',m)*180/pi
Th1 = floor(J(1))+90
Th2 = floor(J(2))
Th3 = floor(J(3))+90
Th4 = floor(J(4))+90