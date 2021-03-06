clc;
f=@(x) (3.2*sin(x)-0.5*cos(x))*(x-0.015)*(x-0.12);

i = 1;

while(i)
    a = input('enter the value of x0 = ');
    b = input('enter the value of x1 = ');
    if f(a)*f(b) < 0
        i = 0;
    else 
        display('invalid interval, try again!');
    end
end

for i=1:10
    x0=a; x1=b;
    fprintf('\n Hence root lies between (%.4f,%.0f)',a,b)
    x2(i)=x0-((x1-x0)/(f(x1)-f(x0)))*f(x0);
    if f(x2(i)*f(x1))>0
        b=x2(i);
    else a=x2(i);
    end
    fprintf('\n Therefore, x2=%.4f \n Here, f(x2)=%.4f',x2(i),f(x2(i)))
    p=x2(i);
end
for i=1:10
    error(i)=p-x2(i);
end
Answer=p
plot (error)
grid on;
title('Plot of error');
xlabel('iterations');
ylabel('Error');
