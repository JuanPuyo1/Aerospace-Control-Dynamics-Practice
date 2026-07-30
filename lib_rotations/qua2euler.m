function ea=qua2euler(q,comb)

if nargin<2
    comb='321';
end

%% DCM matrix

T=[q(1)^2+q(2)^2-q(3)^2-q(4)^2 2*(q(2)*q(3)-q(1)*q(4)) 2*(q(2)*q(4)+q(1)*q(3))
    2*(q(2)*q(3)+q(1)*q(4)) q(1)^2-q(2)^2+q(3)^2-q(4)^2 2*(q(3)*q(4)-q(1)*q(2))
    2*(q(2)*q(4)-q(1)*q(3)) 2*(q(3)*q(4)+q(1)*q(2)) q(1)^2-q(2)^2-q(3)^2+q(4)^2];

%% Euler angles

switch comb
    case '321'
        ph=atan2(T(3,2),T(3,3));
        th=atan2(-T(3,1),sin(ph)*T(3,2)+cos(ph)*T(3,3));
        ps=atan2(-cos(ph)*T(1,2)+sin(ph)*T(1,3),cos(ph)*T(2,2)-sin(ph)*T(2,3));
        ea=[ps;th;ph];
    case '313'
        phi=atan2(T(1,3),-T(2,3));
        th=atan2(sin(phi)*T(1,3)-cos(phi)*T(2,3),T(3,3));
        psi=atan2(-cos(phi)*T(1,2)-sin(phi)*T(2,2),cos(phi)*T(1,1)+sin(phi)*T(2,1));
        ea=[phi;th;psi];
end

