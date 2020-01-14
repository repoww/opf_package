%BUS DATA
%%%%%%%%%%%Slack Bus data%%%%%%%%%%%%%%%%%
N_Slack=1;
V_base=115/sqrt(3); %115KV LL change to Phase
S_base = 5;%5MVA 
Z_base = V_base^2/S_base;
node(1).phase=[1,1,1];
node(1).np=3;
node(1).g=1;
node(1).P=[0,0,0];
node(1).Q=[0,0,0];
V1_regular=[1,0;cos(-pi*2/3),sin(-pi*2/3);cos(-pi*4/3),sin(-pi*4/3)];
V1=[1.0625,0;1.05*cos(-pi*2/3),1.05*sin(-pi*2/3);1.0687*cos(-pi*4/3),1.0687*sin(-pi*4/3)];
V1_real=[1.0625;1.05*cos(-pi*2/3);1.0687*cos(-pi*4/3)];
V1_imag=[0;1.05*sin(-pi*2/3);1.0687*sin(-pi*4/3)];
% V1=[1.0625,0;1.05*cos(-pi*2/3),1.05*sin(-pi*2/3);1.0687*cos(-pi*4/3),1.0687*sin(-pi*4/3)];
%%%%%%%%%%%PQ bus Data%%%%%%%%%%%%%%%%%
N_PQ=12;
P=zeros(3*N_PQ,1);
Q=zeros(3*N_PQ,1);
%%node2%%
node(2).phase=[0,1,1];
node(2).np=2;
node(2).g=0;
tempS_b=230+132i;%(230+132i)/(1-cos(-2/3*pi)-1i*sin(-2/3*pi));
tempS_c=0;%(230+132i)/(1-cos(-2/3*pi)-1i*sin(-2/3*pi))*(-cos(-2/3*pi)-1i*sin(-2/3*pi));
node(2).P=[0,real(tempS_b),real(tempS_c)]/1000/S_base;
%node(2).Q=[0,imag(tempS_b),imag(tempS_c)]/1000/S_base;
node(2).Q=[0,imag(tempS_b),imag(tempS_c)]/1000/S_base;
%%node3%%
node(3).phase=[0,1,1];
node(3).np=2;
node(3).g=0;
node(3).P=[0,170,0]/1000/S_base;
node(3).Q=[0,125,0]/1000/S_base;
%%node4%%
node(4).phase=[1,1,1];
node(4).np=3;
node(4).g=0;
node(4).P=[0,0,0];
node(4).Q=[0,0,0];
%%node5%%
node(5).phase=[1,1,1];
node(5).np=3;
node(5).g=0;
node(5).P=[0,0,0];
node(5).Q=[0,0,0];
%%node6%%
node(6).phase=[1,1,1];
node(6).np=3;
node(6).g=1;
node(6).P=[160,120,120]/1000/S_base;
node(6).Q=[110,90,90]/1000/S_base;
%%node7%%
node(7).phase=[1,1,1];
node(7).np=3;
node(7).g=0;
node(7).P=[2/3*17,2/3*66,2/3*117]/1000/S_base;
node(7).Q=[2/3*10,2/3*38,2/3*68]/1000/S_base;
%%node8%%
node(8).phase=[0,0,1];
node(8).np=1;
node(8).g=0;
node(8).P=[0,0,170]/1000/S_base;
node(8).Q=[0,0,(80-100)]/1000/S_base;
%%node9%%
node(9).phase=[1,0,1];
node(9).np=2;
node(9).g=0;
node(9).P=[0,0,0];
node(9).Q=[0,0,0];
%%node10%%
node(10).phase=[1,1,1];
node(10).np=3;
node(10).g=1;

tempS_a=0;%(170+151i)/(1-cos(-4/3*pi)-1i*sin(-4/3*pi));
tempS_c=170+150i;%(170+151i)/(1-cos(-4/3*pi)-1i*sin(-4/3*pi))*(-cos(-4/3*pi)-1i*sin(-4/3*pi));

node(10).P=[1/3*17+385+real(tempS_a),1/3*66+385,1/3*117+385+real(tempS_c)]/1000/S_base;
node(10).Q=[1/3*10+220+imag(tempS_a),1/3*38+220,1/3*68+220+imag(tempS_c)]/1000/S_base;
%%node11%%
node(11).phase=[1,1,1];
node(11).np=3;
node(11).g=1;
node(11).P=[485,68,290]/1000/S_base;
node(11).Q=[190-200,60-200,212-200]/1000/S_base;
%%node12%%
node(12).phase=[1,0,0];
node(12).np=1;
node(12).g=0;
node(12).P=[128,0,0]/1000/S_base;
node(12).Q=[86,0,0]/1000/S_base;
%%node13%%
node(13).phase=[1,1,1];
node(13).np=3;
node(13).g=0;
node(13).P=[0,0,0];
node(13).Q=[0,0,0];
%%%%%%%%%%%
N_node=13;
%%%%%%%Line Data%%%%%%%%%%%%%
%%%%%%%%%%%line data%%%%%%%%%%%%%%%%%
Z_pmile_601=[0.3465+1.0179i,0.1560+0.5017i,0.1580+0.4236i;...
             0.1560+0.5017i,0.3375+1.0478i,0.1525+0.3849i;...
             0.1580+0.4236i,0.1525+0.3849i,0.3414+1.0348i];

Z_pmile_602=[0.7526+1.1814i,0.1580+0.4236i,0.1560+0.5017i;...
             0.1580+0.4236i,0.7475+1.1983i,0.1535+0.3849i;...
             0.1560+0.5017i,0.1535+0.3849i,0.7436+1.2112i];
                      
Z_pmile_603=[             0,             0,              0;...
                          0,1.3294+1.3471i,0.2066+0.4591i;...
                          0,0.2066+0.4591i,1.3238+1.3569i];

Z_pmile_604=[1.3238+1.3569i,             0,0.2066+0.4591i;...
                          0,             0,             0;...
             0.2066+0.4591i,             0,1.3294+1.3471i];
                      
Z_pmile_605=[             0,             0,             0;...
                          0,             0,             0;...
                          0,             0,1.3292+1.3475i];
                      
Z_pmile_606=[0.7982+0.4463i,0.3192+0.0328i,0.2849-0.0143i;...
             0.3192+0.0328i,0.7891+0.4041i,0.3192+0.0328i;...
             0.2849-0.0143i,0.3192+0.0328i,0.7982+0.4463i];

Z_pmile_607=[1.3425+0.5124i,            0,              0;...
                          0,            0,              0;...
                          0,            0,              0];
                      
                      
B_pmile_601=[ 6.2998,-1.9958,-1.2595;...
             -1.9958, 5.9597,-0.7417;...
             -1.2595,-0.7417, 5.6386]/(10^6);
              
B_pmile_602=[ 5.6990,-1.0817,-1.6905;...
             -1.0817, 5.1795,-0.6588;...
             -1.6905,-0.6588, 5.4246]/(10^6);
              
B_pmile_603=[      0,      0,      0;...
                   0, 4.7097,-0.8999;...
                   0,-0.8999, 4.6658]/(10^6);

B_pmile_604=[ 4.6658,      0,-0.8999;...
                   0,      0,      0;...
             -0.8999,      0, 4.7097]/(10^6);
              
B_pmile_605=[      0,      0,      0;...
                   0,      0,      0;...
                   0,      0, 4.5193]/(10^6);   
              
B_pmile_606=[96.8897,      0,      0;...
                   0,96.8897,      0;...
                   0,      0, 96.8897]/(10^6);
               
B_pmile_607=[88.9912,      0,      0;...
                   0,      0,      0;...
                   0,      0,      0]/(10^6);
              
%%%%%%% transformer data%%%%%%%%
Rtf1_percent=0.01;% 1%
Xtf1_percent=0.08;% 6%
N1=115/4.16; % tranformer ratio
 
Vtf1_base = 115; % 115KV LL
Stf1_Base = 5; %5MVA

Rtf1 = Rtf1_percent * (Vtf1_base^2/Stf1_Base);
Xtf1 = Xtf1_percent * (Vtf1_base^2/Stf1_Base); 
Ztf1=diag([Rtf1+1i*Xtf1,Rtf1+1i*Xtf1,Rtf1+1i*Xtf1]);

Rtf2_percent=0.011;% 1.1%
Xtf2_percent=0.02;% 2%
N2=4.16/0.48; % tranformer ratio
 
Vtf2_base = 4.16; % 4.16KV LL
Stf2_Base = 0.5; %500KVA

Rtf2 = Rtf2_percent * (Vtf2_base^2/Stf2_Base);
Xtf2 = Xtf2_percent * (Vtf2_base^2/Stf2_Base);
Ztf2=diag([Rtf2+1i*Xtf2,Rtf2+1i*Xtf2,Rtf2+1i*Xtf2]);
%%%%%%%%%%%%%%line segment info%%%%%%%%%%%%%%%%%%%%%
LineSeg(1).Length= 2000;
LineSeg(1).node1 = 1;
LineSeg(1).node2 = 4;
LineSeg(1).phase = [1,1,1];
LineSeg(1).np = 3;
LineSeg(1).Vbase = 4.16/sqrt(3);
LineSeg(1).Z_pu = Z_pmile_601*ft2mile(LineSeg(1).Length)...
                  *S_base/(LineSeg(1).Vbase^2);
LineSeg(1).Y_pu = inv(LineSeg(1).Z_pu);              
LineSeg(1).B_pu = B_pmile_601*ft2mile(LineSeg(1).Length)...
                  *S_base/(LineSeg(1).Vbase^2);

LineSeg(2).Length= 300;
LineSeg(2).node1 = 2;
LineSeg(2).node2 = 3;
LineSeg(2).phase = [0,1,1];
LineSeg(2).np = 2;
LineSeg(2).Vbase = 4.16/sqrt(3);
LineSeg(2).Z_pu = Z_pmile_603*ft2mile(LineSeg(2).Length)...
                  *S_base/(LineSeg(2).Vbase^2);
LineSeg(2).Y_pu = zeros(3,3);              
LineSeg(2).Y_pu(2:3,2:3) = inv(LineSeg(2).Z_pu(2:3,2:3));              
LineSeg(2).B_pu = B_pmile_603*ft2mile(LineSeg(2).Length)...
                  *S_base/(LineSeg(2).Vbase^2);
              
LineSeg(3).Length= 500;
LineSeg(3).node1 = 3;
LineSeg(3).node2 = 4;
LineSeg(3).phase = [0,1,1];
LineSeg(3).np = 2;
LineSeg(3).Vbase = 4.16/sqrt(3);
LineSeg(3).Z_pu = Z_pmile_603*ft2mile(LineSeg(3).Length)...
                  *S_base/(LineSeg(3).Vbase^2);
LineSeg(3).Y_pu = zeros(3,3);
LineSeg(3).Y_pu(2:3,2:3) = inv(LineSeg(3).Z_pu(2:3,2:3));              
LineSeg(3).B_pu = B_pmile_603*ft2mile(LineSeg(3).Length)...
                  *S_base/(LineSeg(3).Vbase^2);   
              
LineSeg(4).Length= 500;
LineSeg(4).node1 = 4;
LineSeg(4).node2 = 5;
LineSeg(4).phase = [1,1,1];
LineSeg(4).np = 3;
LineSeg(4).Vbase = 4.16/sqrt(3);
LineSeg(4).Z_pu = Z_pmile_602*ft2mile(LineSeg(4).Length)...
                  *S_base/(LineSeg(4).Vbase^2);
LineSeg(4).Y_pu = inv(LineSeg(4).Z_pu);              
LineSeg(4).B_pu = B_pmile_602*ft2mile(LineSeg(4).Length)...
                  *S_base/(LineSeg(4).Vbase^2);               
              
LineSeg(5).Length= 0;
LineSeg(5).node1 = 5;
LineSeg(5).node2 = 6;
LineSeg(5).phase = [1,1,1];
LineSeg(5).np = 3;
LineSeg(5).Vbase = 4.16/sqrt(3);
LineSeg(5).Z_pu = Ztf2*S_base/(LineSeg(5).Vbase^2);
LineSeg(5).Y_pu = inv(LineSeg(5).Z_pu);
LineSeg(5).B_pu = 0;

LineSeg(6).Length= 500;
LineSeg(6).node1 = 4;
LineSeg(6).node2 = 7;
LineSeg(6).phase = [1,1,1];
LineSeg(6).np = 3;
LineSeg(6).Vbase = 4.16/sqrt(3);
LineSeg(6).Z_pu = Z_pmile_601*ft2mile(LineSeg(6).Length)...
                  *S_base/(LineSeg(6).Vbase^2);
LineSeg(6).Y_pu = inv(LineSeg(6).Z_pu);              
LineSeg(6).B_pu = B_pmile_601*ft2mile(LineSeg(6).Length)...
                  *S_base/(LineSeg(6).Vbase^2);

LineSeg(7).Length= 1500;
LineSeg(7).node1 = 7;
LineSeg(7).node2 = 10;
LineSeg(7).phase = [1,1,1];
LineSeg(7).np = 3;
LineSeg(7).Vbase = 4.16/sqrt(3);
LineSeg(7).Z_pu = Z_pmile_601*ft2mile(LineSeg(7).Length)...
                  *S_base/(LineSeg(7).Vbase^2);
LineSeg(7).Y_pu = inv(LineSeg(7).Z_pu);              
LineSeg(7).B_pu = B_pmile_601*ft2mile(LineSeg(7).Length)...
                  *S_base/(LineSeg(7).Vbase^2);
              
LineSeg(8).Length= 300;
LineSeg(8).node1 = 8;
LineSeg(8).node2 = 9;
LineSeg(8).phase = [0,0,1];
LineSeg(8).np = 1;
LineSeg(8).Vbase = 4.16/sqrt(3);
LineSeg(8).Z_pu = Z_pmile_605*ft2mile(LineSeg(8).Length)...
                  *S_base/(LineSeg(8).Vbase^2);
LineSeg(8).Y_pu = zeros(3,3);              
LineSeg(8).Y_pu(3,3) = inv(LineSeg(8).Z_pu(3,3));
LineSeg(8).B_pu = B_pmile_605*ft2mile(LineSeg(8).Length)...
                  *S_base/(LineSeg(8).Vbase^2);              
              
LineSeg(9).Length= 300;
LineSeg(9).node1 = 9;
LineSeg(9).node2 = 10;
LineSeg(9).phase = [1,0,1];
LineSeg(9).np = 2;
LineSeg(9).Vbase = 4.16/sqrt(3);
LineSeg(9).Z_pu = Z_pmile_604*ft2mile(LineSeg(9).Length)...
                  *S_base/(LineSeg(9).Vbase^2);
tempZpu=LineSeg(9).Z_pu;
tempZpu(2,:)=[];
tempZpu(:,2)=[];
tempYpu=inv(tempZpu);
tempYpu=[tempYpu(1,:);[0,0];tempYpu(2,:)];
tempYpu=[tempYpu(:,1),[0;0;0],tempYpu(:,2)];
LineSeg(9).Y_pu = tempYpu;
LineSeg(9).B_pu = B_pmile_604*ft2mile(LineSeg(9).Length)...
                  *S_base/(LineSeg(9).Vbase^2);
              
LineSeg(10).Length= 500;
LineSeg(10).node1 = 10;
LineSeg(10).node2 = 11;
LineSeg(10).phase = [1,1,1];
LineSeg(10).np = 3;
LineSeg(10).Vbase = 4.16/sqrt(3);
LineSeg(10).Z_pu = Z_pmile_606*ft2mile(LineSeg(10).Length)...
                  *S_base/(LineSeg(10).Vbase^2);
LineSeg(10).Y_pu = inv(LineSeg(10).Z_pu);
LineSeg(10).B_pu = B_pmile_606*ft2mile(LineSeg(10).Length)...
                  *S_base/(LineSeg(10).Vbase^2);
              
LineSeg(11).Length= 800;
LineSeg(11).node1 = 9;
LineSeg(11).node2 = 12;
LineSeg(11).phase = [1,0,0];
LineSeg(11).np = 1;
LineSeg(11).Vbase = 4.16/sqrt(3);
LineSeg(11).Z_pu = Z_pmile_607*ft2mile(LineSeg(11).Length)...
                  *S_base/(LineSeg(11).Vbase^2);
LineSeg(11).Y_pu = zeros(3,3);              
LineSeg(11).Y_pu(1,1) = inv(LineSeg(11).Z_pu(1,1));
LineSeg(11).B_pu = B_pmile_607*ft2mile(LineSeg(11).Length)...
                  *S_base/(LineSeg(11).Vbase^2);
              
LineSeg(12).Length= 1000;
LineSeg(12).node1 = 10;
LineSeg(12).node2 = 13;
LineSeg(12).phase = [1,1,1];
LineSeg(12).np = 3;
LineSeg(12).Vbase = 4.16/sqrt(3);
LineSeg(12).Z_pu = Z_pmile_601*ft2mile(LineSeg(12).Length)...
                  *S_base/(LineSeg(12).Vbase^2);
LineSeg(12).Y_pu = inv(LineSeg(12).Z_pu);              
LineSeg(12).B_pu = B_pmile_601*ft2mile(LineSeg(12).Length)...
                  *S_base/(LineSeg(12).Vbase^2);
              
              
N_LineSeg = size(LineSeg,2);      

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
    
    if node(i).np==3
        for j=1:3
           index_count=index_count+1;
           node(i).index(j)=index_count;
        end
    end
    
    if node(i).np==2
    for j=1:3
            if node(i).phase(j)==1;
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