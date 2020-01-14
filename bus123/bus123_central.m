clc;
clear;

yalmip('clear')
%BUS DATA
bus123_node_line_data
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%Primal Problem%%%%%%%%%%%
%%%%%%%Area DATA%%%%%%%%%%%%%%%%%%%%%%
bus123_29Area_data
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%
N_Area=size(Area,2);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
c_k0_p=0;
c_k1_p1=[1,0.3,0.6];
c_k1_p2=[1,0.3,0.6];
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
%%%%%%%%%%%constraints%%%%%%%%%%
for i=1:N_Area
    
     Area(i).F_sub=[];
     Area(i).F_sub=[Area(i).F_sub,Area(i).X>=0];
     basis_temp=eye(Area(i).N_of_phases_ext);
     count_n_phase_temp=0;
     count_g_phase_temp=0;
    

   for n=1:Area(i).size   
   % if(node(Area(i).node(n)).g==1)
        for j=1:3
           if node(Area(i).node(n)).phase(j)==1 
               % if   node(Area(i).node(n)).P(j) > 0 || Area(i).node(n)==1
                count_n_phase_temp=count_n_phase_temp+1;

                 %y_k_p=basis(:,3*(i-1)+j)*basis(3*(i-1)+j,:)*Y;
                 y_k_p=basis_temp(:,count_n_phase_temp)*basis_temp(count_n_phase_temp,:)*Area(i).Y;

                 Y_k_p_P=0.5*[real(y_k_p+transpose(y_k_p)),imag(transpose(y_k_p)-y_k_p);...
                            imag(y_k_p-transpose(y_k_p)),real(y_k_p+transpose(y_k_p))];
                 Y_k_p_Q=-0.5*[imag(y_k_p+transpose(y_k_p)),real(y_k_p-transpose(y_k_p));...
                            real(transpose(y_k_p)-y_k_p),imag(y_k_p+transpose(y_k_p))];     
                 %M_k_p=[basis(:,3*(i-1)+j)*basis(3*(i-1)+j,:),zeros(3*N_node,3*N_node);...
                 %      zeros(3*N_node,3*N_node),basis(:,3*(i-1)+j)*basis(3*(i-1)+j,:)];
                 M_k_p=[basis_temp(:,count_n_phase_temp)*basis_temp(count_n_phase_temp,:),zeros(Area(i).N_of_phases_ext,Area(i).N_of_phases_ext);...
                       zeros(Area(i).N_of_phases_ext,Area(i).N_of_phases_ext),basis_temp(:,count_n_phase_temp)*basis_temp(count_n_phase_temp,:)];


                %if(node(Area(i).node(n)).g==1) && (node(Area(i).node(n)).P(j) > 0 || Area(i).node(n)==1)
                if node(Area(i).node(n)).g==1
                    count_g_phase_temp=count_g_phase_temp+1;
                 
                     if Area(i).node(n)==1
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
                 
                

                 Area(i).F_sub=[Area(i).F_sub,P_g_p_min-node(Area(i).node(n)).P(j)-trace(Y_k_p_P*Area(i).X)<=0];
                 Area(i).F_sub=[Area(i).F_sub,trace(Y_k_p_P*Area(i).X)-P_g_p_max+node(Area(i).node(n)).P(j)<=0];
                 Area(i).F_sub=[Area(i).F_sub,Q_g_p_min-node(Area(i).node(n)).Q(j)-trace(Y_k_p_Q*Area(i).X)<=0];
                 Area(i).F_sub=[Area(i).F_sub,trace(Y_k_p_Q*Area(i).X)-Q_g_p_max+node(Area(i).node(n)).Q(j)<=0];
                 Area(i).F_sub=[Area(i).F_sub,V_k_p_min^2-trace(M_k_p*Area(i).X)<=0];
                 Area(i).F_sub=[Area(i).F_sub,trace(M_k_p*Area(i).X)-V_k_p_max^2<=0];
                 Area(i).F_sub=[Area(i).F_sub,[c_k1_p(j)*trace(Y_k_p_P*Area(i).X)+c_k0_p+c_k1_p(j)*node(Area(i).node(n)).P(j)-Area(i).cg(count_g_phase_temp,1),...
                                sqrt(c_k2_p)*trace(Y_k_p_P*Area(i).X)+sqrt(c_k2_p)*node(Area(i).node(n)).P(j);...
                                sqrt(c_k2_p)*trace(Y_k_p_P*Area(i).X)+sqrt(c_k2_p)*node(Area(i).node(n)).P(j),-1]<=0];
                else
                    
                    Area(i).F_sub=[Area(i).F_sub,node(Area(i).node(n)).P(j)+trace(Y_k_p_P*Area(i).X)==0];
                    Area(i).F_sub=[Area(i).F_sub,node(Area(i).node(n)).Q(j)+trace(Y_k_p_Q*Area(i).X)==0];
                    Area(i).F_sub=[Area(i).F_sub,V_k_p_min^2-trace(M_k_p*Area(i).X)<=0];
                    Area(i).F_sub=[Area(i).F_sub,trace(M_k_p*Area(i).X)-V_k_p_max^2<=0];
                    
                end
           end
        end
   end
end

ops=sdpsettings('solver','mosek-sdp'); 
ops=sdpsettings(ops,'mosek.MSK_DPAR_INTPNT_CO_TOL_MU_RED',10^(-7));
ops=sdpsettings(ops,'mosek.MSK_DPAR_INTPNT_CO_TOL_INFEAS',10^(-7));
ops=sdpsettings(ops,'mosek.MSK_DPAR_INTPNT_CO_TOL_REL_GAP',10^(-7));
ops=sdpsettings(ops,'mosek.MSK_DPAR_INTPNT_CO_TOL_DFEAS',10^(-7)); 
ops=sdpsettings(ops,'mosek.MSK_DPAR_INTPNT_CO_TOL_PFEAS',10^(-7)) ;
ops=sdpsettings(ops,'mosek.MSK_DPAR_INTPNT_CO_TOL_NEAR_REL',10^6) ;
% ops=sdpsettings(ops,'mosek.MSK_DPAR_INTPNT_NL_TOL_MU_RED',10^(-5));
% ops=sdpsettings(ops,'mosek.MSK_DPAR_INTPNT_NL_TOL_REL_GAP',10^(-5));
% ops=sdpsettings(ops,'mosek.MSK_DPAR_INTPNT_NL_TOL_DFEAS',10^(-5)) ;
% ops=sdpsettings(ops,'mosek.MSK_DPAR_INTPNT_NL_TOL_NEAR_REL',10^6) ;
% ops=sdpsettings(ops,'mosek.MSK_DPAR_INTPNT_NL_TOL_PFEAS',10^(-5)) ;
ops=sdpsettings(ops,'mosek.MSK_IPAR_BI_IGNORE_NUM_ERROR','MSK_ON') ;
ops=sdpsettings(ops,'mosek.MSK_IPAR_OPTIMIZER','MSK_OPTIMIZER_FREE'); 
ops=sdpsettings(ops,'mosek.MSK_DPAR_BASIS_TOL_X',10^(-3));
ops=sdpsettings(ops,'mosek.MSK_DPAR_BASIS_TOL_S',10^(-3)) ;
ops=sdpsettings(ops,'mosek.MSK_DPAR_BASIS_REL_TOL_S',10^(-5));
ops=sdpsettings(ops,'mosek.MSK_IPAR_ANA_SOL_PRINT_VIOLATED','MSK_ON');
ops=sdpsettings(ops,'mosek.MSK_IPAR_INTPNT_SOLVE_FORM','MSK_SOLVE_FREE');
ops = sdpsettings(ops,'verbose',0);
ops = sdpsettings(ops,'cachesolvers',1);

% ops = sdpsettings('solver','sedumi','sedumi.eps',1e-8);
% ops = sdpsettings(ops,'cachesolvers',1);
% ops = sdpsettings(ops,'verbose',1);


% for i=1:N_Area
%     Area(i).DirM=eye(2*Area(i).N_of_phases_ext);
%     Area(i).Rank_E=0;
%     Area(i).w=10;
% end


for i=1:N_Area
   % Area(i).DirM=eye(2*Area(i).N_of_phases_ext);
    Area(i).DirM=zeros(2*Area(i).N_of_phases_ext,2*Area(i).N_of_phases_ext);
    Area(i).Rank_E=0;
    Area(i).w=1;
end
% Area(3).w=100;
% Area(13).w=100;
% Area(21).w=100;

h=0;
F=[];
for i=1:N_Area
h=h+sum(Area(i).cg);
F=[F,Area(i).F_sub];
end

for i=1:size(Bnd_index,1)
    F=[F,Area(Bnd_index(i,1)).bnd{Bnd_index(i,2)}==Area(Bnd_index(i,3)).bnd{Bnd_index(i,4)}];
end



counter=1;
inner_break_flag=0;
terminate_flag2=0;
record=zeros(51,29);
tic
while(1)
    obj=h;
    for i=1:N_Area
    obj=obj+Area(i).w*trace(Area(i).X'*Area(i).DirM);
    end

%tic
diagn =optimize(F,obj,ops);
%toc


if strcmp(diagn.info,'Successfully solved (MOSEK)') ~=1
        disp(['major',num2str(i),' fail'])
        break
   
end
    
   

%     terminate_flag=1;
%     for i=1:N_Area
%       terminate_flag =  terminate_flag && (abs(Area(i).Rank_E-trace(value(Area(i).X)'*Area(i).DirM))<0.00001);
%     end

if counter>100 || terminate_flag2
    
%     if terminate_flag==1 && counter<50
%     terminate_flag2=1;
%     for i=1:N_Area
%     terminate_flag2 = terminate_flag2 && (Area(i).Rank_E<0.0001);
%     end
    
    if terminate_flag2 == 1
    break
    else
        disp('redirection')
        counter=counter+1;
        for i=1:N_Area
        [U,S,V]=svd(value(Area(i).X));
        %Area(i).DirM=U(:,2:Area(i).N_of_phases_ext)*U(:,2:Area(i).N_of_phases_ext)';
        Area(i).DirM=U(:,2:Area(i).N_of_phases_ext)*(U(:,2:Area(i).N_of_phases_ext)'+rand(Area(i).N_of_phases_ext-1,1)*U(:,1)');
        end
    end
    counter=1;
%     else
%         break
%     end
 
else

        for i=1:N_Area
        
         [U,S,V]=svd(value(Area(i).X));
         Area(i).DirM=U(:,2:Area(i).N_of_phases_ext)*U(:,2:Area(i).N_of_phases_ext)';
%          if max([Area.Rank_E])<0.0015 && counter>1
%          Dir_M_temp=sdpvar(size(Area(i).X,1),size(Area(i).X,2));
%           obj_r=trace(value(Area(i).X)'*Dir_M_temp);
%           F_Dir=[];
%           F_Dir=[F_Dir,Dir_M_temp>=0];
%           F_Dir=[F_Dir,Dir_M_temp-eye(2*Area(i).N_of_phases_ext)<=0];
%           F_Dir=[F_Dir,trace(Dir_M_temp)==2*Area(i).N_of_phases_ext-1]; 
%           Dir_diag =optimize(F_Dir,obj_r,ops);
%              if strcmp(Dir_diag.info,'Successfully solved (MOSEK)') ~=1
%                  disp(['minor',num2str(i),' fail'])
%                  inner_break_flag=1;
%                  break
%              end  
%            %  value(obj_r)
%           Area(i).DirM=value(Dir_M_temp);
%          end
%           
           Area(i).Rank_E=trace(value(Area(i).X)'*Area(i).DirM);
         
           record(counter,i)=Area(i).Rank_E;
         end
        counter=counter+1;
        
        if inner_break_flag > 0
            break 
        end
        
        %%%
        if max([Area.Rank_E])<0.00135
        Area(i).w=5;
        end
        %%%
end
    %%%%
    %disp('error')
    %max([Area.Rank_E])
    %%%
    terminate_flag2=1;
    for i=1:N_Area
    terminate_flag2 = terminate_flag2 && (Area(i).Rank_E<0.0001);
    end

%toc   
end    
toc


X_v=zeros(N_of_phases*2,1);

for i=1:N_Area
    temp_index=1;
    for j=1:Area(i).size
        
        [U,S,V]=svd(value(Area(i).X));
        X_tmp=-U(:,1)*sqrt(S(1,1));
        if X_tmp(1,1)<0
            X_tmp=-X_tmp;
        end
        N_xtmp=size(X_tmp,1);
        node_tmp=Area(i).node(j);
        %X_v(3*(node_tmp-1)+1:3*(node_tmp-1)+3)=X_tmp(3*(j-1)+1:3*(j-1)+3);
        %X_v(N_of_phases+3*(node_tmp-1)+1:N_of_phases+3*(node_tmp-1)+3)=X_tmp(3*(j-1)+1+N_xtmp/2:3*(j-1)+3+N_xtmp/2);
          for m=1:3
              if node(node_tmp).phase(m)==1
                 X_v(node(node_tmp).index(m))= X_tmp(temp_index);
                 X_v(node(node_tmp).index(m)+N_of_phases)= X_tmp(temp_index+N_xtmp/2);
                 temp_index=temp_index+1;
              end
          end
    end
end
disp('voltage results:')
disp(X_v(1:N_of_phases)+1i*X_v(N_of_phases+1:2*N_of_phases))