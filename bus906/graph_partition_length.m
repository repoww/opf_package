clc;
clear;
%yalmip('clear')
%BUS DATA
bus1000_node_line_data_org_length_m1
bus1000_node_line_data_sim_length2
bus1000_Y
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%graph partition%%%%%
s=zeros(N_LineSeg,1);
t=zeros(N_LineSeg,1);
for i=1:N_LineSeg
    s(i,1)= LineSeg(i).node1;
    t(i,1)= LineSeg(i).node2;   
end
N=1:N_node;
E=[s,t];
G=graph(s,t);


cut_count=0;
Area_n=1;
Area_to_cut_n=1;
Stop=0;

Area_to_cut=cell(Area_to_cut_n);
Area_set=cell(Area_n);
Edge_set=cell(Area_to_cut_n);
Node_set=cell(Area_to_cut_n);
ini_size=zeros(Area_to_cut_n,1);

Area_to_cut{1}=G;
Area_result{1}=cell(0);
Area_set{1}=G;
Edge_set{1}=E;
Node_set{1}=N;
ini_size(1,1)=inf;
index_ln=0;
index0cut=0;
while Stop~=1
   

  index2cut=0;
  for i=1:Area_to_cut_n
      
      
      [opt_cut_n,opt_cut_e,opt_size,opt_ln,cut_flag]=cut_into_two(Edge_set{i},Node_set{i},ini_size(i),node);
      if cut_flag==1
          
          if i==1
          Area_to_cut_n2=Area_to_cut_n+1;
          else
          Area_to_cut_n2=Area_to_cut_n2+1;    
          end
          
          index2cut=index2cut+1;
          Node_set2cut{index2cut}=opt_cut_n{1};
          Edge_set2cut{index2cut}=opt_cut_e{1};
          %Area_set{index2cut}=graph(opt_cut_e{1}(:,1),opt_cut_e{1}(:,2));
          ini_size2cut(index2cut)=opt_size(1,1);
          %Area_to_cut{index2cut}=Area_set{index0cut+index2cut};
          

          index2cut=index2cut+1;
          Node_set2cut{index2cut}=opt_cut_n{2};
          Edge_set2cut{index2cut}=opt_cut_e{2};
          %Area_set{index2cut}=graph(opt_cut_e{2}(:,1),opt_cut_e{2}(:,2));
          ini_size2cut(index2cut)=opt_size(2,1);
          %Area_to_cut{index2cut}=Area_set{index0cut+index2cut};
          
          index_ln=index_ln+1;
          cut_line(index_ln,:)=opt_ln;
          
      else
          
         index0cut=index0cut+1;  
         Area_result{index0cut}=Node_set{i};
         
         if i==1
          Area_to_cut_n2=Area_to_cut_n-1;
         else
          Area_to_cut_n2=Area_to_cut_n2-1;    
         end
      end
  end
  Area_to_cut_n=Area_to_cut_n2;
  Edge_set=Edge_set2cut;
  Node_set=Node_set2cut;
  ini_size=ini_size2cut;
%      if index0cut > 0 && Area_to_cut_n>0
%          Area_set={Area_no_cut{:},Area_to_cut{:}};
%      elseif index0cut <1
%          Area_set=Area_to_cut;
%      elseif Area_to_cut_n < 1
%          Area_set = Area_no_cut;       
%      end
  
   
    
    if Area_to_cut_n<1 || cut_count>100
        Stop=1;
    end
    
    cut_count=cut_count+1;
    
end


% for i=1:size(Area_result,2)
%     Area_result{i}
% end


for i=1:size(Area_result,2)
    
    element1(i)=Area_result{i}(1);
     
end

[b,ind]=sort(element1);

temp_Area=cell(1,size(Area_result,2));
for i=1:size(Area_result,2)
   temp_Area{i}=Area_result{ind(i)}; 
end

Area_result=temp_Area;


Ext_Area=cell(1,size(Area_result,2));
Ext_bnd=cell(1,size(Area_result,2));

for i=1:size(cut_line,1)
    flag=0;
    for j=1:size(Area_result,2)
    
    if ismember(cut_line(i,1),Area_result{j})
         Ext_Area{j}=[Ext_Area{j},cut_line(i,2)];
         Ext_bnd{j}=[Ext_bnd{j};cut_line(i,:)];
         flag=flag+1;
    elseif ismember(cut_line(i,2),Area_result{j})
         Ext_Area{j}=[Ext_Area{j},cut_line(i,1)];
         Ext_bnd{j}=[Ext_bnd{j};cut_line(i,:)];
         flag=flag+1;
    end
    
    if flag>=2
        break
    end
    
    end
end

% for i=1:size(Ext_bnd,2)
%     
%     element1(i)=Ext_bnd{i}(1);
%      
% end
% 
% [b,ind]=sort(element1);
% 
% temp_bnd=cell(1,size(Ext_bnd,2));
% for i=1:size(Ext_bnd,2)
%    temp_bnd{i}=Ext_bnd{ind(i)}; 
% end
% 
% Ext_bnd=temp_bnd;




for i=1:size(cut_line,1)
    
    for j=1:size(Area_result,2)
        
        if ismember(cut_line(i,1),Area_result{j})
            index1=[j, find(Ext_Area{j}==cut_line(i,2))];
            
                for k=1:size(Area_result,2)
                    
                    if ismember(cut_line(i,2),Area_result{k})
                        index2=[k, find(Ext_Area{k}==cut_line(i,1))];
                        break
                    end
                    
                end
                
                break
        end
        
    end
    
    bnd_cond(i,:)=[index1,index2];
    
end



% for i=1:size(Area_result,2)
%     Ext_Area{i}=[Area_result{i}, sort(Ext_Area{i})];
% end

for i=1:size(Area_result,2)
    Area_result{i}
    %Ext_Area{i}
    %Ext_bnd{i}
end
size(Area_result,2)
% Area_result{10}=[33,34];
% Area_result{11}=[35,36,37];
% Ext_Area{10}=[29,35];
% Ext_Area{11}=[34];
% Ext_bnd{10}(2,:)=[34,35];
% Ext_bnd{11}(1,:)=[34,35];
% bnd_cond(10,:)=[10,2,11,1];