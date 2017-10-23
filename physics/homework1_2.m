clear,clc;
me=9.1e-31;hbar=1.05e-34;q=1.6e-19;
m=0.01*me;
%%%%%%%%%%%%%%%%%%%%%%%%%%%
%E=0.157962892141713;%eV
ns=100;
Em=linspace(0,5,ns);
TTp=[];RRp=[];
for E_i=1:ns
E=Em(E_i);
n_point=3000;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
x_bp=linspace(-1,3,n_point);%nm
U0=zeros(1,n_point);%eV
for U0_i=1:n_point
    U0(U0_i)=Vs_function(x_bp(U0_i));
end
x_gap=x_bp(2)-x_bp(1);
k=sqrt(2.0.*m.*(E-U0).*q)./hbar;%/m
T=zeros(2,2,n_point-1);
P=zeros(2,2,n_point-1);
M=zeros(2,2,n_point-1);
Ms=eye(2,2);
for p=1:n_point-1
    %T(:,:,p)=[(k(p)+k(p+1))./(2.*k(p)),(k(p)-k(p+1))./(2.*k(p));(k(p)-k(p+1))./(2.*k(p)),(k(p)+k(p+1))./(2.*k(p))];
    T(:,:,p)=-1.0./(2*k(p))*[-k(p),-1;-k(p),1]*[1,1;k(p+1),-k(p+1)];
    P(:,:,p)=[exp(-1i.*k(p).*x_gap.*1e-9),0;0,exp(+1i.*k(p).*x_gap.*1e-9)];
    M(:,:,p)=P(:,:,p)*T(:,:,p);
    Ms=Ms*M(:,:,p);
end
t=1.0./Ms(1,1);
r=Ms(2,1)./Ms(1,1);
TT=real(k(end)*(abs(t))^2/k(1));
RR=(abs(r))^2;
TTp=[TTp,TT];
RRp=[RRp,RR];
end
plot(Em,TTp,'r','linewidth',2);
grid on
hold on
plot(Em,RRp,'k--','linewidth',2);

