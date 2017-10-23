clear,clc;
me=9.1e-31;q=1.6e-19;hbar=1.05e-34;
m=0.01*me;
E1=[];E2=[];
A=linspace(1,10,100);
for A_i=1:100
a=A(A_i);
%the range of function
right0=30;
left0=-20;
n_dimension=3000;
ah=(right0-left0)/n_dimension;
x_t=linspace(left0,right0,n_dimension);
t=hbar/m*hbar/(2*(ah*1e-9)^2)/q;
T=zeros(n_dimension,n_dimension);
T(1,1)=2;T(1,2)=-1;
T(n_dimension,n_dimension-1)=-1;T(n_dimension,n_dimension)=2;
for T_i=2:1:(n_dimension-1)
	T(T_i,T_i-1)=-1;T(T_i,T_i)=2;T(T_i,T_i+1)=-1;
end
U0=zeros(1,n_dimension);
for U_i=1:n_dimension
	U0(U_i)=U_function(x_t(U_i),a);
end
Us=diag(U0);
H=t*T+Us;
[V,D]=eig(H); % Find eigenspectrum
[D,ind]=sort(real(diag(D))); % Replace eigenvaluesD by sorting, with index ind
V=V(:,ind); % Keep all rows (:) same, interchange columns acc. to sorting index
E1=[E1,D(1)];
E2=[E2,D(2)];
end
%plot(x_t,V(:,1),'r','linewidth',2);
plot(A,E1,'r','linewidth',2);
grid on
hold on
plot(A,E2,'k--','linewidth',2);
%plot(x_t,V(:,2),'k--','linewidth',2);
%plot(x_t,U0,'b','linewidth',2);