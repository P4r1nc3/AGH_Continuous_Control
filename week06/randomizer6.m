%num=randi(25,[1,randi(2)])
num=25+randi(25,1);
den1=randi(7,[1,1+randi(1)]);
den2=randi(7,[1,1+randi(1)]);
den3=randi(7,[1,1+randi(1)]) ;
den=conv(conv(den1,den2),den3);
dl_num=length(num);
dl_den1=length(den1);
dl_den2=length(den2);
dl_den3=length(den3);
for i=1:dl_num
fprintf('.            %15.1f ',num(dl_num-i+1))
z='+ s';
end
fprintf('\nG(s)=  -----------------------------------------------------\n')
fprintf('        (')
z=' ';
for i=1:dl_den1
fprintf(' %s%.1f ',z,den1(dl_den1-i+1))
z='+ s*';
end
fprintf(') ')
fprintf('(')
z=' ';
for i=1:dl_den2
fprintf(' %s%.1f ',z,den2(dl_den2-i+1))
z='+ s*';
end
fprintf(') ')
fprintf('(')
z=' ';
for i=1:dl_den3
fprintf(' %s%.1f ',z,den3(dl_den3-i+1))
z='+ s*';
end
fprintf(') ')
G=tf(num,den);