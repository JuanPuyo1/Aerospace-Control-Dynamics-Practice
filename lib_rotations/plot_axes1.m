function R=plot_axes1(T,s,c1,OS,xa,ya,za,fs1,R)

if nargin<9
    R=eye(3);
end
if nargin<8 || isempty(fs1)
    fs1=20;
end
if nargin<5
    xa='$X$'; ya='$Y$'; za='$Z$';
end
if nargin<4 || isempty(OS)
    OS='';
end
if nargin<3 || isempty(c1)
    c1='k';
end
if nargin<2 || isempty(s)
    s=1;
end
if nargin==0 || isempty(T)
    T=eye(3);
end

sw1=0.003;
tw1=0.01;

O=[0;0;0];
R=s*R;
R=T*R;

mArrow3(O,R(:,1),'stemWidth',sw1,'tipWidth',tw1,'color',c1);
mArrow3(O,R(:,2),'stemWidth',sw1,'tipWidth',tw1,'color',c1);
mArrow3(O,R(:,3),'stemWidth',sw1,'tipWidth',tw1,'color',c1);

text(R(1,1),R(2,1),R(3,1),xa,'interpreter','latex','fontsize',fs1,'color',c1,'tag','xlabe')
text(R(1,2),R(2,2),R(3,2),ya,'interpreter','latex','fontsize',fs1,'color',c1,'tag','ylabe')
text(R(1,3),R(2,3),R(3,3),za,'interpreter','latex','fontsize',fs1,'color',c1,'tag','zlabe')
text(O(1),O(2),O(3),OS,'interpreter','latex','fontsize',fs1,'color',c1)

view(105,20)



