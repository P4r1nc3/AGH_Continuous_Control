%wartosc poczatkowa
es=0; 
%generowanie odchyleń regulacji
dr1 =1+randi(3,1)
dr2=dr1+1
%generowanie amplitudy zakłóceń Az
Az =(1+randi(75,1))/100.
%generowanie transmitancji G11
numG11= randi(8,[1,1+randi(1)]);
denG11= randi(8,[1,2+randi(2)]);
G11=tf(numG11,denG11);
%generowanie transmitancji G12
numG12= randi(8,[1,1+randi(1)]);
denG12= randi(8,[1,2+randi(2)]);
G12=tf(numG12,denG12);
%generowanie transmitancji H1
H1=(1+randi(9,1));
Gtg1=series(G11,G12);
Gz1 = feedback(Gtg1,H1);
B=isstable(Gz1);
while ~(B)
numG11= randi(8,[1,1+randi(1)]);
denG11= randi(8,[1,2+randi(2)]);
G11=tf(numG11,denG11);
numG12= randi(8,[1,1+randi(1)]);
denG12= randi(8,[1,2+randi(2)]);
G12=tf(numG12,denG12);
Gtg1=series(G11,G12);
Gz1 = feedback(Gtg1,H1);
B=isstable(Gz1);
end
%transmitancje obiektów w ukladzie regulacji U1
G11 
G12
H1