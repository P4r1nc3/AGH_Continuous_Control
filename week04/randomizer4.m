H=tf([1],[1 0]);;
numG= (30+ randi(70))/100;
denG = randi(8,[1,2+randi(2)]);
warning off
G=tf(numG,denG);
Gz = feedback(G,H);
B=isstable(Gz);
while ~(B)
numG= (40+ randi(60))/100;
denG = randi(8,[1,2+randi(2)]);
G=tf(numG,denG);
Gz = feedback(G,H);
B=isstable(Gz);
end
%transmitancje obiektów w ukladzie regulacji U1
numG 
denG
eta= (40+ randi(40))/100.
test=1;