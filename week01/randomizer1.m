dL1=0; dL2=0;dL3=0;dL4=0;
df1=0;df2=0;df3=0;df4=0;
Kd1=0; Kd2=0;Kd3=0;Kd4=0;
Kd_1=0; Kd_2=0;Kd_3=0;Kd_4=0;
df_1=0; df_2=0; df_3=0; df_4=0;
om=0:0.001:1000;
num1=0.5;
num2=num1+0.5;
num3=num2+0.5;
num4=num3+0.5;
den = randi(8,[1,2+randi(2)]);
[Kd1,df1]=margin(num1,den);
warning off
while (Kd1==Inf || df1==Inf || df1<0 || Kd1<2)
    den = randi(8,[1,2+randi(2)]);
    [Kd1,df1]=margin(num1,den);
end
Kd1=0;df1=0;
G1=tf(num1,den)
G2=tf(num2,den)
G3=tf(num3,den)
G4=tf(num4,den)
