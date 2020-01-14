%BUS DATA
%%%%%%%%%%%Slack Bus data%%%%%%%%%%%%%%%%%
N_Slack=1;
V_base=12.47/sqrt(3); %12.47KV LL change to Phase
S_base = 10;%5MVA 
Z_base = V_base^2/S_base;
node(1).phase=[1,1,1];
node(1).np=3;
node(1).g=1;
node(1).P=[0,0,0];
node(1).Q=[0,0,0];
V1_regular=[1,0;cos(-pi*2/3),sin(-pi*2/3);cos(-pi*4/3),sin(-pi*4/3)];
V1=[1.0625,0;1.05*cos(-pi*2/3),1.05*sin(-pi*2/3);1.0687*cos(-pi*4/3),1.0687*sin(-pi*4/3)];
% V1=[1.0625,0;1.05*cos(-pi*2/3),1.05*sin(-pi*2/3);1.0687*cos(-pi*4/3),1.0687*sin(-pi*4/3)];
%%%%%%%%%%%PQ bus Data%%%%%%%%%%%%%%%%%
N_PQ=3;
P=zeros(3*N_PQ,1);
Q=zeros(3*N_PQ,1);
%%node2%%
node(2).phase=[1,1,1];
node(2).np=3;
node(2).g=0;
node(2).P=[0,0,0]/1000/S_base;
node(2).Q=[0,0,0]/1000/S_base;
%%node3%%
node(3).phase=[1,1,1];
node(3).np=3;
node(3).g=0;
node(3).P=[0,0,0]/1000/S_base;
node(3).Q=[0,0,0]/1000/S_base;
%%node4%%
node(4).phase=[1,1,1];
node(4).np=3;
node(4).g=1;

PF=0.9;
P_temp=[1800,1600,1400];
Q_temp=P_temp*tan(acos(PF));
node(4).P=[P_temp(1),P_temp(2),P_temp(3)]/1000/S_base;
node(4).Q=[Q_temp(1),Q_temp(2),Q_temp(3)]/1000/S_base;
%%%%%%%%%%%
N_node=4;
%%%%%%%Line Data%%%%%%%%%%%%%
%%%%%%%%%%%line data%%%%%%%%%%%%%%%%%
Zy_permile = [0.4576+1.078i,0.1559+0.5017i,0.1535+0.3849i;...
              0.1559+0.5017i,0.4666+1.0482i,0.158+0.4236i;...
              0.1535+0.3849i,0.158+0.4236i,0.4615+1.0651i];
          
Zd_permile = [0.4013+1.4133i,0.0953+0.8515i,0.0953+0.7266i;...
              0.0953+0.8515i,0.4013+1.4133i,0.0953+0.7802i;...
              0.0953+0.7266i,0.0953+0.7802i,0.4013+1.4133i];      
              
%%%%%%% transformer data%%%%%%%%
Rtf_percent=0.01;% 1%
Xtf_percent=0.06;% 6%
N=12.47/4.16; % tranformer ratio
 
Vtf_base = 12.47; % 12.47KV LL
Stf_Base = 6; %6MVA

Rtf = Rtf_percent * (Vtf_base^2/Stf_Base);
Xtf = Xtf_percent * (Vtf_base^2/Stf_Base);
Ztf=diag([Rtf+1i*Xtf,Rtf+1i*Xtf,Rtf+1i*Xtf]);
%%%%%%%%%%%%%%line segment info%%%%%%%%%%%%%%%%%%%%%
LineSeg(1).Length= 2000;
LineSeg(1).node1 = 1;
LineSeg(1).node2 = 2;
LineSeg(1).phase = [1,1,1];
LineSeg(1).np = 3;
LineSeg(1).Vbase = 12.47/sqrt(3);
LineSeg(1).Z_pu = Zy_permile*ft2mile(LineSeg(1).Length)...
                  *S_base/(LineSeg(1).Vbase^2);
LineSeg(1).Y_pu = inv(LineSeg(1).Z_pu);              
LineSeg(1).B_pu = 0;
%%%%%
LineSeg(2).Length= 0;
LineSeg(2).node1 = 2;
LineSeg(2).node2 = 3;
LineSeg(2).phase = [1,1,1];
LineSeg(2).np = 3;
LineSeg(2).Vbase = 12.47/sqrt(3);
LineSeg(2).Z_pu = Ztf...
                  *S_base/(LineSeg(2).Vbase^2);          
LineSeg(2).Y_pu = inv(LineSeg(2).Z_pu);              
LineSeg(2).B_pu = 0;
%%%%%              
LineSeg(3).Length= 2500;
LineSeg(3).node1 = 3;
LineSeg(3).node2 = 4;
LineSeg(3).np = 3;
LineSeg(3).phase = [1,1,1];
LineSeg(3).Vbase = 4.16/sqrt(3);
LineSeg(3).Z_pu = Zy_permile*ft2mile(LineSeg(3).Length)...
                  *S_base/(LineSeg(3).Vbase^2);
LineSeg(3).Y_pu = inv(LineSeg(3).Z_pu);
              
LineSeg(3).B_pu = 0;   
%%%%%%%%%                                       
N_LineSeg = size(LineSeg,2);                
%%%%%%%%%%%%%%%Constraints%%%%%%%%%%%%%%%%%%%%%%%%%%
S_ik_max=100;
P_ik_max=100;
Delta_V_ik_max=0.2;


P_g_p_min1=0;
P_g_p_max1=10;
Q_g_p_min1=0;
Q_g_p_max1=10;

P_g_p_min2=0/1000/S_base;
P_g_p_max2=200/1000/S_base;
Q_g_p_min2=0;
Q_g_p_max2=100/1000/S_base;

P_k_p_min=0;
P_k_p_max=0;
Q_k_p_min=0;
Q_k_p_max=0;

c_k0_p=0;
c_k1_p=[1,0.5,0.2];
c_k2_p=0;

V_k_p_min=0.8;%0.95;%0.95;
V_k_p_max=1;%1.05;%1.05;
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
        if node(i).phase(j)==1
            index_count=index_count+1;
             node(i).index(j)=index_count;            
        end
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