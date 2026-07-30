function plot_axes2(R0,s,c1,OS,xa,ya,za,fs1)

if nargin<8 || isempty(fs1)
    fs1=20;
end

sw1=0.007;
tw1=0.025;

O=[0;0;0];
R=s*R0;

mArrow3(O,R(:,1),'stemWidth',sw1,'tipWidth',tw1,'color',c1);
mArrow3(O,R(:,2),'stemWidth',sw1,'tipWidth',tw1,'color',c1);
mArrow3(O,R(:,3),'stemWidth',sw1,'tipWidth',tw1,'color',c1);

text(R(1,1),R(2,1),R(3,1),xa,'interpreter','latex','fontsize',fs1,'color',c1,'tag','xlabe')
text(R(1,2),R(2,2),R(3,2),ya,'interpreter','latex','fontsize',fs1,'color',c1,'tag','ylabe')
text(R(1,3),R(2,3),R(3,3),za,'interpreter','latex','fontsize',fs1,'color',c1,'tag','zlabe')
text(O(1),O(2),O(3),OS,'interpreter','latex','fontsize',fs1,'color',c1)

view(105,20)



