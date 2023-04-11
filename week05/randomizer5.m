dr =1+randi(4,1)
warning off
GR_K=[0.5, 1, 5, 20];
num=(1+randi(200))/100;
den=randi(800,[1,3])/100;
G = tf(num,den);
GR=GR_K(1);
Gtg=series(GR,G);
Gz = feedback(Gtg,1);
B=isstable(Gz);
while ~(B)
num=(1+randi(200))/100;
den=randi(800,[1,3])/100;
G = tf(num,den);
Gtg=series(GR,G);
Gz = feedback(Gtg,1);
B=isstable(Gz);
end
%transmitancje obiektów w ukladzie regulacji 
G