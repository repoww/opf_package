%%%%%%%%%%%Slack Bus data%%%%%%%%%%%%%%%%%
N_Slack=1;
V_base=4.8/sqrt(3); %4.8KV LL change to Phase
S_base = 0.5;%5MVA 
Z_base = V_base^2/S_base;
%%node1:799%%%%%%%
node(1).phase=[1,1,1];
node(1).np=3;
node(1).g=1;
node(1).P=[0,0,0];
node(1).Q=[0,0,0];
V1_regular=[1,0;cos(-pi*2/3),sin(-pi*2/3);cos(-pi*4/3),sin(-pi*4/3)];
V1=[1.0437,0;1.025*cos(-pi*2/3),1.025*sin(-pi*2/3);1.0345*cos(-pi*4/3),1.0345*sin(-pi*4/3)];
% V1_real=[1.0625;1.05*cos(-pi*2/3);1.0687*cos(-pi*4/3)];
% V1_imag=[0;1.05*sin(-pi*2/3);1.0687*sin(-pi*4/3)];
% V1=[1.0625,0;1.05*cos(-pi*2/3),1.05*sin(-pi*2/3);1.0687*cos(-pi*4/3),1.0687*sin(-pi*4/3)];
%%%%%%%%%%%PQ bus Data%%%%%%%%%%%%%%%%%
N_PQ=12;
P=zeros(3*N_PQ,1);
Q=zeros(3*N_PQ,1);
%%node2?701%%
node(2).phase=[1,1,1];
node(2).np=3;
node(2).g=1;

% temp_va=1.0317*(cos(-0.08/180*pi)+1i*sin(-0.08/180*pi));
% temp_vb=1.0144*(cos(-120.39/180*pi)+1i*sin(-120.39/180*pi));
% temp_vc=1.0183*(cos(120.61/180*pi)+1i*sin(120.61/180*pi));
% temp_iab=(140+70i)/(temp_va-temp_vb);
% temp_ibc=(140+70i)/(temp_vb-temp_vc);
% temp_ica=(350+175i)/(temp_vc-temp_va);
% temp_Sa=temp_va*(temp_iab-temp_ica);
% temp_Sb=temp_vb*(temp_ibc-temp_iab);
% temp_Sc=temp_vc*(temp_ica-temp_ibc);

% tempS_b=(230+132i)/(1-cos(-2/3*pi)-1i*sin(-2/3*pi));
% tempS_c=(230+132i)/(1-cos(-2/3*pi)-1i*sin(-2/3*pi))*(-cos(-2/3*pi)-1i*sin(-2/3*pi));
% node(2).P=[real(temp_Sa),real(temp_Sb),real(temp_Sc)]/1000/S_base;
% node(2).Q=[imag(temp_Sa),imag(temp_Sb),imag(temp_Sc)]/1000/S_base;
node(2).P=[140,140,350]/1000/S_base;
node(2).Q=[70,70,175]/1000/S_base;
%%node3:702%%
node(3).phase=[1,1,1];
node(3).np=3;
node(3).g=0;
node(3).P=[0,0,0]/1000/S_base;
node(3).Q=[0,0,0]/1000/S_base;
%%node4:742%%
node(4).phase=[1,1,1];
node(4).np=3;
node(4).g=0;
% temp_va=1.0238*(cos(-0.15/180*pi)+1i*sin(-0.15/180*pi));
% temp_vb=1.0067*(cos(-120.59/180*pi)+1i*sin(-120.59/180*pi));
% temp_vc=1.0086*(cos(120.48/180*pi)+1i*sin(120.48/180*pi));
% temp_iab=(8+4i)/(temp_va-temp_vb);
% temp_ibc=(85+40i)/(temp_vb-temp_vc);
% temp_ica=(0)/(temp_vc-temp_va);
% temp_Sa=temp_va*(temp_iab-temp_ica);
% temp_Sb=temp_vb*(temp_ibc-temp_iab);
% temp_Sc=temp_vc*(temp_ica-temp_ibc);

% node(4).P=[real(temp_Sa),real(temp_Sb),real(temp_Sc)]/1000/S_base;
% node(4).Q=[imag(temp_Sa),imag(temp_Sb),imag(temp_Sc)]/1000/S_base;
node(4).P=[8,85,0]/1000/S_base;
node(4).Q=[4,40,0]/1000/S_base;
%%node5?705%%
node(5).phase=[1,1,1];
node(5).np=3;
node(5).g=0;
node(5).P=[0,0,0];
node(5).Q=[0,0,0];
%%node6?712%%
node(6).phase=[1,1,1];
node(6).np=3;
node(6).g=0;
% temp_va=1.0240*(cos(-0.11/180*pi)+1i*sin(-0.11/180*pi));
% temp_vb=1.0073*(cos(-120.61/180*pi)+1i*sin(-120.61/180*pi));
% temp_vc=1.0082*(cos(120.46/180*pi)+1i*sin(120.46/180*pi));
% temp_iab=(0)/(temp_va-temp_vb);
% temp_ibc=(0)/(temp_vb-temp_vc);
% temp_ica=(85+40i)/(temp_vc-temp_va);
% temp_Sa=temp_va*(temp_iab-temp_ica);
% temp_Sb=temp_vb*(temp_ibc-temp_iab);
% temp_Sc=temp_vc*(temp_ica-temp_ibc);
% node(6).P=[real(temp_Sa),real(temp_Sb),real(temp_Sc)]/1000/S_base;
% node(6).Q=[imag(temp_Sa),imag(temp_Sb),imag(temp_Sc)]/1000/S_base;
node(6).P=[0,0,85]/1000/S_base;
node(6).Q=[0,0,40]/1000/S_base;
%%node7?713%%
node(7).phase=[1,1,1];
node(7).np=3;
node(7).g=0;
% temp_va=1.0234*(cos(-0.15/180*pi)+1i*sin(-0.15/180*pi));
% temp_vb=1.0070*(cos(-120.60/180*pi)+1i*sin(-120.60/180*pi));
% temp_vc=1.0083*(cos(120.44/180*pi)+1i*sin(120.44/180*pi));
% temp_iab=(0)/(temp_va-temp_vb);
% temp_ibc=(0)/(temp_vb-temp_vc);
% temp_ica=(85+40i)/(temp_vc-temp_va);
% temp_Sa=temp_va*(temp_iab-temp_ica);
% temp_Sb=temp_vb*(temp_ibc-temp_iab);
% temp_Sc=temp_vc*(temp_ica-temp_ibc);
% node(7).P=[real(temp_Sa),real(temp_Sb),real(temp_Sc)]/1000/S_base;
% node(7).Q=[imag(temp_Sa),imag(temp_Sb),imag(temp_Sc)]/1000/S_base;
node(7).P=[0,0,85]/1000/S_base;
node(7).Q=[0,0,40]/1000/S_base;
%%node8?704%%
node(8).phase=[1,1,1];
node(8).np=3;
node(8).g=1;
node(8).P=[0,0,0]/1000/S_base;
node(8).Q=[0,0,0]/1000/S_base;
%%node9?720%%
node(9).phase=[1,1,1];
node(9).np=3;
node(9).g=0;
% temp_va=1.0205*(cos(-0.21/180*pi)+1i*sin(-0.21/180*pi));
% temp_vb=1.0011*(cos(-120.66/180*pi)+1i*sin(-120.66/180*pi));
% temp_vc=1.0041*(cos(120.53/180*pi)+1i*sin(120.53/180*pi));
% temp_iab=(0)/(temp_va-temp_vb);
% temp_ibc=(0)/(temp_vb-temp_vc);
% temp_ica=(85+40i)/(temp_vc-temp_va);
% temp_Sa=temp_va*(temp_iab-temp_ica);
% temp_Sb=temp_vb*(temp_ibc-temp_iab);
% temp_Sc=temp_vc*(temp_ica-temp_ibc);
% node(9).P=[real(temp_Sa),real(temp_Sb),real(temp_Sc)]/1000/S_base;
% node(9).Q=[imag(temp_Sa),imag(temp_Sb),imag(temp_Sc)]/1000/S_base;
node(9).P=[0,0,85]/1000/S_base;
node(9).Q=[0,0,40]/1000/S_base;
%%node10?707%%
node(10).phase=[1,1,1];
node(10).np=3;
node(10).g=1;
node(10).P=[0,0,0]/1000/S_base;
node(10).Q=[0,0,0]/1000/S_base;
%%node11:724%%
node(11).phase=[1,1,1];
node(11).np=3;
node(11).g=0;
% temp_va=1.0184*(cos(-0.32/180*pi)+1i*sin(-0.32/180*pi));
% temp_vb=0.9950*(cos(-120.61/180*pi)+1i*sin(-120.61/180*pi));
% temp_vc=1.0023*(cos(120.69/180*pi)+1i*sin(120.69/180*pi));
% temp_iab=(0)/(temp_va-temp_vb);
% temp_ibc=(42+21i)/(temp_vb-temp_vc);
% temp_ica=(0)/(temp_vc-temp_va);
% temp_Sa=temp_va*(temp_iab-temp_ica);
% temp_Sb=temp_vb*(temp_ibc-temp_iab);
% temp_Sc=temp_vc*(temp_ica-temp_ibc);
% node(11).P=[real(temp_Sa),real(temp_Sb),real(temp_Sc)]/1000/S_base;
% node(11).Q=[imag(temp_Sa),imag(temp_Sb),imag(temp_Sc)]/1000/S_base;
node(11).P=[0,42,0]/1000/S_base;
node(11).Q=[0,21,0]/1000/S_base;
%%node11:722%%
node(12).phase=[1,1,1];
node(12).np=3;
node(12).g=0;
% temp_va=1.0185*(cos(-0.30/180*pi)+1i*sin(-0.30/180*pi));
% temp_vb=0.9954*(cos(-120.62/180*pi)+1i*sin(-120.62/180*pi));
% temp_vc=1.0023*(cos(120.68/180*pi)+1i*sin(120.68/180*pi));
% temp_iab=(0)/(temp_va-temp_vb);
% temp_ibc=(140+70i)/(temp_vb-temp_vc);
% temp_ica=(21+10i)/(temp_vc-temp_va);
% temp_Sa=temp_va*(temp_iab-temp_ica);
% temp_Sb=temp_vb*(temp_ibc-temp_iab);
% temp_Sc=temp_vc*(temp_ica-temp_ibc);
% node(12).P=[real(temp_Sa),real(temp_Sb),real(temp_Sc)]/1000/S_base;
% node(12).Q=[imag(temp_Sa),imag(temp_Sb),imag(temp_Sc)]/1000/S_base;
node(12).P=[0,140,21]/1000/S_base;
node(12).Q=[0,70,10]/1000/S_base;
%%node13?714%%
node(13).phase=[1,1,1];
node(13).np=3;
node(13).g=0;
% temp_va=1.0214*(cos(-0.17/180*pi)+1i*sin(-0.17/180*pi));
% temp_vb=1.0043*(cos(-120.60/180*pi)+1i*sin(-120.60/180*pi));
% temp_vc=1.0064*(cos(120.46/180*pi)+1i*sin(120.46/180*pi));
% temp_iab=(17+8i)/(temp_va-temp_vb);
% temp_ibc=(21+10i)/(temp_vb-temp_vc);
% temp_ica=(0)/(temp_vc-temp_va);
% temp_Sa=temp_va*(temp_iab-temp_ica);
% temp_Sb=temp_vb*(temp_ibc-temp_iab);
% temp_Sc=temp_vc*(temp_ica-temp_ibc);
% node(13).P=[real(temp_Sa),real(temp_Sb),real(temp_Sc)]/1000/S_base;
% node(13).Q=[imag(temp_Sa),imag(temp_Sb),imag(temp_Sc)]/1000/S_base;
node(13).P=[17,21,0]/1000/S_base;
node(13).Q=[8,10,0]/1000/S_base;
%%node14:718%%
node(14).phase=[1,1,1];
node(14).np=3;
node(14).g=0;
% temp_va=1.0201*(cos(-0.16/180*pi)+1i*sin(-0.16/180*pi));
% temp_vb=1.0041*(cos(-120.57/180*pi)+1i*sin(-120.57/180*pi));
% temp_vc=1.0060*(cos(120.42/180*pi)+1i*sin(120.42/180*pi));
% temp_iab=(85+40i)/(temp_va-temp_vb);
% temp_ibc=(0)/(temp_vb-temp_vc);
% temp_ica=(0)/(temp_vc-temp_va);
% temp_Sa=temp_va*(temp_iab-temp_ica);
% temp_Sb=temp_vb*(temp_ibc-temp_iab);
% temp_Sc=temp_vc*(temp_ica-temp_ibc);
% node(14).P=[real(temp_Sa),real(temp_Sb),real(temp_Sc)]/1000/S_base;
% node(14).Q=[imag(temp_Sa),imag(temp_Sb),imag(temp_Sc)]/1000/S_base;
node(14).P=[85,0,0]/1000/S_base;
node(14).Q=[40,0,0]/1000/S_base;
%%node15:706%%
node(15).phase=[1,1,1];
node(15).np=3;
node(15).g=0;
node(15).P=[0,0,0]/1000/S_base;
node(15).Q=[0,0,0]/1000/S_base;
%%node16:725%%
node(16).phase=[1,1,1];
node(16).np=3;
node(16).g=0;
% temp_va=1.0202*(cos(-0.23/180*pi)+1i*sin(-0.23/180*pi));
% temp_vb=1.0003*(cos(-120.65/180*pi)+1i*sin(-120.65/180*pi));
% temp_vc=1.0039*(cos(120.55/180*pi)+1i*sin(120.55/180*pi));
% temp_iab=(0)/(temp_va-temp_vb);
% temp_ibc=(42+21i)/(temp_vb-temp_vc);
% temp_ica=(0)/(temp_vc-temp_va);
% temp_Sa=temp_va*(temp_iab-temp_ica);
% temp_Sb=temp_vb*(temp_ibc-temp_iab);
% temp_Sc=temp_vc*(temp_ica-temp_ibc);
% node(16).P=[real(temp_Sa),real(temp_Sb),real(temp_Sc)]/1000/S_base;
% node(16).Q=[imag(temp_Sa),imag(temp_Sb),imag(temp_Sc)]/1000/S_base;
node(16).P=[0,42,0]/1000/S_base;
node(16).Q=[0,21,0]/1000/S_base;
%%node17:703%%
node(17).phase=[1,1,1];
node(17).np=3;
node(17).g=0;
node(17).P=[0,0,0]/1000/S_base;
node(17).Q=[0,0,0]/1000/S_base;
%%node18:727%%
node(18).phase=[1,1,1];
node(18).np=3;
node(18).g=0;
% temp_va=1.0167*(cos(-0.16/180*pi)+1i*sin(-0.16/180*pi));
% temp_vb=1.0044*(cos(-120.69/180*pi)+1i*sin(-120.69/180*pi));
% temp_vc=1.0025*(cos(120.19/180*pi)+1i*sin(120.19/180*pi));
% temp_iab=(0)/(temp_va-temp_vb);
% temp_ibc=(0)/(temp_vb-temp_vc);
% temp_ica=(42+21i)/(temp_vc-temp_va);
% temp_Sa=temp_va*(temp_iab-temp_ica);
% temp_Sb=temp_vb*(temp_ibc-temp_iab);
% temp_Sc=temp_vc*(temp_ica-temp_ibc);
% node(18).P=[real(temp_Sa),real(temp_Sb),real(temp_Sc)]/1000/S_base;
% node(18).Q=[imag(temp_Sa),imag(temp_Sb),imag(temp_Sc)]/1000/S_base;
node(18).P=[0,0,42]/1000/S_base;
node(18).Q=[0,0,21]/1000/S_base;
%%node19:744%%
node(19).phase=[1,1,1];
node(19).np=3;
node(19).g=1;
% temp_va=1.0160*(cos(-0.16/180*pi)+1i*sin(-0.16/180*pi));
% temp_vb=1.0041*(cos(-120.68/180*pi)+1i*sin(-120.68/180*pi));
% temp_vc=1.0021*(cos(120.17/180*pi)+1i*sin(120.17/180*pi));
% temp_iab=(42+21i)/(temp_va-temp_vb);
% temp_ibc=(0)/(temp_vb-temp_vc);
% temp_ica=(0)/(temp_vc-temp_va);
% temp_Sa=temp_va*(temp_iab-temp_ica);
% temp_Sb=temp_vb*(temp_ibc-temp_iab);
% temp_Sc=temp_vc*(temp_ica-temp_ibc);
% node(19).P=[real(temp_Sa),real(temp_Sb),real(temp_Sc)]/1000/S_base;
% node(19).Q=[imag(temp_Sa),imag(temp_Sb),imag(temp_Sc)]/1000/S_base;
node(19).P=[42,0,0]/1000/S_base;
node(19).Q=[21,0,0]/1000/S_base;
%%node20:728%%
node(20).phase=[1,1,1];
node(20).np=3;
node(20).g=0;
% temp_va=1.0156*(cos(-0.15/180*pi)+1i*sin(-0.15/180*pi));
% temp_vb=1.0037*(cos(-120.68/180*pi)+1i*sin(-120.68/180*pi));
% temp_vc=1.0017*(cos(120.18/180*pi)+1i*sin(120.18/180*pi));
% temp_iab=(42+21i)/(temp_va-temp_vb);
% temp_ibc=(42+21i)/(temp_vb-temp_vc);
% temp_ica=(42+21i)/(temp_vc-temp_va);
% temp_Sa=temp_va*(temp_iab-temp_ica);
% temp_Sb=temp_vb*(temp_ibc-temp_iab);
% temp_Sc=temp_vc*(temp_ica-temp_ibc);
% node(20).P=[real(temp_Sa),real(temp_Sb),real(temp_Sc)]/1000/S_base;
% node(20).Q=[imag(temp_Sa),imag(temp_Sb),imag(temp_Sc)]/1000/S_base;
node(20).P=[42,42,42]/1000/S_base;
node(20).Q=[21,21,21]/1000/S_base;
%%node21:729%%
node(21).phase=[1,1,1];
node(21).np=3;
node(21).g=0;
% temp_va=1.0157*(cos(-0.15/180*pi)+1i*sin(-0.15/180*pi));
% temp_vb=1.0040*(cos(-120.73/180*pi)+1i*sin(-120.73/180*pi));
% temp_vc=1.0019*(cos(120.17/180*pi)+1i*sin(120.17/180*pi));
% temp_iab=(42+21i)/(temp_va-temp_vb);
% temp_ibc=(0)/(temp_vb-temp_vc);
% temp_ica=(0)/(temp_vc-temp_va);
% temp_Sa=temp_va*(temp_iab-temp_ica);
% temp_Sb=temp_vb*(temp_ibc-temp_iab);
% temp_Sc=temp_vc*(temp_ica-temp_ibc);
% node(21).P=[real(temp_Sa),real(temp_Sb),real(temp_Sc)]/1000/S_base;
% node(21).Q=[imag(temp_Sa),imag(temp_Sb),imag(temp_Sc)]/1000/S_base;
node(21).P=[42,0,0]/1000/S_base;
node(21).Q=[21,0,0]/1000/S_base;
%%node22:730%%
node(22).phase=[1,1,1];
node(22).np=3;
node(22).g=1;
% temp_va=1.0127*(cos(-0.15/180*pi)+1i*sin(-0.15/180*pi));
% temp_vb=1.0021*(cos(-120.73/180*pi)+1i*sin(-120.73/180*pi));
% temp_vc=0.9981*(cos(120.10/180*pi)+1i*sin(120.10/180*pi));
% temp_iab=(0)/(temp_va-temp_vb);
% temp_ibc=(0)/(temp_vb-temp_vc);
% temp_ica=(85+40i)/(temp_vc-temp_va);
% temp_Sa=temp_va*(temp_iab-temp_ica);
% temp_Sb=temp_vb*(temp_ibc-temp_iab);
% temp_Sc=temp_vc*(temp_ica-temp_ibc);
% node(22).P=[real(temp_Sa),real(temp_Sb),real(temp_Sc)]/1000/S_base;
% node(22).Q=[imag(temp_Sa),imag(temp_Sb),imag(temp_Sc)]/1000/S_base;
node(22).P=[0,0,85]/1000/S_base;
node(22).Q=[0,0,40]/1000/S_base;
%%node23:709%%
node(23).phase=[1,1,1];
node(23).np=3;
node(23).g=0;
node(23).P=[0,0,0]/1000/S_base;
node(23).Q=[0,0,0]/1000/S_base;
%%node24:731%%
node(24).phase=[1,1,1];
node(24).np=3;
node(24).g=0;
% temp_va=1.0109*(cos(-0.13/180*pi)+1i*sin(-0.15/180*pi));
% temp_vb=1.0004*(cos(-120.74/180*pi)+1i*sin(-120.74/180*pi));
% temp_vc=0.9964*(cos(120.10/180*pi)+1i*sin(120.10/180*pi));
% temp_iab=(0)/(temp_va-temp_vb);
% temp_ibc=(85+40i)/(temp_vb-temp_vc);
% temp_ica=(0)/(temp_vc-temp_va);
% temp_Sa=temp_va*(temp_iab-temp_ica);
% temp_Sb=temp_vb*(temp_ibc-temp_iab);
% temp_Sc=temp_vc*(temp_ica-temp_ibc);
% node(24).P=[real(temp_Sa),real(temp_Sb),real(temp_Sc)]/1000/S_base;
% node(24).Q=[imag(temp_Sa),imag(temp_Sb),imag(temp_Sc)]/1000/S_base;
node(24).P=[0,85,0]/1000/S_base;
node(24).Q=[0,40,0]/1000/S_base;
%%node25:775%%
node(25).phase=[1,1,1];
node(25).np=3;
node(25).g=0;
node(25).P=[0,0,0]/1000/S_base;
node(25).Q=[0,0,0]/1000/S_base;
%%node26:708%%
node(26).phase=[1,1,1];
node(26).np=3;
node(26).g=0;
node(26).P=[0,0,0]/1000/S_base;
node(26).Q=[0,0,0]/1000/S_base;
%%node27:732%%
node(27).phase=[1,1,1];
node(27).np=3;
node(27).g=0;
% temp_va=1.0086*(cos(-0.07/180*pi)+1i*sin(-0.07/180*pi));
% temp_vb=1.0001*(cos(-120.74/180*pi)+1i*sin(-120.74/180*pi));
% temp_vc=0.9941*(cos(120.02/180*pi)+1i*sin(120.02/180*pi));
% temp_iab=(0)/(temp_va-temp_vb);
% temp_ibc=(0)/(temp_vb-temp_vc);
% temp_ica=(42+21i)/(temp_vc-temp_va);
% temp_Sa=temp_va*(temp_iab-temp_ica);
% temp_Sb=temp_vb*(temp_ibc-temp_iab);
% temp_Sc=temp_vc*(temp_ica-temp_ibc);
% node(27).P=[real(temp_Sa),real(temp_Sb),real(temp_Sc)]/1000/S_base;
% node(27).Q=[imag(temp_Sa),imag(temp_Sb),imag(temp_Sc)]/1000/S_base;
node(27).P=[0,0,42]/1000/S_base;
node(27).Q=[0,0,21]/1000/S_base;
%%node28:733%%
node(28).phase=[1,1,1];
node(28).np=3;
node(28).g=0;
% temp_va=1.0063*(cos(-0.05/180*pi)+1i*sin(-0.05/180*pi));
% temp_vb=0.9993*(cos(-120.73/180*pi)+1i*sin(-120.73/180*pi));
% temp_vc=0.9925*(cos(119.96/180*pi)+1i*sin(119.96/180*pi));
% temp_iab=(85+40i)/(temp_va-temp_vb);
% temp_ibc=(0)/(temp_vb-temp_vc);
% temp_ica=(0)/(temp_vc-temp_va);
% temp_Sa=temp_va*(temp_iab-temp_ica);
% temp_Sb=temp_vb*(temp_ibc-temp_iab);
% temp_Sc=temp_vc*(temp_ica-temp_ibc);
% node(28).P=[real(temp_Sa),real(temp_Sb),real(temp_Sc)]/1000/S_base;
% node(28).Q=[imag(temp_Sa),imag(temp_Sb),imag(temp_Sc)]/1000/S_base;
node(28).P=[85,0,0]/1000/S_base;
node(28).Q=[40,0,0]/1000/S_base;
%%node29:734%%
node(29).phase=[1,1,1];
node(29).np=3;
node(29).g=1;
% temp_va=1.0029*(cos(-0.01/180*pi)+1i*sin(-0.01/180*pi));
% temp_vb=0.9978*(cos(-120.74/180*pi)+1i*sin(-120.74/180*pi));
% temp_vc=0.9893*(cos(119.88/180*pi)+1i*sin(119.88/180*pi));
% temp_iab=(0)/(temp_va-temp_vb);
% temp_ibc=(0)/(temp_vb-temp_vc);
% temp_ica=(42+21i)/(temp_vc-temp_va);
% temp_Sa=temp_va*(temp_iab-temp_ica);
% temp_Sb=temp_vb*(temp_ibc-temp_iab);
% temp_Sc=temp_vc*(temp_ica-temp_ibc);
% node(29).P=[real(temp_Sa),real(temp_Sb),real(temp_Sc)]/1000/S_base;
% node(29).Q=[imag(temp_Sa),imag(temp_Sb),imag(temp_Sc)]/1000/S_base;
node(29).P=[0,0,42]/1000/S_base;
node(29).Q=[0,0,21]/1000/S_base;
%%node30:710%%
node(30).phase=[1,1,1];
node(30).np=3;
node(30).g=0;
node(30).P=[0,0,0]/1000/S_base;
node(30).Q=[0,0,0]/1000/S_base;
%%node310:736%%
node(31).phase=[1,1,1];
node(31).np=3;
node(31).g=0;
% temp_va=1.0019*(cos(-0.02/180*pi)+1i*sin(-0.02/180*pi));
% temp_vb=0.9951*(cos(-120.75/180*pi)+1i*sin(-120.75/180*pi));
% temp_vc=0.9875*(cos(119.95/180*pi)+1i*sin(119.95/180*pi));
% temp_iab=(0)/(temp_va-temp_vb);
% temp_ibc=(42+21i)/(temp_vb-temp_vc);
% temp_ica=(0)/(temp_vc-temp_va);
% temp_Sa=temp_va*(temp_iab-temp_ica);
% temp_Sb=temp_vb*(temp_ibc-temp_iab);
% temp_Sc=temp_vc*(temp_ica-temp_ibc);
% node(31).P=[real(temp_Sa),real(temp_Sb),real(temp_Sc)]/1000/S_base;
% node(31).Q=[imag(temp_Sa),imag(temp_Sb),imag(temp_Sc)]/1000/S_base;
node(31).P=[0,42,0]/1000/S_base;
node(31).Q=[0,21,0]/1000/S_base;
%%node32:735%%
node(32).phase=[1,1,1];
node(32).np=3;
node(32).g=0;
% temp_va=1.0023*(cos(-0.02/180*pi)+1i*sin(-0.02/180*pi));
% temp_vb=0.9966*(cos(-120.75/180*pi)+1i*sin(-120.75/180*pi));
% temp_vc=0.9873*(cos(119.91/180*pi)+1i*sin(119.91/180*pi));
% temp_iab=(0)/(temp_va-temp_vb);
% temp_ibc=(0)/(temp_vb-temp_vc);
% temp_ica=(85+40i)/(temp_vc-temp_va);
% temp_Sa=temp_va*(temp_iab-temp_ica);
% temp_Sb=temp_vb*(temp_ibc-temp_iab);
% temp_Sc=temp_vc*(temp_ica-temp_ibc);
% node(32).P=[real(temp_Sa),real(temp_Sb),real(temp_Sc)]/1000/S_base;
% node(32).Q=[imag(temp_Sa),imag(temp_Sb),imag(temp_Sc)]/1000/S_base;
node(32).P=[0,0,85]/1000/S_base;
node(32).Q=[0,0,40]/1000/S_base;
%%node33:737%%
node(33).phase=[1,1,1];
node(33).np=3;
node(33).g=0;
% temp_va=0.9996*(cos(0.02/180*pi)+1i*sin(0.02/180*pi));
% temp_vb=0.9969*(cos(-120.71/180*pi)+1i*sin(-120.71/180*pi));
% temp_vc=0.9872*(cos(119.79/180*pi)+1i*sin(119.79/180*pi));
% temp_iab=(140+70i)/(temp_va-temp_vb);
% temp_ibc=(0)/(temp_vb-temp_vc);
% temp_ica=(0)/(temp_vc-temp_va);
% temp_Sa=temp_va*(temp_iab-temp_ica);
% temp_Sb=temp_vb*(temp_ibc-temp_iab);
% temp_Sc=temp_vc*(temp_ica-temp_ibc);
% node(33).P=[real(temp_Sa),real(temp_Sb),real(temp_Sc)]/1000/S_base;
% node(33).Q=[imag(temp_Sa),imag(temp_Sb),imag(temp_Sc)]/1000/S_base;
node(33).P=[140,0,0]/1000/S_base;
node(33).Q=[70,0,0]/1000/S_base;
%%node34:738%%
node(34).phase=[1,1,1];
node(34).np=3;
node(34).g=0;
% temp_va=0.9985*(cos(0.04/180*pi)+1i*sin(0.04/180*pi));
% temp_vb=0.9965*(cos(-120.71/180*pi)+1i*sin(-120.71/180*pi));
% temp_vc=0.9861*(cos(119.76/180*pi)+1i*sin(119.76/180*pi));
% temp_iab=(126+62i)/(temp_va-temp_vb);
% temp_ibc=(0)/(temp_vb-temp_vc);
% temp_ica=(0)/(temp_vc-temp_va);
% temp_Sa=temp_va*(temp_iab-temp_ica);
% temp_Sb=temp_vb*(temp_ibc-temp_iab);
% temp_Sc=temp_vc*(temp_ica-temp_ibc);
% node(34).P=[real(temp_Sa),real(temp_Sb),real(temp_Sc)]/1000/S_base;
% node(34).Q=[imag(temp_Sa),imag(temp_Sb),imag(temp_Sc)]/1000/S_base;
node(34).P=[126,0,0]/1000/S_base;
node(34).Q=[62,0,0]/1000/S_base;
%%node35:711%%
node(35).phase=[1,1,1];
node(35).np=3;
node(35).g=1;
node(35).P=[0,0,0]/1000/S_base;
node(35).Q=[0,0,0]/1000/S_base;
%%node36:740%%
node(36).phase=[1,1,1];
node(36).np=3;
node(36).g=0;
% temp_va=0.9981*(cos(0.07/180*pi)+1i*sin(0.07/180*pi));
% temp_vb=0.9961*(cos(-120.75/180*pi)+1i*sin(-120.75/180*pi));
% temp_vc=0.9847*(cos(119.76/180*pi)+1i*sin(119.76/180*pi));
% temp_iab=(0)/(temp_va-temp_vb);
% temp_ibc=(0)/(temp_vb-temp_vc);
% temp_ica=(85+40i)/(temp_vc-temp_va);
% temp_Sa=temp_va*(temp_iab-temp_ica);
% temp_Sb=temp_vb*(temp_ibc-temp_iab);
% temp_Sc=temp_vc*(temp_ica-temp_ibc);
% node(36).P=[real(temp_Sa),real(temp_Sb),real(temp_Sc)]/1000/S_base;
% node(36).Q=[imag(temp_Sa),imag(temp_Sb),imag(temp_Sc)]/1000/S_base;
node(36).P=[0,0,85]/1000/S_base;
node(36).Q=[0,0,40]/1000/S_base;
%%node37:741%%
node(37).phase=[1,1,1];
node(37).np=3;
node(37).g=0;
% temp_va=0.9981*(cos(0.07/180*pi)+1i*sin(0.07/180*pi));
% temp_vb=0.9962*(cos(-120.75/180*pi)+1i*sin(-120.75/180*pi));
% temp_vc=0.9849*(cos(119.76/180*pi)+1i*sin(119.76/180*pi));
% temp_iab=(0)/(temp_va-temp_vb);
% temp_ibc=(0)/(temp_vb-temp_vc);
% temp_ica=(42+21i)/(temp_vc-temp_va);
% temp_Sa=temp_va*(temp_iab-temp_ica);
% temp_Sb=temp_vb*(temp_ibc-temp_iab);
% temp_Sc=temp_vc*(temp_ica-temp_ibc);
% node(37).P=[real(temp_Sa),real(temp_Sb),real(temp_Sc)]/1000/S_base;
% node(37).Q=[imag(temp_Sa),imag(temp_Sb),imag(temp_Sc)]/1000/S_base;
node(37).P=[0,0,42]/1000/S_base;
node(37).Q=[0,0,21]/1000/S_base;
%%%%%%%%%%%
N_node=37;
N_PQ=36;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%Line data%%%%%%%

%%%%%%%%%%%line data%%%%%%%%%%%%%%%%%
Z_pmile_721=[0.2926+0.1973i,0.0673-0.0368i,0.0337-0.0417i;...
             0.0673-0.0368i,0.2646+0.1900i,0.0673-0.0368i;...
             0.0337-0.0417i,0.0673-0.0368i,0.2926+0.1973i];

Z_pmile_722=[0.4751+0.2973i,0.1629-0.0326i,0.1234-0.0607i;...
             0.1629-0.0326i,0.4488+0.2678i,0.1629-0.0326i;...
             0.1234-0.0607i,0.1629-0.0326i,0.4751+0.2973i];
                      
Z_pmile_723=[1.2936+0.6713i,0.4871+0.2111i,0.4585+0.1521i;...
             0.4871+0.2111i,1.3022+0.6326i,0.4871+0.2111i;...
             0.4585+0.1521i,0.4871+0.2111i,1.2936+0.6713i];

Z_pmile_724=[2.0952+0.7758i,0.5204+0.2738i,0.4926+0.2123i;...
             0.5204+0.2738i,2.1068+0.7398i,0.5204+0.2738i;...
             0.4926+0.2123i,0.5204+0.2738i,2.0952+0.7758i];
                      
B_pmile_721=[ 159.7919, 0,  0;...
              0,    159.7919,   0;...
              0,    0,  159.7919]/(10^6);
              
B_pmile_722=[ 127.8306, 0,  0;...
             0, 127.8306,   0;...
             0, 0,      127.8306]/(10^6);
              
B_pmile_723=[74.8405,      0,      0;...
                   0,74.8405,     0;...
                   0,      0,    74.8405]/(10^6);
               
B_pmile_724=[60.2483,      0,      0;...
                   0,60.2483,     0;...
                   0,      0,    60.2483]/(10^6);
%%%%%%% transformer data%%%%%%%%
Rtf1_percent=0.0009;% 1%
Xtf1_percent=0.0181;% 6%
N1=4.8/0.48; % tranformer ratio
 
Vtf1_base = 4.8; % 4.8KV LL
Stf1_Base = 0.5; % 500KVA

Rtf1 = Rtf1_percent * (Vtf1_base^2/Stf1_Base);
Xtf1 = Xtf1_percent * (Vtf1_base^2/Stf1_Base); 
Ztf1=diag([Rtf1+1i*Xtf1,Rtf1+1i*Xtf1,Rtf1+1i*Xtf1]);

%%%%%%%%%%%%%%line segment info%%%%%%%%%%%%%%%%%%%%%
LineSeg(1).Length= 960;
LineSeg(1).node1 = 2;
LineSeg(1).node2 = 3;
LineSeg(1).phase = [1,1,1];
LineSeg(1).np = 3;
LineSeg(1).Vbase = 4.8/sqrt(3);
LineSeg(1).Z_pu = Z_pmile_722*ft2mile(LineSeg(1).Length)...
                  *S_base/(LineSeg(1).Vbase^2);
LineSeg(1).Y_pu = inv(LineSeg(1).Z_pu);              
LineSeg(1).B_pu = B_pmile_722*ft2mile(LineSeg(1).Length)...
                  *S_base/(LineSeg(1).Vbase^2);
%%%%%%%%%%%%%%  
LineSeg(2).Length= 400;
LineSeg(2).node1 = 3;
LineSeg(2).node2 = 5;
LineSeg(2).phase = [1,1,1];
LineSeg(2).np = 3;
LineSeg(2).Vbase = 4.8/sqrt(3);
LineSeg(2).Z_pu = Z_pmile_724*ft2mile(LineSeg(2).Length)...
                  *S_base/(LineSeg(2).Vbase^2);
LineSeg(2).Y_pu = inv(LineSeg(2).Z_pu);              
LineSeg(2).B_pu = B_pmile_724*ft2mile(LineSeg(2).Length)...
                  *S_base/(LineSeg(2).Vbase^2);
%%%%%%%%%%%%%%  
LineSeg(3).Length= 360;
LineSeg(3).node1 = 3;
LineSeg(3).node2 = 7;
LineSeg(3).phase = [1,1,1];
LineSeg(3).np = 3;
LineSeg(3).Vbase = 4.8/sqrt(3);
LineSeg(3).Z_pu = Z_pmile_723*ft2mile(LineSeg(3).Length)...
                  *S_base/(LineSeg(3).Vbase^2);
LineSeg(3).Y_pu = inv(LineSeg(3).Z_pu);              
LineSeg(3).B_pu = B_pmile_723*ft2mile(LineSeg(3).Length)...
                  *S_base/(LineSeg(3).Vbase^2);
%%%%%%%%%%%%%% 
LineSeg(4).Length= 1320;
LineSeg(4).node1 = 3;
LineSeg(4).node2 = 17;
LineSeg(4).phase = [1,1,1];
LineSeg(4).np = 3;
LineSeg(4).Vbase = 4.8/sqrt(3);
LineSeg(4).Z_pu = Z_pmile_722*ft2mile(LineSeg(4).Length)...
                  *S_base/(LineSeg(4).Vbase^2);
LineSeg(4).Y_pu = inv(LineSeg(4).Z_pu);              
LineSeg(4).B_pu = B_pmile_722*ft2mile(LineSeg(4).Length)...
                  *S_base/(LineSeg(4).Vbase^2);
%%%%%%%%%%%%%% 
LineSeg(5).Length= 240;
LineSeg(5).node1 = 17;
LineSeg(5).node2 = 18;
LineSeg(5).phase = [1,1,1];
LineSeg(5).np = 3;
LineSeg(5).Vbase = 4.8/sqrt(3);
LineSeg(5).Z_pu = Z_pmile_724*ft2mile(LineSeg(5).Length)...
                  *S_base/(LineSeg(5).Vbase^2);
LineSeg(5).Y_pu = inv(LineSeg(5).Z_pu);              
LineSeg(5).B_pu = B_pmile_724*ft2mile(LineSeg(5).Length)...
                  *S_base/(LineSeg(5).Vbase^2);
%%%%%%%%%%%%%% 
LineSeg(6).Length= 600;
LineSeg(6).node1 = 17;
LineSeg(6).node2 = 22;
LineSeg(6).phase = [1,1,1];
LineSeg(6).np = 3;
LineSeg(6).Vbase = 4.8/sqrt(3);
LineSeg(6).Z_pu = Z_pmile_723*ft2mile(LineSeg(6).Length)...
                  *S_base/(LineSeg(6).Vbase^2);
LineSeg(6).Y_pu = inv(LineSeg(6).Z_pu);              
LineSeg(6).B_pu = B_pmile_723*ft2mile(LineSeg(6).Length)...
                  *S_base/(LineSeg(6).Vbase^2);              
%%%%%%%%%%%%%%  
LineSeg(7).Length= 80;
LineSeg(7).node1 = 8;
LineSeg(7).node2 = 13;
LineSeg(7).phase = [1,1,1];
LineSeg(7).np = 3;
LineSeg(7).Vbase = 4.8/sqrt(3);
LineSeg(7).Z_pu = Z_pmile_724*ft2mile(LineSeg(7).Length)...
                  *S_base/(LineSeg(7).Vbase^2);
LineSeg(7).Y_pu = inv(LineSeg(7).Z_pu);              
LineSeg(7).B_pu = B_pmile_724*ft2mile(LineSeg(7).Length)...
                  *S_base/(LineSeg(7).Vbase^2);              

%%%%%%%%%%%%%%  
LineSeg(8).Length= 800;
LineSeg(8).node1 = 8;
LineSeg(8).node2 = 9;
LineSeg(8).phase = [1,1,1];
LineSeg(8).np = 3;
LineSeg(8).Vbase = 4.8/sqrt(3);
LineSeg(8).Z_pu = Z_pmile_723*ft2mile(LineSeg(8).Length)...
                  *S_base/(LineSeg(8).Vbase^2);
LineSeg(8).Y_pu = inv(LineSeg(8).Z_pu);              
LineSeg(8).B_pu = B_pmile_723*ft2mile(LineSeg(8).Length)...
                  *S_base/(LineSeg(8).Vbase^2);   
%%%%%%%%%%%%%%  
LineSeg(9).Length= 320;
LineSeg(9).node1 = 5;
LineSeg(9).node2 = 4;
LineSeg(9).phase = [1,1,1];
LineSeg(9).np = 3;
LineSeg(9).Vbase = 4.8/sqrt(3);
LineSeg(9).Z_pu = Z_pmile_724*ft2mile(LineSeg(9).Length)...
                  *S_base/(LineSeg(9).Vbase^2);
LineSeg(9).Y_pu = inv(LineSeg(9).Z_pu);              
LineSeg(9).B_pu = B_pmile_724*ft2mile(LineSeg(9).Length)...
                  *S_base/(LineSeg(9).Vbase^2);  
%%%%%%%%%%%%%%  
LineSeg(10).Length= 240;
LineSeg(10).node1 = 5;
LineSeg(10).node2 = 6;
LineSeg(10).phase = [1,1,1];
LineSeg(10).np = 3;
LineSeg(10).Vbase = 4.8/sqrt(3);
LineSeg(10).Z_pu = Z_pmile_724*ft2mile(LineSeg(10).Length)...
                  *S_base/(LineSeg(10).Vbase^2);
LineSeg(10).Y_pu = inv(LineSeg(10).Z_pu);              
LineSeg(10).B_pu = B_pmile_724*ft2mile(LineSeg(10).Length)...
                  *S_base/(LineSeg(10).Vbase^2);  
%%%%%%%%%%%%%%  
LineSeg(11).Length= 280;
LineSeg(11).node1 = 15;
LineSeg(11).node2 = 16;
LineSeg(11).phase = [1,1,1];
LineSeg(11).np = 3;
LineSeg(11).Vbase = 4.8/sqrt(3);
LineSeg(11).Z_pu = Z_pmile_724*ft2mile(LineSeg(11).Length)...
                  *S_base/(LineSeg(11).Vbase^2);
LineSeg(11).Y_pu = inv(LineSeg(11).Z_pu);              
LineSeg(11).B_pu = B_pmile_724*ft2mile(LineSeg(11).Length)...
                  *S_base/(LineSeg(11).Vbase^2);  
%%%%%%%%%%%%%%  
LineSeg(12).Length= 760;
LineSeg(12).node1 = 10;
LineSeg(12).node2 = 11;
LineSeg(12).phase = [1,1,1];
LineSeg(12).np = 3;
LineSeg(12).Vbase = 4.8/sqrt(3);
LineSeg(12).Z_pu = Z_pmile_724*ft2mile(LineSeg(12).Length)...
                  *S_base/(LineSeg(12).Vbase^2);
LineSeg(12).Y_pu = inv(LineSeg(12).Z_pu);              
LineSeg(12).B_pu = B_pmile_724*ft2mile(LineSeg(12).Length)...
                  *S_base/(LineSeg(12).Vbase^2);   
%%%%%%%%%%%%%%  
LineSeg(13).Length= 120;
LineSeg(13).node1 = 10;
LineSeg(13).node2 = 12;
LineSeg(13).phase = [1,1,1];
LineSeg(13).np = 3;
LineSeg(13).Vbase = 4.8/sqrt(3);
LineSeg(13).Z_pu = Z_pmile_724*ft2mile(LineSeg(13).Length)...
                  *S_base/(LineSeg(13).Vbase^2);
LineSeg(13).Y_pu = inv(LineSeg(13).Z_pu);              
LineSeg(13).B_pu = B_pmile_724*ft2mile(LineSeg(13).Length)...
                  *S_base/(LineSeg(13).Vbase^2);   
%%%%%%%%%%%%%%  
LineSeg(14).Length= 320;
LineSeg(14).node1 = 26;
LineSeg(14).node2 = 28;
LineSeg(14).phase = [1,1,1];
LineSeg(14).np = 3;
LineSeg(14).Vbase = 4.8/sqrt(3);
LineSeg(14).Z_pu = Z_pmile_723*ft2mile(LineSeg(14).Length)...
                  *S_base/(LineSeg(14).Vbase^2);
LineSeg(14).Y_pu = inv(LineSeg(14).Z_pu);              
LineSeg(14).B_pu = B_pmile_723*ft2mile(LineSeg(14).Length)...
                  *S_base/(LineSeg(14).Vbase^2);
%%%%%%%%%%%%%%  
LineSeg(15).Length= 320;
LineSeg(15).node1 = 26;
LineSeg(15).node2 = 27;
LineSeg(15).phase = [1,1,1];
LineSeg(15).np = 3;
LineSeg(15).Vbase = 4.8/sqrt(3);
LineSeg(15).Z_pu = Z_pmile_724*ft2mile(LineSeg(15).Length)...
                  *S_base/(LineSeg(15).Vbase^2);
LineSeg(15).Y_pu = inv(LineSeg(15).Z_pu);              
LineSeg(15).B_pu = B_pmile_724*ft2mile(LineSeg(15).Length)...
                  *S_base/(LineSeg(15).Vbase^2); 
%%%%%%%%%%%%%%  
LineSeg(16).Length= 600;
LineSeg(16).node1 = 23;
LineSeg(16).node2 = 24;
LineSeg(16).phase = [1,1,1];
LineSeg(16).np = 3;
LineSeg(16).Vbase = 4.8/sqrt(3);
LineSeg(16).Z_pu = Z_pmile_723*ft2mile(LineSeg(16).Length)...
                  *S_base/(LineSeg(16).Vbase^2);
LineSeg(16).Y_pu = inv(LineSeg(16).Z_pu);              
LineSeg(16).B_pu = B_pmile_723*ft2mile(LineSeg(16).Length)...
                  *S_base/(LineSeg(16).Vbase^2); 
%%%%%%%%%%%%%%  
LineSeg(17).Length= 320;
LineSeg(17).node1 = 23;
LineSeg(17).node2 = 26;
LineSeg(17).phase = [1,1,1];
LineSeg(17).np = 3;
LineSeg(17).Vbase = 4.8/sqrt(3);
LineSeg(17).Z_pu = Z_pmile_723*ft2mile(LineSeg(17).Length)...
                  *S_base/(LineSeg(17).Vbase^2);
LineSeg(17).Y_pu = inv(LineSeg(17).Z_pu);              
LineSeg(17).B_pu = B_pmile_723*ft2mile(LineSeg(17).Length)...
                  *S_base/(LineSeg(17).Vbase^2);  
%%%%%%%%%%%%%%  
LineSeg(18).Length= 200;
LineSeg(18).node1 = 30;
LineSeg(18).node2 = 32;
LineSeg(18).phase = [1,1,1];
LineSeg(18).np = 3;
LineSeg(18).Vbase = 4.8/sqrt(3);
LineSeg(18).Z_pu = Z_pmile_724*ft2mile(LineSeg(18).Length)...
                  *S_base/(LineSeg(18).Vbase^2);
LineSeg(18).Y_pu = inv(LineSeg(18).Z_pu);              
LineSeg(18).B_pu = B_pmile_724*ft2mile(LineSeg(18).Length)...
                  *S_base/(LineSeg(18).Vbase^2);  
%%%%%%%%%%%%%%  
LineSeg(19).Length= 1280;
LineSeg(19).node1 = 30;
LineSeg(19).node2 = 31;
LineSeg(19).phase = [1,1,1];
LineSeg(19).np = 3;
LineSeg(19).Vbase = 4.8/sqrt(3);
LineSeg(19).Z_pu = Z_pmile_724*ft2mile(LineSeg(19).Length)...
                  *S_base/(LineSeg(19).Vbase^2);
LineSeg(19).Y_pu = inv(LineSeg(19).Z_pu);              
LineSeg(19).B_pu = B_pmile_724*ft2mile(LineSeg(19).Length)...
                  *S_base/(LineSeg(19).Vbase^2);
%%%%%%%%%%%%%%  
LineSeg(20).Length= 400;
LineSeg(20).node1 = 35;
LineSeg(20).node2 = 37;
LineSeg(20).phase = [1,1,1];
LineSeg(20).np = 3;
LineSeg(20).Vbase = 4.8/sqrt(3);
LineSeg(20).Z_pu = Z_pmile_723*ft2mile(LineSeg(20).Length)...
                  *S_base/(LineSeg(20).Vbase^2);
LineSeg(20).Y_pu = inv(LineSeg(20).Z_pu);              
LineSeg(20).B_pu = B_pmile_723*ft2mile(LineSeg(20).Length)...
                  *S_base/(LineSeg(20).Vbase^2); 
%%%%%%%%%%%%%%  
LineSeg(21).Length= 200;
LineSeg(21).node1 = 35;
LineSeg(21).node2 = 36;
LineSeg(21).phase = [1,1,1];
LineSeg(21).np = 3;
LineSeg(21).Vbase = 4.8/sqrt(3);
LineSeg(21).Z_pu = Z_pmile_724*ft2mile(LineSeg(21).Length)...
                  *S_base/(LineSeg(21).Vbase^2);
LineSeg(21).Y_pu = inv(LineSeg(21).Z_pu);              
LineSeg(21).B_pu = B_pmile_724*ft2mile(LineSeg(21).Length)...
                  *S_base/(LineSeg(21).Vbase^2);    
%%%%%%%%%%%%%%  
LineSeg(22).Length= 520;
LineSeg(22).node1 = 7;
LineSeg(22).node2 = 8;
LineSeg(22).phase = [1,1,1];
LineSeg(22).np = 3;
LineSeg(22).Vbase = 4.8/sqrt(3);
LineSeg(22).Z_pu = Z_pmile_723*ft2mile(LineSeg(22).Length)...
                  *S_base/(LineSeg(22).Vbase^2);
LineSeg(22).Y_pu = inv(LineSeg(21).Z_pu);              
LineSeg(22).B_pu = B_pmile_723*ft2mile(LineSeg(22).Length)...
                  *S_base/(LineSeg(22).Vbase^2);  
%%%%%%%%%%%%%%  
LineSeg(23).Length= 520;
LineSeg(23).node1 = 13;
LineSeg(23).node2 = 14;
LineSeg(23).phase = [1,1,1];
LineSeg(23).np = 3;
LineSeg(23).Vbase = 4.8/sqrt(3);
LineSeg(23).Z_pu = Z_pmile_724*ft2mile(LineSeg(23).Length)...
                  *S_base/(LineSeg(23).Vbase^2);
LineSeg(23).Y_pu = inv(LineSeg(23).Z_pu);              
LineSeg(23).B_pu = B_pmile_724*ft2mile(LineSeg(23).Length)...
                  *S_base/(LineSeg(23).Vbase^2);  
%%%%%%%%%%%%%%  
LineSeg(24).Length= 920;
LineSeg(24).node1 = 9;
LineSeg(24).node2 = 10;
LineSeg(24).phase = [1,1,1];
LineSeg(24).np = 3;
LineSeg(24).Vbase = 4.8/sqrt(3);
LineSeg(24).Z_pu = Z_pmile_724*ft2mile(LineSeg(24).Length)...
                  *S_base/(LineSeg(24).Vbase^2);
LineSeg(24).Y_pu = inv(LineSeg(24).Z_pu);              
LineSeg(24).B_pu = B_pmile_724*ft2mile(LineSeg(24).Length)...
                  *S_base/(LineSeg(24).Vbase^2);               
%%%%%%%%%%%%%%  
LineSeg(25).Length= 600;
LineSeg(25).node1 = 9;
LineSeg(25).node2 = 15;
LineSeg(25).phase = [1,1,1];
LineSeg(25).np = 3;
LineSeg(25).Vbase = 4.8/sqrt(3);
LineSeg(25).Z_pu = Z_pmile_723*ft2mile(LineSeg(25).Length)...
                  *S_base/(LineSeg(25).Vbase^2);
LineSeg(25).Y_pu = inv(LineSeg(25).Z_pu);              
LineSeg(25).B_pu = B_pmile_723*ft2mile(LineSeg(25).Length)...
                  *S_base/(LineSeg(25).Vbase^2); 
%%%%%%%%%%%%%%  
LineSeg(26).Length= 280;
LineSeg(26).node1 = 18;
LineSeg(26).node2 = 19;
LineSeg(26).phase = [1,1,1];
LineSeg(26).np = 3;
LineSeg(26).Vbase = 4.8/sqrt(3);
LineSeg(26).Z_pu = Z_pmile_723*ft2mile(LineSeg(26).Length)...
                  *S_base/(LineSeg(26).Vbase^2);
LineSeg(26).Y_pu = inv(LineSeg(26).Z_pu);              
LineSeg(26).B_pu = B_pmile_723*ft2mile(LineSeg(26).Length)...
                  *S_base/(LineSeg(26).Vbase^2);  
%%%%%%%%%%%%%%  
LineSeg(27).Length= 200;
LineSeg(27).node1 = 22;
LineSeg(27).node2 = 23;
LineSeg(27).phase = [1,1,1];
LineSeg(27).np = 3;
LineSeg(27).Vbase = 4.8/sqrt(3);
LineSeg(27).Z_pu = Z_pmile_723*ft2mile(LineSeg(27).Length)...
                  *S_base/(LineSeg(27).Vbase^2);
LineSeg(27).Y_pu = inv(LineSeg(27).Z_pu);              
LineSeg(27).B_pu = B_pmile_723*ft2mile(LineSeg(27).Length)...
                  *S_base/(LineSeg(27).Vbase^2);   
%%%%%%%%%%%%%%  
LineSeg(28).Length= 560;
LineSeg(28).node1 = 28;
LineSeg(28).node2 = 29;
LineSeg(28).phase = [1,1,1];
LineSeg(28).np = 3;
LineSeg(28).Vbase = 4.8/sqrt(3);
LineSeg(28).Z_pu = Z_pmile_723*ft2mile(LineSeg(28).Length)...
                  *S_base/(LineSeg(28).Vbase^2);
LineSeg(28).Y_pu = inv(LineSeg(28).Z_pu);              
LineSeg(28).B_pu = B_pmile_723*ft2mile(LineSeg(28).Length)...
                  *S_base/(LineSeg(28).Vbase^2);  
%%%%%%%%%%%%%%  
LineSeg(29).Length= 640;
LineSeg(29).node1 = 29;
LineSeg(29).node2 = 33;
LineSeg(29).phase = [1,1,1];
LineSeg(29).np = 3;
LineSeg(29).Vbase = 4.8/sqrt(3);
LineSeg(29).Z_pu = Z_pmile_723*ft2mile(LineSeg(29).Length)...
                  *S_base/(LineSeg(29).Vbase^2);
LineSeg(29).Y_pu = inv(LineSeg(29).Z_pu);              
LineSeg(29).B_pu = B_pmile_723*ft2mile(LineSeg(29).Length)...
                  *S_base/(LineSeg(29).Vbase^2);  
%%%%%%%%%%%%%%  
LineSeg(30).Length= 520;
LineSeg(30).node1 = 29;
LineSeg(30).node2 = 30;
LineSeg(30).phase = [1,1,1];
LineSeg(30).np = 3;
LineSeg(30).Vbase = 4.8/sqrt(3);
LineSeg(30).Z_pu = Z_pmile_724*ft2mile(LineSeg(30).Length)...
                  *S_base/(LineSeg(30).Vbase^2);
LineSeg(30).Y_pu = inv(LineSeg(30).Z_pu);              
LineSeg(30).B_pu = B_pmile_724*ft2mile(LineSeg(30).Length)...
                  *S_base/(LineSeg(30).Vbase^2);    
%%%%%%%%%%%%%%  
LineSeg(31).Length= 400;
LineSeg(31).node1 = 33;
LineSeg(31).node2 = 34;
LineSeg(31).phase = [1,1,1];
LineSeg(31).np = 3;
LineSeg(31).Vbase = 4.8/sqrt(3);
LineSeg(31).Z_pu = Z_pmile_723*ft2mile(LineSeg(31).Length)...
                  *S_base/(LineSeg(31).Vbase^2);
LineSeg(31).Y_pu = inv(LineSeg(31).Z_pu);              
LineSeg(31).B_pu = B_pmile_723*ft2mile(LineSeg(31).Length)...
                  *S_base/(LineSeg(31).Vbase^2); 
%%%%%%%%%%%%%%  
LineSeg(32).Length= 400;
LineSeg(32).node1 = 34;
LineSeg(32).node2 = 35;
LineSeg(32).phase = [1,1,1];
LineSeg(32).np = 3;
LineSeg(32).Vbase = 4.8/sqrt(3);
LineSeg(32).Z_pu = Z_pmile_723*ft2mile(LineSeg(32).Length)...
                  *S_base/(LineSeg(32).Vbase^2);
LineSeg(32).Y_pu = inv(LineSeg(32).Z_pu);              
LineSeg(32).B_pu = B_pmile_723*ft2mile(LineSeg(32).Length)...
                  *S_base/(LineSeg(32).Vbase^2);
%%%%%%%%%%%%%%  
LineSeg(33).Length= 200;
LineSeg(33).node1 = 19;
LineSeg(33).node2 = 20;
LineSeg(33).phase = [1,1,1];
LineSeg(33).np = 3;
LineSeg(33).Vbase = 4.8/sqrt(3);
LineSeg(33).Z_pu = Z_pmile_724*ft2mile(LineSeg(33).Length)...
                  *S_base/(LineSeg(33).Vbase^2);
LineSeg(33).Y_pu = inv(LineSeg(33).Z_pu);              
LineSeg(33).B_pu = B_pmile_724*ft2mile(LineSeg(33).Length)...
                  *S_base/(LineSeg(33).Vbase^2);
%%%%%%%%%%%%%%  
LineSeg(34).Length= 280;
LineSeg(34).node1 = 19;
LineSeg(34).node2 = 21;
LineSeg(34).phase = [1,1,1];
LineSeg(34).np = 3;
LineSeg(34).Vbase = 4.8/sqrt(3);
LineSeg(34).Z_pu = Z_pmile_724*ft2mile(LineSeg(34).Length)...
                  *S_base/(LineSeg(34).Vbase^2);
LineSeg(34).Y_pu = inv(LineSeg(34).Z_pu);              
LineSeg(34).B_pu = B_pmile_724*ft2mile(LineSeg(34).Length)...
                  *S_base/(LineSeg(34).Vbase^2);
%%%%%%%%%%%%%%  
LineSeg(35).Length= 280;
LineSeg(35).node1 = 23;
LineSeg(35).node2 = 25;
LineSeg(35).phase = [1,1,1];
LineSeg(35).np = 3;
LineSeg(35).Vbase = 4.8/sqrt(3);
LineSeg(35).Z_pu = Ztf1...
                  *S_base/(LineSeg(35).Vbase^2);
LineSeg(35).Y_pu = inv(LineSeg(35).Z_pu);              
LineSeg(35).B_pu = 0;   
%%%%%%%%%%%%%%  
LineSeg(36).Length= 1850;
LineSeg(36).node1 = 1;
LineSeg(36).node2 = 2;
LineSeg(36).phase = [1,1,1];
LineSeg(36).np = 3;
LineSeg(36).Vbase = 4.8/sqrt(3);
LineSeg(36).Z_pu = Z_pmile_721*ft2mile(LineSeg(36).Length)...
                  *S_base/(LineSeg(36).Vbase^2);
LineSeg(36).Y_pu = inv(LineSeg(36).Z_pu);              
LineSeg(36).B_pu = B_pmile_721*ft2mile(LineSeg(36).Length)...
                  *S_base/(LineSeg(36).Vbase^2);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
N_LineSeg = size(LineSeg,2);
%%%%%%%%%%%%%%adimittance matrix%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%Constraints%%%%%%%%%%%%%%%%%%%%%%%%%%
% S_ik_max=1;
% P_ik_max=1;
% Delta_V_ik_max=0.2;
% 
% P_k_p_min=0;
% P_k_p_max=0;
% Q_k_p_min=0;
% Q_k_p_max=0;

%%%%%%%%%%%%%%adimittance matrix%%%%%%%%%%%%%%%%%%%%%
Y=zeros(3*N_node,3*N_node);

for i=1:N_node
    for j=1:N_node
        if (j==i)
            Y_temp=0;
            for k=1:N_LineSeg
                if(LineSeg(k).node1==i)||(LineSeg(k).node2==i)
                    Y_temp=Y_temp+LineSeg(k).Y_pu + 0.5i*LineSeg(k).B_pu;
                end
            end
            Y(3*(i-1)+1:3*i,3*(j-1)+1:3*j)=Y_temp;%deal(Y_temp);
        else
            Y_temp=0;
            for k=1:N_LineSeg
                if((LineSeg(k).node1==i)&&(LineSeg(k).node2==j)) ||...
                  ((LineSeg(k).node2==i)&&(LineSeg(k).node1==j))     
                    Y_temp=Y_temp-LineSeg(k).Y_pu;
                end
            end
            Y(3*(i-1)+1:3*i,3*(j-1)+1:3*j)=Y_temp;%deal(Y_temp);
        end
    end
    
end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
N_of_phases=0;
index_count=0;
for i=1:N_node
    node(i).index=zeros(3,1);
    for j=1:3
        if node(i).phase(j)==1;
            index_count=index_count+1;
             node(i).index(j)=index_count;            
        end
    end
    N_of_phases=N_of_phases+node(i).np;
end

G_of_phases=0;
for i=1:N_node
    if node(i).g==1 
        if i==1
            G_of_phases=G_of_phases+3;
        else
            for j=1:3
                if node(i).P(j)>0
                G_of_phases=G_of_phases+1;
                end
            end
        end
    end
end

L_of_phases=0;
for i=1:N_LineSeg
    L_of_phases=L_of_phases+LineSeg(i).np;
end


%%%%%%%%%%eliminate nonexisting phases%%%%%%%%%%%
eli_count=0;
for i=1:N_node
    for j=1:3
    if node(i).phase(j)==0
        Y(3*(i-1)+j-eli_count,:)=[];
        Y(:,3*(i-1)+j-eli_count)=[];
        eli_count=eli_count+1;
    end
    end
end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%