clc;
clear;
yalmip('clear')
%%%%%%%Bus Data%%%%%%%%%%%
bus1000_node_line_data_org_length
bus1000_node_line_data_sim_length2
bus1000_Y
%%%%%%%%%%%%%%%%%%%%%
testV=load('V_rec3.mat');
test=[real(testV.V);imag(testV.V)]/V_base;
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
c_k1_p1=[0.6,0.7,0.5];
c_k1_p2=[0.6,0.7,0.5];
c_k2_p=0;

V_k_p_min=0.95*416/sqrt(3)/V_base;%0.95;
V_k_p_max=1.06*416/sqrt(3)/V_base;%1.05;
P_g_p_min1=0;
P_g_p_max1=1;
Q_g_p_min1=0;
Q_g_p_max1=1;
% 
% 
P_g_p_min2=0;
P_g_p_max2=0.5*1000/S_base;
Q_g_p_min2=0;
Q_g_p_max2=0.2*1000/S_base;%%%%%%%%%%%constraints%%%%%%%%%%
X_v=sdpvar(2*N_of_phases,1);

%%
X_v(1:3,1)=test(1:3);
X_v(N_of_phases+1:N_of_phases+3,1)=test(N_of_phases+1:N_of_phases+3);

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
                 
                

                    F_sub=[F_sub,P_g_p_min-node(i).P(j)-transpose(X_v)*Y_k_p_P*X_v<=1e-10];
                    F_sub=[F_sub,transpose(X_v)*Y_k_p_P*X_v-P_g_p_max+node(i).P(j)<=0];
                    F_sub=[F_sub,Q_g_p_min-node(i).Q(j)-transpose(X_v)*Y_k_p_Q*X_v<=1e-10];
                    F_sub=[F_sub,transpose(X_v)*Y_k_p_Q*X_v-Q_g_p_max+node(i).Q(j)<=0];
                    F_sub=[F_sub,V_k_p_min^2-transpose(X_v)*M_k_p*X_v<=0];
                    F_sub=[F_sub,transpose(X_v)*M_k_p*X_v-V_k_p_max^2<=0];
                    Cg=Cg+(node(i).P(j)+transpose(X_v)*Y_k_p_P*X_v)*c_k1_p(j);
                 else
                    %F_sub=[F_sub,node(i).P(j)+transpose(X_v)*Y_k_p_P*X_v==0];
                    %F_sub=[F_sub,node(i).Q(j)+transpose(X_v)*Y_k_p_Q*X_v==0];
                     F_sub=[F_sub,node(i).P(j)+transpose(X_v)*Y_k_p_P*X_v<=1e-10];
                     F_sub=[F_sub,node(i).P(j)+transpose(X_v)*Y_k_p_P*X_v>=-1e-10];
                     F_sub=[F_sub,node(i).Q(j)+transpose(X_v)*Y_k_p_Q*X_v<=1e-10];
                     F_sub=[F_sub,node(i).Q(j)+transpose(X_v)*Y_k_p_Q*X_v>=-1e-10];
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
   

 


