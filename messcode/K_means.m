clc
clear
%the original data;The size of x is 20x2;
x=[0 0;1 0;0 1;1 1;2 1;1 2;2 2;3 2;6 6;7 6;8 6;6 7;7 7;8 7;9 7;7 8;8 8;9 8;8 9;9 9];
z=zeros(2,1);
z1=zeros(2,2);
z=x(1:2,1:2);
while 1
    disp('1');
    count=zeros(2,1);
    allsum=zeros(2,2);
    for i=1:20
        temp1=sqrt((z(1,1)-x(i,1)).^2+(z(1,2)-x(i,2)).^2);
        temp2=sqrt((z(2,1)-x(i,1)).^2+(z(2,2)-x(i,2)).^2);
        if(temp1<temp2)
            count(1)=count(1)+1;
            allsum(1,1)=allsum(1,1)+x(i,1);
            allsum(1,2)=allsum(1,2)+x(i,2);
        else
            count(2)=count(2)+1;
            allsum(2,1)=allsum(2,1)+x(i,1);
            allsum(2,2)=allsum(2,2)+x(i,2);
        end
    end
    z(1,1)=allsum(1,1)/count(1);
    z(1,2)=allsum(1,2)/count(1);
    z(2,1)=allsum(2,1)/count(2);
    z(2,2)=allsum(2,2)/count(2);
    if(z==z1)
        break;
    else
        z=z1;
    end
    disp('2');
end
%show the results
disp(z1);
plot(x(:,1),x(:,2),'b*');
hold on;
plot(z1(:,1),z1(:,2),'ro');
title('K-means');
xlabel('x_s');
ylabel('y_s');