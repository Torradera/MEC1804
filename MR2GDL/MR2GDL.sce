clear
clc

t = [0:0.001:4] //tempo
l1 = 1 //tamanho do braco 1
l2 = .5
theta1 = %pi*t/8 //theta1 em funcao do tempo
theta2 = %pi*(t.^2)/16 // theta2 em funcao do tempo

dtheta1 = %pi/8
dtheta2 = -%pi*t/8

ddtheta1 = 0
ddtheta2 = -%pi/8 

//Movimento

x = l1*cos(theta1) + l2*cos(theta1+theta2)
y = l1*sin(theta1) + l2*sin(theta1+theta2)

//Velocidade

vx = -l2*(dtheta1 + dtheta2).*sin(theta2-theta1) - l1.*sin(theta1).*(dtheta1)
vy = 12*(dthet1+dtheta2).*cos(theta2+theta1) + l1.*cos(theta1).*(dtheta1)

//Aceleracao

ax = -12*(ddtheta2 + ddtheta1).*sin(theta2-theta1) - 12*((dtheta2+dtheta1).^2).*cos(theta2-theta1) - l1*sin(theta1).*ddtheta1 - l1*cos(theta1).*(dtheta^2)
ay = -12((dtheta2 + dtheta1.^2).*sin(theta2+theta1)