function s=threesimple(X,Y,x)
%        ��Ȼ�߽�������������������(�ڶ��ֱ߽�����)
%        �˺���ΪMֵ��ֵ����
%        D,h,A,g,M������ֱ�Ϊϵ������D����ֵ���h�����̱�A��gֵ,Mֵ 
         n=length(X); 
         A=zeros(n,n);A(:,1)=Y';D=zeros(n-2,n-2);g=zeros(n-2,1);
         for  j=2:n
            for i=j:n
                A(i,j)=(A(i,j-1)- A(i-1,j-1))/(X(i)-X(i-j+1));
            end
         end
         
         for i=1:n-1
             h(i)=X(i+1)-X(i);
         end
         for i=1:n-2
             D(i,i)=2;
             g(i,1)=(6/(h(i+1)+h(i)))*(A(i+2,2)-A(i+1,2));
         end
         for i=2:n-2
             u(i)=h(i)/(h(i)+h(i+1));
             n(i-1)=h(i)/(h(i-1)+h(i));
             D(i-1,i)=n(i-1);
             D(i,i-1)=u(i);             
         end
         M=D\g;
         M=[0;M;0];         

%        ��Ȼ�߽��������� 
%        s������ʾ����������ֵ������ֵ���Ӧ�ĺ���ֵ
%        �������������������������D,h,A,g,M
%        x��ʾ����ֵ�㺯���㣬XΪ��֪��ֵ��        
         n=length(X); m=length(x);    
         for t=1:m
            for i=1:n-1
               if (x(t)<=X(i+1))&&(x(t)>=X(i))
                  p1=M(i,1)*(X(i+1)-x(t))^3/(6*h(i));
                  p2=M(i+1,1)*(x(t)-X(i))^3/(6*h(i));
                  p3=(A(i,1)-M(i,1)/6*(h(i))^2)*(X(i+1)-x(t))/h(i);
                  p4=(A(i+1,1)-M(i+1,1)/6*(h(i))^2)*(x(t)-X(i))/h(i);
                  s(t)=p1+p2+p3+p4; 
                  break;
               else
                   s(t)=0; 
               end
            end
         end
end