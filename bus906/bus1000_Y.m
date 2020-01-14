%%%%%%%%%%%%%%adimittance matrix%%%%%%%%%%%%%%%%%%%%%
Y=zeros(3*N_node,3*N_node);

for i=1:N_LineSeg
    node1=LineSeg(i).node1;
    node2=LineSeg(i).node2;
    Y(3*(node1-1)+1:3*node1,3*(node2-1)+1:3*node2)=-LineSeg(i).Y_pu;
    Y(3*(node2-1)+1:3*node2,3*(node1-1)+1:3*node1)=-LineSeg(i).Y_pu;
    Y(3*(node1-1)+1:3*node1,3*(node1-1)+1:3*node1)=Y(3*(node1-1)+1:3*node1,3*(node1-1)+1:3*node1)...
                                                   +LineSeg(i).Y_pu+0.5i*LineSeg(i).B_pu;
    Y(3*(node2-1)+1:3*node2,3*(node2-1)+1:3*node2)=Y(3*(node2-1)+1:3*node2,3*(node2-1)+1:3*node2)...
                                                   +LineSeg(i).Y_pu+0.5i*LineSeg(i).B_pu;                                           
end

% for i=1:N_node
%     for j=1:N_node
%         if (j==i)
%             Y_temp=0;
%             for k=1:N_LineSeg
%                 if(LineSeg(k).node1==i)||(LineSeg(k).node2==i)
%                     Y_temp=Y_temp+LineSeg(k).Y_pu + 0.5i*LineSeg(k).B_pu;
%                 end
%             end
%             Y(3*(i-1)+1:3*i,3*(j-1)+1:3*j)=Y_temp;%deal(Y_temp);
%         else
%             Y_temp=0;
%             for k=1:N_LineSeg
%                 if((LineSeg(k).node1==i)&&(LineSeg(k).node2==j)) ||...
%                   ((LineSeg(k).node2==i)&&(LineSeg(k).node1==j))     
%                     Y_temp=Y_temp-LineSeg(k).Y_pu;
%                 end
%             end
%             Y(3*(i-1)+1:3*i,3*(j-1)+1:3*j)=Y_temp;%deal(Y_temp);
%         end
%     end
%     
% end
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