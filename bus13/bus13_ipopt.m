clc;
clear;
yalmip('clear')
%%%%%%%Bus Data%%%%%%%%%%%
bus13_node_line_data
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
c_k1_p1=[0.6,0.3,1];
c_k1_p2=[0.6,0.3,1]*0.9;
c_k2_p=0;

V_k_p_min=0.95;%0.95;
V_k_p_max=1.05;%1.05;
P_g_p_min1=0;
P_g_p_max1=10;
Q_g_p_min1=0;
Q_g_p_max1=10;


P_g_p_min2=0;
P_g_p_max2=50/1000/S_base;
Q_g_p_min2=0;
Q_g_p_max2=20/1000/S_base;
%%%%%%%%%%%constraints%%%%%%%%%%
X_v=sdpvar(2*N_of_phases,1);

%%SDP 13
test=[
    1.0500
   -0.5250
   -0.5250
   -0.5343
   -0.4642
   -0.5357
   -0.4641
    1.0178
   -0.5405
   -0.4640
    1.0148
   -0.5403
   -0.4631
    0.9918
   -0.5375
   -0.4495
    1.0123
   -0.5426
   -0.4494
   -0.4040
    0.9928
   -0.4073
    0.9948
   -0.5497
   -0.4098
    0.9884
   -0.5533
   -0.4091
    0.9872
    0.9944
   -0.5499
   -0.4100
   -0.0000
   -0.9093
    0.9093
   -0.8544
    0.8950
   -0.8591
    0.8937
   -0.0352
   -0.8729
    0.8898
   -0.0358
   -0.8706
    0.8880
   -0.0444
   -0.8504
    0.8764
   -0.0471
   -0.8736
    0.8826
    0.8598
   -0.0833
    0.8606
   -0.0831
   -0.8774
    0.8617
   -0.0867
   -0.8776
    0.8600
   -0.0815
   -0.0828
   -0.8771
    0.8618];


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

ops = sdpsettings('solver', 'ipopt','usex0', 1);
%ops = sdpsettings('solver', 'fmincon', 'fmincon.Algorithm', 'sqp', 'usex0', 1);
%ops=sdpsettings(ops,'fmincon.Algorithm','sqp');

diagn =optimize(F_sub,Cg,ops);
%toc
X_v_val = value(X_v);
disp('voltage results:')
disp(X_v_val(1:N_of_phases)+1i*X_v_val(N_of_phases+1:2*N_of_phases))

   

 


