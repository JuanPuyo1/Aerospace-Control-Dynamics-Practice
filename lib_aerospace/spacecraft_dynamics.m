function xd=spacecraft_dynamics(t,x,u,d)

% Parameters
global MU Rp ve mb

% Variables
r=norm(x(1:3));
v=norm(x(4:6));

% End of propellant
if x(7)<=mb
    u=0;
end

% Drag force
cd=1;
S=12;       % m^2
rho0=1.22;  % kg/m^3
H=8;        % km
rho=rho0*exp(-(r-Rp)/H);
cf=1e3;     % conversion factor m -> km
Fdrag=-1/2*cd*S*rho.*v.*x(4:6,:)*cf;

% State equations
xd(1:3,:)=x(4:6);
xd(4:6,:)=-MU*x(1:3)./r.^3+(Fdrag+d+u)./x(7,:);
xd(7,:)=-norm(u)/ve;









