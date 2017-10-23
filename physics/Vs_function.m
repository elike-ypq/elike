function c=Vs_function(x)
V0=[0.0,1-(1-x).^2,0.75];%eV
x_bp=[0.0,1.5];%nm
n_s=max(size(V0));
c=V0(n_s);
for si=1:1:(n_s-1)
	if x<x_bp(si)
		c=V0(si);
		break;
	end
end
end