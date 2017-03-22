
clc
clear all
close all

a0 = fopen('myfile.txt','a');

n=4;
m=0;

set = lookup2();

numWords=length(set)-1;

while n<20
    a1 = round(rand(n,1)*numWords+1);
    a2 = set(a1)
    pause(2*n)
    clc
    for i = 1:n
        b1{i,1} = input('enter nth word ','s');
    end
    clc
    for i = 1:n
        if strcmpi(a2(i,1),b1(i,1))==1
            j(i)=1;
        else
            j(i)=0;
                 
        end
    end
    for i = 1:n
        if j(i) ==0
            
        end
    end
    clc
    j
    pause(1)
    clc
    k = sum(j);
    p1 = [datevec(date), k];
    fprintf(a0, '%i %i %i %i %i %i %i \n', p1 );

    if k==n
        m=m+1;
        if m == 5
            n=n+1;
            m=0; 
        end
    else     
        [a2 b1]
        pause
        clc
    end
end

