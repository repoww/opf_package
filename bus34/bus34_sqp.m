clc;
clear;
yalmip('clear')
%%%%%%%Bus Data%%%%%%%%%%%
bus34_node_line_data_t3
%%%%%%%%%%%%%%%%%%%%%
%bus4_1Area_data
%%%%%%%%%%%%%%%%%%%
% x=sdpvar(4,1);
% f=x(1)*x(4)*(x(1)+x(2)+x(3))+x(3);
% F=[];
% F=[F,x(1)*x(2)*x(3)*x(4)>=25];
% F=[F,x(1)^2+x(2)^2+x(3)^2+x(4)^2==40];
% 
% F=[F,x>=1];
% F=[F,x<=5];
% ops=sdpsettings('solver','ipopt'); 
% diagn =optimize(F,f,ops);
%N_Area=size(Area,2);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
c_k0_p=0;
c_k1_p1=[1,0.9,0.8];
c_k1_p2=[1,0.9,0.8]*0.9;
c_k2_p=0;

V_k_p_min=0.9;%0.95;
V_k_p_max=1.05;%1.05;
P_g_p_min1=0;
P_g_p_max1=2;
Q_g_p_min1=0;
Q_g_p_max1=2;


P_g_p_min2=0;
P_g_p_max2=20/1000/S_base;
Q_g_p_min2=0;
Q_g_p_max2=10/1000/S_base;
%%%%%%%%%%%constraints%%%%%%%%%%
X_v=sdpvar(2*N_of_phases,1);

test=[
    1.0500
   -0.5250
   -0.5250
    1.0489
   -0.5249
   -0.5242
    1.0482
   -0.5248
   -0.5237
    1.0347
   -0.5235
   -0.5145
   -0.5234
    1.0189
   -0.5220
   -0.5038
    1.0064
   -0.5207
   -0.4954
    1.0062
   -0.5207
   -0.4953
    1.0057
    0.9924
    0.9893
    1.0023
   -0.5186
   -0.4917
   -0.5185
    1.0020
   -0.5185
   -0.4914
    0.9943
   -0.5148
   -0.4842
    0.9941
   -0.5147
   -0.4840
   -0.5147
    0.9806
   -0.5082
   -0.4717
    0.9802
   -0.5084
   -0.4711
    0.9394
   -0.5000
   -0.4412
    0.9795
   -0.5075
   -0.4705
    0.9795
    0.9782
   -0.5067
   -0.4691
    0.9782
   -0.5067
   -0.4691
    0.9780
   -0.5066
   -0.4689
    0.9779
   -0.5065
   -0.4689
    0.9779
   -0.5065
   -0.4689
    0.9781
   -0.5065
   -0.4689
    0.9779
   -0.5064
   -0.4688
    0.9779
   -0.5064
   -0.4688
    0.9779
   -0.5064
   -0.4688
   -0.5064
         0
   -0.9093
    0.9093
   -0.0003
   -0.9084
    0.9086
   -0.0005
   -0.9077
    0.9081
   -0.0045
   -0.8966
    0.8991
   -0.8965
   -0.0093
   -0.8842
    0.8884
   -0.0130
   -0.8744
    0.8799
   -0.0130
   -0.8742
    0.8797
   -0.0130
   -0.0132
   -0.0132
   -0.0134
   -0.8694
    0.8755
   -0.8692
   -0.0135
   -0.8691
    0.8752
   -0.0145
   -0.8605
    0.8666
   -0.0145
   -0.8602
    0.8663
   -0.8601
   -0.0163
   -0.8451
    0.8515
   -0.0167
   -0.8445
    0.8514
   -0.0255
   -0.8064
    0.8202
   -0.0164
   -0.8437
    0.8501
   -0.0164
   -0.0165
   -0.8421
    0.8484
   -0.0165
   -0.8421
    0.8484
   -0.0165
   -0.8418
    0.8482
   -0.0164
   -0.8416
    0.8481
   -0.0164
   -0.8416
    0.8481
   -0.0165
   -0.8420
    0.8480
   -0.0164
   -0.8418
    0.8479
   -0.0164
   -0.8418
    0.8479
   -0.0164
   -0.8418
    0.8479
   -0.8416];

%%
X_v(1:3,1)=[1;-0.5;-0.5]*1.05;
X_v(N_of_phases+1:N_of_phases+3,1)=[0;-sqrt(3)/2;sqrt(3)/2]*1.05;

Cg=0;
F_sub=[];
basis_temp=eye(N_of_phases);
count_n_phase_temp=0;
count_g_phase_temp=0;
for i=1:N_node
    for j=1:3
        if node(i).phase(j)==1
            count_n_phase_temp=count_n_phase_temp+1;
            
            y_k_p=basis_temp(:,count_n_phase_temp)*basis_temp(count_n_phase_temp,:)*Y;

            Y_k_p_P=0.5*[real(y_k_p+transpose(y_k_p)),imag(transpose(y_k_p)-y_k_p);...
                            imag(y_k_p-transpose(y_k_p)),real(y_k_p+transpose(y_k_p))];
            Y_k_p_Q=-0.5*[imag(y_k_p+transpose(y_k_p)),real(y_k_p-transpose(y_k_p));...
                            real(transpose(y_k_p)-y_k_p),imag(y_k_p+transpose(y_k_p))]; 
            M_k_p=[basis_temp(:,count_n_phase_temp)*basis_temp(count_n_phase_temp,:),zeros(N_of_phases,N_of_phases);...
                       zeros(N_of_phases,N_of_phases),basis_temp(:,count_n_phase_temp)*basis_temp(count_n_phase_temp,:)]; 
                   
                 if(node(i).g==1) %&& (node(i).P(j) > 0 || i==1)
                    count_g_phase_temp=count_g_phase_temp+1;
                 
                     if    i==1
                           P_g_p_min=P_g_p_min1;
                           P_g_p_max=P_g_p_max1;
                           Q_g_p_min=Q_g_p_min1;
                           Q_g_p_max=Q_g_p_max1;
                           c_k1_p=c_k1_p1;
                     else
                           P_g_p_min=P_g_p_min2;
                           P_g_p_max=P_g_p_max2;
                           Q_g_p_min=Q_g_p_min2;
                           Q_g_p_max=Q_g_p_max2; 
                           c_k1_p=c_k1_p2;
                     end
                 
                

                    F_sub=[F_sub,P_g_p_min-node(i).P(j)-transpose(X_v)*Y_k_p_P*X_v<=0];
                    F_sub=[F_sub,transpose(X_v)*Y_k_p_P*X_v-P_g_p_max+node(i).P(j)<=0];
                    F_sub=[F_sub,Q_g_p_min-node(i).Q(j)-transpose(X_v)*Y_k_p_Q*X_v<=0];
                    F_sub=[F_sub,transpose(X_v)*Y_k_p_Q*X_v-Q_g_p_max+node(i).Q(j)<=0];
                    F_sub=[F_sub,V_k_p_min^2-transpose(X_v)*M_k_p*X_v<=0];
                    F_sub=[F_sub,transpose(X_v)*M_k_p*X_v-V_k_p_max^2<=0];
                    Cg=Cg+(node(i).P(j)+transpose(X_v)*Y_k_p_P*X_v)*c_k1_p(j);
                else
                    
                      F_sub=[F_sub,node(i).P(j)+transpose(X_v)*Y_k_p_P*X_v==0];
                      F_sub=[F_sub,node(i).Q(j)+transpose(X_v)*Y_k_p_Q*X_v==0];
%                     F_sub=[F_sub,node(i).P(j)+transpose(X_v)*Y_k_p_P*X_v<=1e-3];
%                     F_sub=[F_sub,node(i).P(j)+transpose(X_v)*Y_k_p_P*X_v>=-1e-3];
%                     F_sub=[F_sub,node(i).Q(j)+transpose(X_v)*Y_k_p_Q*X_v<=1e-3];
%                     F_sub=[F_sub,node(i).Q(j)+transpose(X_v)*Y_k_p_Q*X_v>=-1e-3];
                    F_sub=[F_sub,V_k_p_min^2-transpose(X_v)*M_k_p*X_v<=0];
                    F_sub=[F_sub,transpose(X_v)*M_k_p*X_v-V_k_p_max^2<=0];
                    
                end
            
        end
    end
end


%ops=sdpsettings('solver','ipopt'); 
for ns=[4:N_of_phases,N_of_phases+4:N_of_phases*2]
assign(X_v(ns),test(ns));
end

%ops = sdpsettings('solver', 'ipopt','usex0', 1);
ops = sdpsettings('solver', 'fmincon', 'fmincon.Algorithm', 'sqp', 'usex0', 1);
%ops=sdpsettings(ops,'fmincon.Algorithm','sqp');

diagn =optimize(F_sub,Cg,ops);
%toc

X_v_val = value(X_v);
disp('voltage results:')
disp(X_v_val(1:N_of_phases)+1i*X_v_val(N_of_phases+1:2*N_of_phases))
   

 


