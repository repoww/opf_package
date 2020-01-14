%% node data %%
%%%%%%%%%%%Slack Bus data%%%%%%%%%%%%%%%%%
S_base = 100;%5MVA 
%% node 1 (org node 800)%%
node(1).org=800;
node(1).phase=[1,1,1];
node(1).np=3;
node(1).g=1;
node(1).P=[0,0,0]/1000/S_base*0.5;
node(1).Q=[0,0,0]/1000/S_base*0.5;
%% node 2 (org node 802)%%
node(2).org=802;
node(2).phase=[1,1,1];
node(2).np=3;
node(2).g=0;
node(2).P=[0,0,0]/1000/S_base*0.5;
node(2).Q=[0,0,0]/1000/S_base*0.5;
%% node 3 (org node 806)%%
node(3).org=806;
node(3).phase=[1,1,1];
node(3).np=3;
node(3).g=0;
node(3).P=[0,30,25]/1000/S_base*0.5;
node(3).Q=[0,15,14]/1000/S_base*0.5;
%% node 4 (org node 808)%%
node(4).org=808;
node(4).phase=[1,1,1];
node(4).np=3;
node(4).g=0;
node(4).P=[0,0,0]/1000/S_base*0.5;
node(4).Q=[0,0,0]/1000/S_base*0.5;
%% node 5 (org node 810)%%
node(5).org=810;
node(5).phase=[0,1,0];
node(5).np=1;
node(5).g=0;
node(5).P=[0,16,0]/1000/S_base*0.5;
node(5).Q=[0,8,0]/1000/S_base*0.5;
%% node 6 (org node 812)%%
node(6).org=812;
node(6).phase=[1,1,1];
node(6).np=3;
node(6).g=0;
node(6).P=[0,0,0]/1000/S_base*0.5;
node(6).Q=[0,0,0]/1000/S_base*0.5;
%% node 7 (org node 814)%%
node(7).org=814;
node(7).phase=[1,1,1];
node(7).np=3;
node(7).g=1;
node(7).P=[0,0,0]/1000/S_base*0.5;
node(7).Q=[0,0,0]/1000/S_base*0.5;
%% node 8 (org node 816)%%
node(8).org=816;
node(8).phase=[1,1,1];
node(8).np=3;
node(8).g=0;
node(8).P=[0,0,0]/1000/S_base*0.5;
node(8).Q=[0,0,0]/1000/S_base*0.5;
%% node 9 (org node 818)%%
node(9).org=818;
node(9).phase=[1,0,0];
node(9).np=1;
node(9).g=0;
node(9).P=[0,0,0]/1000/S_base*0.5;
node(9).Q=[0,0,0]/1000/S_base*0.5;
%% node 10 (org node 820)%%
node(10).org=820;
node(10).phase=[1,0,0];
node(10).np=1;
node(10).g=0;
node(10).P=[34,0,0]/1000/S_base*0.5;
node(10).Q=[17,0,0]/1000/S_base*0.5;
%% node 11 (org node 822)%%
node(11).org=822;
node(11).phase=[1,0,0];
node(11).np=1;
node(11).g=0;
node(11).P=[135,0,0]/1000/S_base*0.5;
node(11).Q=[70,0,0]/1000/S_base*0.5;
%% node 12 (org node 824)%%
node(12).org=824;
node(12).phase=[1,1,1];
node(12).np=3;
node(12).g=0;
node(12).P=[0,5,0]/1000/S_base*0.5;
node(12).Q=[0,2,0]/1000/S_base*0.5;
%% node 13 (org node 826)%%
node(13).org=826;
node(13).phase=[0,1,0];
node(13).np=1;
node(13).g=0;
node(13).P=[0,40,0]/1000/S_base*0.5;
node(13).Q=[0,20,0]/1000/S_base*0.5;
%% node 14 (org node 828)%%
node(14).org=828;
node(14).phase=[1,1,1];
node(14).np=3;
node(14).g=0;
node(14).P=[0,0,4]/1000/S_base*0.5;
node(14).Q=[0,0,2]/1000/S_base*0.5;
%% node 15 (org node 830)%%
node(15).org=830;
node(15).phase=[1,1,1];
node(15).np=3;
node(15).g=0;
node(15).P=([10,10,25]+[7,0,0])/1000/S_base*0.5;
node(15).Q=([5,5,10]+[3,0,0])/1000/S_base*0.5;
%% node 16 (org node 854)%%
node(16).org=854;
node(16).phase=[1,1,1];
node(16).np=3;
node(16).g=0;
node(16).P=[0,0,0]/1000/S_base*0.5;
node(16).Q=[0,0,0]/1000/S_base*0.5;
%% node 17 (org node 856)%%
node(17).org=856;
node(17).phase=[0,1,0];
node(17).np=1;
node(17).g=0;
node(17).P=[0,4,0]/1000/S_base*0.5;
node(17).Q=[0,2,0]/1000/S_base*0.5;
%% node 18 (org node 832)%%
node(18).org=832;
node(18).phase=[1,1,1];
node(18).np=3;
node(18).g=0;
node(18).P=[0,0,0]/1000/S_base*0.5;
node(18).Q=[0,0,0]/1000/S_base*0.5;
%% node 19 (org node 888)%%
node(19).org=888;
node(19).phase=[1,1,1];
node(19).np=3;
node(19).g=0;
node(19).P=[0,0,0]/1000/S_base*0.5;
node(19).Q=[0,0,0]/1000/S_base*0.5;
%% node 20 (org node 890)%%
node(20).org=890;
node(20).phase=[1,1,1];
node(20).np=3;
node(20).g=1;
node(20).P=[150,150,150]/1000/S_base*0.5;
node(20).Q=[75,75,75]/1000/S_base*0.5;
%% node 21 (org node 858)%%
node(21).org=858;
node(21).phase=[1,1,1];
node(21).np=3;
node(21).g=0;
node(21).P=[7,2,6]/1000/S_base*0.5;
node(21).Q=[3,1,3]/1000/S_base*0.5;
%% node 22 (org node 864)%%
node(22).org=864;
node(22).phase=[1,0,0];
node(22).np=1;
node(22).g=0;
node(22).P=[2,0,0]/1000/S_base*0.5;
node(22).Q=[1,0,0]/1000/S_base*0.5;
%% node 23 (org node 834)%%
node(23).org=834;
node(23).phase=[1,1,1];
node(23).np=3;
node(23).g=0;
node(23).P=[4,15,13]/1000/S_base*0.5;
node(23).Q=[2,8,7]/1000/S_base*0.5;
%% node 24 (org node 842)%%
node(24).org=842;
node(24).phase=[1,1,1];
node(24).np=3;
node(24).g=0;
node(24).P=[0,0,0]/1000/S_base*0.5;
node(24).Q=[0,0,0]/1000/S_base*0.5;
%% node 25 (org node 844)%%
node(25).org=844;
node(25).phase=[1,1,1];
node(25).np=3;
node(25).g=0;
node(25).P=([135,135,135]+[9,0,0])/1000/S_base*0.5;
node(25).Q=([105-100,105-100,105-100]+[5,0,0])/1000/S_base*0.5;
%% node 26 (org node 846)%%
node(26).org=846;
node(26).phase=[1,1,1];
node(26).np=3;
node(26).g=0;
node(26).P=[0,25,20]/1000/S_base*0.5;
node(26).Q=[0,12,11]/1000/S_base*0.5;
%% node 27 (org node 848)%%
node(27).org=848;
node(27).phase=[1,1,1];
node(27).np=3;
node(27).g=0;
node(27).P=([20,20,20]+[0,23,0])/1000/S_base*0.5;
node(27).Q=([16,16,16]+[0,11,0])/1000/S_base*0.5;
%% node 28 (org node 860)%%
node(28).org=860;
node(28).phase=[1,1,1];
node(28).np=3;
node(28).g=0;
node(28).P=([20,20,20]+[16,20,110])/1000/S_base*0.5;
node(28).Q=([16,16,16]+[8,10,55])/1000/S_base*0.5;
%% node 29 (org node 836)%%
node(29).org=836;
node(29).phase=[1,1,1];
node(29).np=3;
node(29).g=1;
node(29).P=[30,10,42]/1000/S_base*0.5;
node(29).Q=[15,6,22]/1000/S_base*0.5;
%% node 30 (org node 840)%%
node(30).org=840;
node(30).phase=[1,1,1];
node(30).np=3;
node(30).g=0;
node(30).P=([9,9,9]+[18,22,0])/1000/S_base*0.5;
node(30).Q=([7,7,7]+[9,11,0])/1000/S_base*0.5;
%% node 31 (org node 862)%%
node(31).org=862;
node(31).phase=[1,1,1];
node(31).np=3;
node(31).g=0;
node(31).P=[0,0,0]/1000/S_base*0.5;
node(31).Q=[0,0,0]/1000/S_base*0.5;
%% node 32 (org node 838)%%
node(32).org=838;
node(32).phase=[0,1,0];
node(32).np=1;
node(32).g=0;
node(32).P=[0,28,0]/1000/S_base*0.5;
node(32).Q=[0,14,0]/1000/S_base*0.5;
%%%%
N_node = size(node,2);
%% line data %%
%% config 1 %%
config{1}.Z=[1.3368+1.3343i,0.2101+0.5779i,0.2130+0.5015i;...
             0.2101+0.5779i,1.3238+1.3569i,0.2066+0.4591i;...
             0.2130+0.5015i,0.2066+0.4591i,1.3294+1.3471i];
config{1}.B=[5.3350,-1.5313,-0.9943;...
             -1.5313,5.0979,-0.6212;...
             -0.9943,-0.6212,4.8880]/(10^6);         
%% config 2 %%
config{2}.Z=[1.9300+1.4115i,0.2327+0.6442i,0.2359+0.5691i;...
             0.2327+0.6442i,1.9157+1.4281i,0.2288+0.5238i;...
             0.2359+0.5691i,0.2288+0.5238i,1.9219+1.4209i];
config{2}.B=[5.1207,-1.4364,-0.9402;...
             -1.4364,4.9055,-0.5951;...
             -0.9402,-0.5951,4.7154]/(10^6); 
%% config 3 %%   
config{3}.Z=[2.7995+1.4855i,0,0;...
             0,0,0;...
             0,0,0];
config{3}.B=[4.2251,0,0;...
             0,0,0;...
             0,0,0]/(10^6); 
%% config 4 %%
config{4}.Z=[0,0,0;...
             0,2.7955+1.4855i,0;...
             0,0,0];
config{4}.B=[0,0,0;...
             0,4.2251,0;...
             0,0,0]/(10^6); 
%% config 5 %%
config{5}.Z=[0,0,0;...
             0,1.9217+1.4212i,0;...
             0,0,0];
config{5}.B=[0,0,0;...
             0,4.3637,0;...
             0,0,0]/(10^6);    
%% transformer data%%%%%%%%
Rtf1_percent=0.019;% 1%
Xtf1_percent=0.0408;% 6%
N1=115/4.16; % tranformer ratio
 
Vtf1_base = 4.16; % 115KV LL
Stf1_Base = 0.5; %500kVA

Rtf1 = Rtf1_percent * (Vtf1_base^2/Stf1_Base);
Xtf1 = Xtf1_percent * (Vtf1_base^2/Stf1_Base); 
Ztf1=diag([Rtf1+1i*Xtf1,Rtf1+1i*Xtf1,Rtf1+1i*Xtf1]);
%% line segment 1 %%
LineSeg(1).Length=2580;
LineSeg(1).node1=1;%% org node 800
LineSeg(1).node2=2;%% org node 802
LineSeg(1).type=1;
LineSeg(1).phase=[1,1,1];
LineSeg(1).np=3;
LineSeg(1).Vbase=24.9/sqrt(3);
LineSeg(1).Z_pu = config{1}.Z*ft2mile(LineSeg(1).Length)...
			 *S_base/(LineSeg(1).Vbase^2);
LineSeg(1).Y_pu = inv(LineSeg(1).Z_pu);
LineSeg(1).B_pu = config{1}.B*ft2mile(LineSeg(1).Length)...
			 *S_base/(LineSeg(1).Vbase^2);
%% line segment 2 %%
LineSeg(2).Length=1730;
LineSeg(2).node1=2;%% org node 802
LineSeg(2).node2=3;%% org node 806
LineSeg(2).type=1;
LineSeg(2).phase=[1,1,1];
LineSeg(2).np=3;
LineSeg(2).Vbase=24.9/sqrt(3);
LineSeg(2).Z_pu = config{1}.Z*ft2mile(LineSeg(2).Length)...
			 *S_base/(LineSeg(2).Vbase^2);
LineSeg(2).Y_pu = inv(LineSeg(2).Z_pu);
LineSeg(2).B_pu = config{1}.B*ft2mile(LineSeg(2).Length)...
			 *S_base/(LineSeg(2).Vbase^2);
%% line segment 3 %%
LineSeg(3).Length=32230;
LineSeg(3).node1=3;%% org node 806
LineSeg(3).node2=4;%% org node 808
LineSeg(3).type=1;
LineSeg(3).phase=[1,1,1];
LineSeg(3).np=3;
LineSeg(3).Vbase=24.9/sqrt(3);
LineSeg(3).Z_pu = config{1}.Z*ft2mile(LineSeg(3).Length)...
			 *S_base/(LineSeg(3).Vbase^2);
LineSeg(3).Y_pu = inv(LineSeg(3).Z_pu);
LineSeg(3).B_pu = config{1}.B*ft2mile(LineSeg(3).Length)...
			 *S_base/(LineSeg(3).Vbase^2);
%% line segment 4 %%
LineSeg(4).Length=5804;
LineSeg(4).node1=4;%% org node 808
LineSeg(4).node2=5;%% org node 810
LineSeg(4).type=1;
LineSeg(4).phase=[0,1,0];
LineSeg(4).np=1;
LineSeg(4).Vbase=24.9/sqrt(3);
LineSeg(4).Z_pu = config{4}.Z*ft2mile(LineSeg(4).Length)...
			 *S_base/(LineSeg(4).Vbase^2);
LineSeg(4).Y_pu = zeros(3,3);
LineSeg(4).Y_pu(2,2) = inv(LineSeg(4).Z_pu(2,2));
LineSeg(4).B_pu = config{4}.B*ft2mile(LineSeg(4).Length)...
			 *S_base/(LineSeg(4).Vbase^2);
%% line segment 5 %%
LineSeg(5).Length=37500;
LineSeg(5).node1=4;%% org node 808
LineSeg(5).node2=6;%% org node 812
LineSeg(5).type=1;
LineSeg(5).phase=[1,1,1];
LineSeg(5).np=3;
LineSeg(5).Vbase=24.9/sqrt(3);
LineSeg(5).Z_pu = config{1}.Z*ft2mile(LineSeg(5).Length)...
			 *S_base/(LineSeg(5).Vbase^2);
LineSeg(5).Y_pu = inv(LineSeg(5).Z_pu);
LineSeg(5).B_pu = config{1}.B*ft2mile(LineSeg(5).Length)...
			 *S_base/(LineSeg(5).Vbase^2);
%% line segment 6 %%
LineSeg(6).Length=29730;
LineSeg(6).node1=6;%% org node 812
LineSeg(6).node2=7;%% org node 814
LineSeg(6).type=1;
LineSeg(6).phase=[1,1,1];
LineSeg(6).np=3;
LineSeg(6).Vbase=24.9/sqrt(3);
LineSeg(6).Z_pu = config{1}.Z*ft2mile(LineSeg(6).Length)...
			 *S_base/(LineSeg(6).Vbase^2);
LineSeg(6).Y_pu = inv(LineSeg(6).Z_pu);
LineSeg(6).B_pu = config{1}.B*ft2mile(LineSeg(6).Length)...
			 *S_base/(LineSeg(6).Vbase^2);
%% line segment 7 %%
LineSeg(7).Length=1710;
LineSeg(7).node1=8;%% org node 816
LineSeg(7).node2=9;%% org node 818
LineSeg(7).type=1;
LineSeg(7).phase=[1,0,0];
LineSeg(7).np=1;
LineSeg(7).Vbase=24.9/sqrt(3);
LineSeg(7).Z_pu = config{3}.Z*ft2mile(LineSeg(7).Length)...
			 *S_base/(LineSeg(7).Vbase^2);
LineSeg(7).Y_pu = zeros(3,3);
LineSeg(7).Y_pu(1,1) = inv(LineSeg(7).Z_pu(1,1));
LineSeg(7).B_pu = config{3}.B*ft2mile(LineSeg(7).Length)...
			 *S_base/(LineSeg(7).Vbase^2);
%% line segment 8 %%
LineSeg(8).Length=10210;
LineSeg(8).node1=8;%% org node 816
LineSeg(8).node2=12;%% org node 824
LineSeg(8).type=1;
LineSeg(8).phase=[1,1,1];
LineSeg(8).np=3;
LineSeg(8).Vbase=24.9/sqrt(3);
LineSeg(8).Z_pu = config{2}.Z*ft2mile(LineSeg(8).Length)...
			 *S_base/(LineSeg(8).Vbase^2);
LineSeg(8).Y_pu = inv(LineSeg(8).Z_pu);
LineSeg(8).B_pu = config{2}.B*ft2mile(LineSeg(8).Length)...
			 *S_base/(LineSeg(8).Vbase^2);
%% line segment 9 %%
LineSeg(9).Length=48150;
LineSeg(9).node1=9;%% org node 818
LineSeg(9).node2=10;%% org node 820
LineSeg(9).type=1;
LineSeg(9).phase=[1,0,0];
LineSeg(9).np=1;
LineSeg(9).Vbase=24.9/sqrt(3);
LineSeg(9).Z_pu = config{3}.Z*ft2mile(LineSeg(9).Length)...
			 *S_base/(LineSeg(9).Vbase^2);
LineSeg(9).Y_pu = zeros(3,3);
LineSeg(9).Y_pu(1,1) = inv(LineSeg(9).Z_pu(1,1));
LineSeg(9).B_pu = config{3}.B*ft2mile(LineSeg(9).Length)...
			 *S_base/(LineSeg(9).Vbase^2);
%% line segment 10 %%
LineSeg(10).Length=13740;
LineSeg(10).node1=10;%% org node 820
LineSeg(10).node2=11;%% org node 822
LineSeg(10).type=1;
LineSeg(10).phase=[1,0,0];
LineSeg(10).np=1;
LineSeg(10).Vbase=24.9/sqrt(3);
LineSeg(10).Z_pu = config{3}.Z*ft2mile(LineSeg(10).Length)...
			 *S_base/(LineSeg(10).Vbase^2);
LineSeg(10).Y_pu = zeros(3,3);
LineSeg(10).Y_pu(1,1) = inv(LineSeg(10).Z_pu(1,1));
LineSeg(10).B_pu = config{3}.B*ft2mile(LineSeg(10).Length)...
			 *S_base/(LineSeg(10).Vbase^2);
%% line segment 11 %%
LineSeg(11).Length=3030;
LineSeg(11).node1=12;%% org node 824
LineSeg(11).node2=13;%% org node 826
LineSeg(11).type=1;
LineSeg(11).phase=[0,1,0];
LineSeg(11).np=1;
LineSeg(11).Vbase=24.9/sqrt(3);
LineSeg(11).Z_pu = config{4}.Z*ft2mile(LineSeg(11).Length)...
			 *S_base/(LineSeg(11).Vbase^2);
LineSeg(11).Y_pu = zeros(3,3);
LineSeg(11).Y_pu(2,2) = inv(LineSeg(11).Z_pu(2,2));
LineSeg(11).B_pu = config{4}.B*ft2mile(LineSeg(11).Length)...
			 *S_base/(LineSeg(11).Vbase^2);
%% line segment 12 %%
LineSeg(12).Length=840;
LineSeg(12).node1=12;%% org node 824
LineSeg(12).node2=14;%% org node 828
LineSeg(12).type=1;
LineSeg(12).phase=[1,1,1];
LineSeg(12).np=3;
LineSeg(12).Vbase=24.9/sqrt(3);
LineSeg(12).Z_pu = config{2}.Z*ft2mile(LineSeg(12).Length)...
			 *S_base/(LineSeg(12).Vbase^2);
LineSeg(12).Y_pu = inv(LineSeg(12).Z_pu);
LineSeg(12).B_pu = config{2}.B*ft2mile(LineSeg(12).Length)...
			 *S_base/(LineSeg(12).Vbase^2);
%% line segment 13 %%
LineSeg(13).Length=20440;
LineSeg(13).node1=14;%% org node 828
LineSeg(13).node2=15;%% org node 830
LineSeg(13).type=1;
LineSeg(13).phase=[1,1,1];
LineSeg(13).np=3;
LineSeg(13).Vbase=24.9/sqrt(3);
LineSeg(13).Z_pu = config{2}.Z*ft2mile(LineSeg(13).Length)...
			 *S_base/(LineSeg(13).Vbase^2);
LineSeg(13).Y_pu = inv(LineSeg(13).Z_pu);
LineSeg(13).B_pu = config{2}.B*ft2mile(LineSeg(13).Length)...
			 *S_base/(LineSeg(13).Vbase^2);
%% line segment 14 %%
LineSeg(14).Length=520;
LineSeg(14).node1=15;%% org node 830
LineSeg(14).node2=16;%% org node 854
LineSeg(14).type=1;
LineSeg(14).phase=[1,1,1];
LineSeg(14).np=3;
LineSeg(14).Vbase=24.9/sqrt(3);
LineSeg(14).Z_pu = config{2}.Z*ft2mile(LineSeg(14).Length)...
			 *S_base/(LineSeg(14).Vbase^2);
LineSeg(14).Y_pu = inv(LineSeg(14).Z_pu);
LineSeg(14).B_pu = config{2}.B*ft2mile(LineSeg(14).Length)...
			 *S_base/(LineSeg(14).Vbase^2);
%% line segment 15 %%
LineSeg(15).Length=4900;
LineSeg(15).node1=18;%% org node 832
LineSeg(15).node2=21;%% org node 858
LineSeg(15).type=1;
LineSeg(15).phase=[1,1,1];
LineSeg(15).np=3;
LineSeg(15).Vbase=24.9/sqrt(3);
LineSeg(15).Z_pu = config{2}.Z*ft2mile(LineSeg(15).Length)...
			 *S_base/(LineSeg(15).Vbase^2);
LineSeg(15).Y_pu = inv(LineSeg(15).Z_pu);
LineSeg(15).B_pu = config{2}.B*ft2mile(LineSeg(15).Length)...
			 *S_base/(LineSeg(15).Vbase^2);
%% line segment 16 %%
LineSeg(16).Length=0;
LineSeg(16).node1=18;%% org node 832
LineSeg(16).node2=19;%% org node 888
LineSeg(16).type=2;
LineSeg(16).phase=[1,1,1];
LineSeg(16).np=3;
LineSeg(16).Vbase=24.9/sqrt(3);
LineSeg(16).Z_pu = Ztf1...
			 *S_base/(LineSeg(16).Vbase^2);
LineSeg(16).Y_pu = inv(LineSeg(16).Z_pu);
LineSeg(16).B_pu = 0;
%% line segment 17 %%
LineSeg(17).Length=2020;
LineSeg(17).node1=23;%% org node 834
LineSeg(17).node2=28;%% org node 860
LineSeg(17).type=1;
LineSeg(17).phase=[1,1,1];
LineSeg(17).np=3;
LineSeg(17).Vbase=24.9/sqrt(3);
LineSeg(17).Z_pu = config{2}.Z*ft2mile(LineSeg(17).Length)...
			 *S_base/(LineSeg(17).Vbase^2);
LineSeg(17).Y_pu = inv(LineSeg(17).Z_pu);
LineSeg(17).B_pu = config{2}.B*ft2mile(LineSeg(17).Length)...
			 *S_base/(LineSeg(17).Vbase^2);
%% line segment 18 %%
LineSeg(18).Length=280;
LineSeg(18).node1=23;%% org node 834
LineSeg(18).node2=24;%% org node 842
LineSeg(18).type=1;
LineSeg(18).phase=[1,1,1];
LineSeg(18).np=3;
LineSeg(18).Vbase=24.9/sqrt(3);
LineSeg(18).Z_pu = config{2}.Z*ft2mile(LineSeg(18).Length)...
			 *S_base/(LineSeg(18).Vbase^2);
LineSeg(18).Y_pu = inv(LineSeg(18).Z_pu);
LineSeg(18).B_pu = config{2}.B*ft2mile(LineSeg(18).Length)...
			 *S_base/(LineSeg(18).Vbase^2);
%% line segment 19 %%
LineSeg(19).Length=860;
LineSeg(19).node1=29;%% org node 836
LineSeg(19).node2=30;%% org node 840
LineSeg(19).type=1;
LineSeg(19).phase=[1,1,1];
LineSeg(19).np=3;
LineSeg(19).Vbase=24.9/sqrt(3);
LineSeg(19).Z_pu = config{2}.Z*ft2mile(LineSeg(19).Length)...
			 *S_base/(LineSeg(19).Vbase^2);
LineSeg(19).Y_pu = inv(LineSeg(19).Z_pu);
LineSeg(19).B_pu = config{2}.B*ft2mile(LineSeg(19).Length)...
			 *S_base/(LineSeg(19).Vbase^2);
%% line segment 20 %%
LineSeg(20).Length=280;
LineSeg(20).node1=29;%% org node 836
LineSeg(20).node2=31;%% org node 862
LineSeg(20).type=1;
LineSeg(20).phase=[1,1,1];
LineSeg(20).np=3;
LineSeg(20).Vbase=24.9/sqrt(3);
LineSeg(20).Z_pu = config{2}.Z*ft2mile(LineSeg(20).Length)...
			 *S_base/(LineSeg(20).Vbase^2);
LineSeg(20).Y_pu = inv(LineSeg(20).Z_pu);
LineSeg(20).B_pu = config{2}.B*ft2mile(LineSeg(20).Length)...
			 *S_base/(LineSeg(20).Vbase^2);
%% line segment 21 %%
LineSeg(21).Length=1350;
LineSeg(21).node1=24;%% org node 842
LineSeg(21).node2=25;%% org node 844
LineSeg(21).type=1;
LineSeg(21).phase=[1,1,1];
LineSeg(21).np=3;
LineSeg(21).Vbase=24.9/sqrt(3);
LineSeg(21).Z_pu = config{2}.Z*ft2mile(LineSeg(21).Length)...
			 *S_base/(LineSeg(21).Vbase^2);
LineSeg(21).Y_pu = inv(LineSeg(21).Z_pu);
LineSeg(21).B_pu = config{2}.B*ft2mile(LineSeg(21).Length)...
			 *S_base/(LineSeg(21).Vbase^2);
%% line segment 22 %%
LineSeg(22).Length=3640;
LineSeg(22).node1=25;%% org node 844
LineSeg(22).node2=26;%% org node 846
LineSeg(22).type=1;
LineSeg(22).phase=[1,1,1];
LineSeg(22).np=3;
LineSeg(22).Vbase=24.9/sqrt(3);
LineSeg(22).Z_pu = config{2}.Z*ft2mile(LineSeg(22).Length)...
			 *S_base/(LineSeg(22).Vbase^2);
LineSeg(22).Y_pu = inv(LineSeg(22).Z_pu);
LineSeg(22).B_pu = config{2}.B*ft2mile(LineSeg(22).Length)...
			 *S_base/(LineSeg(22).Vbase^2);
%% line segment 23 %%
LineSeg(23).Length=530;
LineSeg(23).node1=26;%% org node 846
LineSeg(23).node2=27;%% org node 848
LineSeg(23).type=1;
LineSeg(23).phase=[1,1,1];
LineSeg(23).np=3;
LineSeg(23).Vbase=24.9/sqrt(3);
LineSeg(23).Z_pu = config{2}.Z*ft2mile(LineSeg(23).Length)...
			 *S_base/(LineSeg(23).Vbase^2);
LineSeg(23).Y_pu = inv(LineSeg(23).Z_pu);
LineSeg(23).B_pu = config{2}.B*ft2mile(LineSeg(23).Length)...
			 *S_base/(LineSeg(23).Vbase^2);
%% line segment 24 %%
LineSeg(24).Length=320;
LineSeg(24).node1=7;%% org node 814
LineSeg(24).node2=8;%% org node 816
LineSeg(24).type=1;
LineSeg(24).phase=[1,1,1];
LineSeg(24).np=3;
LineSeg(24).Vbase=24.9/sqrt(3);
LineSeg(24).Z_pu = config{2}.Z*ft2mile(LineSeg(24).Length)...
			 *S_base/(LineSeg(24).Vbase^2);
LineSeg(24).Y_pu = inv(LineSeg(24).Z_pu);
LineSeg(24).B_pu = config{2}.B*ft2mile(LineSeg(24).Length)...
			 *S_base/(LineSeg(24).Vbase^2);
%% line segment 25 %%
LineSeg(25).Length=23330;
LineSeg(25).node1=16;%% org node 854
LineSeg(25).node2=17;%% org node 856
LineSeg(25).type=1;
LineSeg(25).phase=[0,1,0];
LineSeg(25).np=1;
LineSeg(25).Vbase=24.9/sqrt(3);
LineSeg(25).Z_pu = config{4}.Z*ft2mile(LineSeg(25).Length)...
			 *S_base/(LineSeg(25).Vbase^2);
LineSeg(25).Y_pu = zeros(3,3);
LineSeg(25).Y_pu(2,2) = inv(LineSeg(25).Z_pu(2,2));
LineSeg(25).B_pu = config{4}.B*ft2mile(LineSeg(25).Length)...
			 *S_base/(LineSeg(25).Vbase^2);
%% line segment 26 %%
LineSeg(26).Length=36840;
LineSeg(26).node1=16;%% org node 854
LineSeg(26).node2=18;%% org node 832
LineSeg(26).type=1;
LineSeg(26).phase=[1,1,1];
LineSeg(26).np=3;
LineSeg(26).Vbase=24.9/sqrt(3);
LineSeg(26).Z_pu = config{2}.Z*ft2mile(LineSeg(26).Length)...
			 *S_base/(LineSeg(26).Vbase^2);
LineSeg(26).Y_pu = inv(LineSeg(26).Z_pu);
LineSeg(26).B_pu = config{2}.B*ft2mile(LineSeg(26).Length)...
			 *S_base/(LineSeg(26).Vbase^2);
%% line segment 27 %%
LineSeg(27).Length=1620;
LineSeg(27).node1=21;%% org node 858
LineSeg(27).node2=22;%% org node 864
LineSeg(27).type=1;
LineSeg(27).phase=[1,0,0];
LineSeg(27).np=1;
LineSeg(27).Vbase=24.9/sqrt(3);
LineSeg(27).Z_pu = config{3}.Z*ft2mile(LineSeg(27).Length)...
			 *S_base/(LineSeg(27).Vbase^2);
LineSeg(27).Y_pu = zeros(3,3);
LineSeg(27).Y_pu(1,1) = inv(LineSeg(27).Z_pu(1,1));
LineSeg(27).B_pu = config{3}.B*ft2mile(LineSeg(27).Length)...
			 *S_base/(LineSeg(27).Vbase^2);
%% line segment 28 %%
LineSeg(28).Length=5830;
LineSeg(28).node1=21;%% org node 858
LineSeg(28).node2=23;%% org node 834
LineSeg(28).type=1;
LineSeg(28).phase=[1,1,1];
LineSeg(28).np=3;
LineSeg(28).Vbase=24.9/sqrt(3);
LineSeg(28).Z_pu = config{2}.Z*ft2mile(LineSeg(28).Length)...
			 *S_base/(LineSeg(28).Vbase^2);
LineSeg(28).Y_pu = inv(LineSeg(28).Z_pu);
LineSeg(28).B_pu = config{2}.B*ft2mile(LineSeg(28).Length)...
			 *S_base/(LineSeg(28).Vbase^2);
%% line segment 29 %%
LineSeg(29).Length=2680;
LineSeg(29).node1=28;%% org node 860
LineSeg(29).node2=29;%% org node 836
LineSeg(29).type=1;
LineSeg(29).phase=[1,1,1];
LineSeg(29).np=3;
LineSeg(29).Vbase=24.9/sqrt(3);
LineSeg(29).Z_pu = config{2}.Z*ft2mile(LineSeg(29).Length)...
			 *S_base/(LineSeg(29).Vbase^2);
LineSeg(29).Y_pu = inv(LineSeg(29).Z_pu);
LineSeg(29).B_pu = config{2}.B*ft2mile(LineSeg(29).Length)...
			 *S_base/(LineSeg(29).Vbase^2);
%% line segment 30 %%
LineSeg(30).Length=4860;
LineSeg(30).node1=31;%% org node 862
LineSeg(30).node2=32;%% org node 838
LineSeg(30).type=1;
LineSeg(30).phase=[0,1,0];
LineSeg(30).np=1;
LineSeg(30).Vbase=24.9/sqrt(3);
LineSeg(30).Z_pu = config{5}.Z*ft2mile(LineSeg(30).Length)...
			 *S_base/(LineSeg(30).Vbase^2);
LineSeg(30).Y_pu = zeros(3,3);
LineSeg(30).Y_pu(2,2) = inv(LineSeg(30).Z_pu(2,2));
LineSeg(30).B_pu = config{5}.B*ft2mile(LineSeg(30).Length)...
			 *S_base/(LineSeg(30).Vbase^2);
%% line segment 31 %%
LineSeg(31).Length=10560;
LineSeg(31).node1=19;%% org node 888
LineSeg(31).node2=20;%% org node 890
LineSeg(31).type=1;
LineSeg(31).phase=[1,1,1];
LineSeg(31).np=3;
LineSeg(31).Vbase=4.16/sqrt(3);
LineSeg(31).Z_pu = config{1}.Z*ft2mile(LineSeg(31).Length)...
			 *S_base/(LineSeg(31).Vbase^2);
LineSeg(31).Y_pu = inv(LineSeg(31).Z_pu);
LineSeg(31).B_pu = config{1}.B*ft2mile(LineSeg(31).Length)...
			 *S_base/(LineSeg(31).Vbase^2);
%%%%%
N_LineSeg = size(LineSeg,2);  
%% %%%%%%%%%%%%adimittance matrix%%%%%%%%%%%%%%%%%%%%%
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
    
    if node(i).np==3
        for j=1:3
           index_count=index_count+1;
           node(i).index(j)=index_count;
        end
    end
    
    if node(i).np==2
    for j=1:3
            if node(i).phase(j)==1
                index_count=index_count+1;
                node(i).index(j)=index_count;  
            else
                if j==1
                index_count=index_count+1;    
                node(i).index(j)=index_count;
                index_count=index_count-1; 
                else
                node(i).index(j)=index_count;    
                end
            end
    end
    end
    
    
    if node(i).np==1
    index_count=index_count+1;
    node(i).index=ones(3,1)*index_count;
    end
    
    N_of_phases=N_of_phases+node(i).np;
end

G_of_phases=0;
for i=1:N_node
    if node(i).g==1
    G_of_phases=G_of_phases+node(i).np;
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