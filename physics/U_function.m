function c=U_function(x,a)
U0=[0.3,0.0,0.3,0.0,0.3];%eV
x_bp=[0.0,5.0,a+5.0,a+10.0];%nm
n_s=max(size(U0));
c=U0(n_s);
for si=1:1:(n_s-1)
	if x<x_bp(si)
		c=U0(si);
		break;
	end
end
end