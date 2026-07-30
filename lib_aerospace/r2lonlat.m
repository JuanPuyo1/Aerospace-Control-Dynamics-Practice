function [lam,phi]=r2lonlat(t,r)

om_E = 7.292115e-5;                 %Earth Angular Velocity [rad/sec]

%% Longitude, latitude

for i = 1 : length(r)
    
    %Declination
    delta(i,1) = asin(r(i,3)/norm(r(i,:)));

    %Right Ascension
    if (r(i,2)/norm(r(i,:)))>0
        alpha(i,1) = acos(r(i,1)/norm(r(i,:))/cos(delta(i,1)));
    else
        alpha(i,1) = 2*pi - acos(r(i,1)/norm(r(i,:))/cos(delta(i,1)));
    end

    lam(i,1) = wrapToPi(atan2(r(i,2),r(i,1))-om_E*t(i));    % Longitude
    phi(i,1) = asin(r(i,3)/norm(r(i,:)));                   % Latitude
end
