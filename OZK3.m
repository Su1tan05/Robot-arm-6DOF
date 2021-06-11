function [Th1,Th2,Th3] = OZK3(X,Y,Z)
l1 = 100.0
l2 = 100.0
l3 = 85.0+150
% l4 = 150.0
Th1 = abs(real(atand(Y/X)))
Th2 = abs(real(atand(Z-l1/sqrt(X^2+Y^2))-acosd((l2^2-l3^2+X^2+Y^2+(Z-l1)^2)/(2*l2*sqrt(X^2+Y^2+(Z-l1)^2)))));
Th3 = abs(real(-(pi - acosd((l2^2-l3^2+X^2+Y^2+(Z-l1)^2)/(2*l2*l3)))));
end