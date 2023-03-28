%wartosci poczatkowe uchybów statycznych
es1=0; es2=0;
%generowanie amplitudy zakłóceń A
A =(1+randi(75,1))/100.
dr =1+randi(3,1)
warning off
%Generowanie transmitanancji w układzie U1
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
%Generowanie transmitanancji w układzie U2
%generowanie transmitancji G21
G21 =tf([1+randi(4,1)],[1 0]);
%generowanie transmitancji G22
numG22= randi(8,[1,1+randi(1)]);
denG22= randi(8,[1,2+randi(2)]);
G22=tf(numG22,denG22);
%generowanie transmitancji H2
H2=(1+randi(9,1));
Gtg2=series(G21,G22);
Gz2 = feedback(Gtg2,H2);
B=isstable(Gz2);
while ~(B)
G21 = tf([1+randi(4,1)],[1 0]);
numG22= randi(8,[1,1+randi(2)]);
denG22= randi(8,[1,2+randi(2)]);
G22=tf(numG22,denG22);
Gtg2=series(G21,G22);
Gz2 = feedback(Gtg2,H2);
B=isstable(Gz2);
end
%transmitancje obiektów w ukladzie regulacji U2
G21
G22
H2
