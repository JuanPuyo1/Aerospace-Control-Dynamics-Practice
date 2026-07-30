function [lam,phi]=gtplot_earth(lam,phi,cf)

if nargin<3
    cf=1;
end

%% Earth map

main_fig=findobj('Tag','earth_map');
if isempty(main_fig)
    if cf
        figure('position',[400 100 1000 600],'Tag','earth_map')
    end
    worldmap('World')
    load coastlines
    plotm(coastlat, coastlon, 'k');  
    hold on, grid on
end

%% Orbit ground tracks

for i=1
    if i==1; col='g';
    else; col=rand(1,3); end

    %Deg to Rad Conversion
    lam_deg = rad2deg(lam(:,i));    % Longitude
    phi_deg = rad2deg(phi(:,i));    % Latitude

    %Tracks Plotting
    gt1=plotm(phi_deg,lam_deg,'.','color',col);

    %Initial Point
    plot(lam_deg(1,1),phi_deg(1,1),'ro','markersize',10);
end
set(gca,'ydir','normal');
