%% node data %%
%%%%%%%%%%%Slack Bus data%%%%%%%%%%%%%%%%%
S_base=1; %1MW
Zmn=[0.0693+0.2036i,0.0312+0.1003i,0.0316+0.0847i;...
    0.0312+0.1003i,0.0675+0.2096i,0.0307+0.0770i;
    0.0316+0.0847i,0.0307+0.0770i,0.0683+0.2070i];%%%%%Ohm
%%%%node 1 slack bus%%%%%%%%%
node(1).phase=[1,1,1];
node(1).np=3;
node(1).P=[0,0,0];
node(1).Q=[0,0,0];
node(1).g=1;
%%%%%%%%PQ bus data%%%%%%%%
%%%node2%%%
node(2).phase=[1,1,1];
node(2).np=3;
node(2).P=[70,50,50]/1000/S_base;%[50,50,50]
node(2).Q=[30,20,20]/1000/S_base;
node(2).g=0;
%%%node3%%%
node(3).phase=[1,1,1];
node(3).np=3;
node(3).P=[0,0,0]/1000/S_base;
node(3).Q=[0,0,0]/1000/S_base;
node(3).g=0;
%%%node4%%%
node(4).phase=[1,1,1];
node(4).np=3;
node(4).P=[150,110,130]/1000/S_base;%[130,130,130]
node(4).Q=[100,72,82]/1000/S_base;
node(4).g=0;
%%%node5%%%
node(5).phase=[1,1,1];
node(5).np=3;
node(5).P=[150,110,130]/1000/S_base;%[130,130,130]
node(5).Q=[100,72,82]/1000/S_base;
node(5).g=1;
%%%node6%%%
node(6).phase=[1,1,1];
node(6).np=3;
%node(6).P=[110,110,110]/1000/S_base;
%node(6).Q=[60,60,60]/1000/S_base;
node(6).P=[0,0,0]/1000/S_base;
node(6).Q=[0,0,0]/1000/S_base;
node(6).g=0;
%%%node7%%%
node(7).phase=[1,1,1];
node(7).np=3;
node(7).P=[130,100,110]/1000/S_base;%[110,110,110]
node(7).Q=[80,50,60]/1000/S_base;
node(7).g=1;
%%%node8%%%
node(8).phase=[1,1,1];
node(8).np=3;
node(8).P=[0,0,0]/1000/S_base;
node(8).Q=[0,0,0]/1000/S_base;
node(8).g=0;
%%%node9%%%
node(9).phase=[1,1,1];
node(9).np=3;
node(9).P=[100,80,90]/1000/S_base;%[90,90,90]
node(9).Q=[30,30,30]/1000/S_base;
node(9).g=0;
%%%node10%%%
node(10).phase=[1,1,1];
node(10).np=3;
node(10).P=[100,80,90]/1000/S_base;%[90,90,90]
node(10).Q=[50,30,30]/1000/S_base;
node(10).g=0;
%%%%
N_node = size(node,2);
%%%%%%%Line info%%%%%%%

%%%%%%%%%%%%%%%%%
LineSeg(1).node1 = 1;
LineSeg(1).node2 = 2;
LineSeg(1).Vbase = 4.16/sqrt(3);
LineSeg(1).phase=[1,1,1];
LineSeg(1).np=3;
LineSeg(1).Z_pu = Zmn*S_base/(LineSeg(1).Vbase^2);
LineSeg(1).Y_pu = inv(LineSeg(1).Z_pu);  
LineSeg(1).B_pu= 0;
%%%%%%%%%%%%%
LineSeg(2).node1 = 2;
LineSeg(2).node2 = 4;
LineSeg(2).Vbase = 4.16/sqrt(3);
LineSeg(2).phase=[1,1,1];
LineSeg(2).np=3;
LineSeg(2).Z_pu = Zmn*S_base/(LineSeg(2).Vbase^2);
LineSeg(2).Y_pu = inv(LineSeg(2).Z_pu);
LineSeg(2).B_pu= 0;
%%%%%%%%%%%%%
LineSeg(3).node1 = 4;
LineSeg(3).node2 = 5;
LineSeg(3).Vbase = 4.16/sqrt(3);
LineSeg(3).phase=[1,1,1];
LineSeg(3).np=3;
LineSeg(3).Z_pu = Zmn*S_base/(LineSeg(3).Vbase^2);
LineSeg(3).Y_pu = inv(LineSeg(3).Z_pu);
LineSeg(3).B_pu= 0;
%%%%%%%%%%%%%
LineSeg(4).node1 = 2;
LineSeg(4).node2 = 3;
LineSeg(4).Vbase = 4.16/sqrt(3);
LineSeg(4).phase=[1,1,1];
LineSeg(4).np=3;
LineSeg(4).Z_pu = Zmn*S_base/(LineSeg(4).Vbase^2);
LineSeg(4).Y_pu = inv(LineSeg(4).Z_pu);
LineSeg(4).B_pu= 0;
%%%%%%%%%%%%%
LineSeg(5).node1 = 3;
LineSeg(5).node2 = 6;
LineSeg(5).Vbase = 4.16/sqrt(3);
LineSeg(5).phase=[1,1,1];
LineSeg(5).np=3;
LineSeg(5).Z_pu = Zmn*S_base/(LineSeg(5).Vbase^2);
LineSeg(5).Y_pu = inv(LineSeg(5).Z_pu);
LineSeg(5).B_pu= 0;
%%%%%%%%%%%%%
LineSeg(6).node1 = 6;
LineSeg(6).node2 = 7;
LineSeg(6).Vbase = 4.16/sqrt(3);
LineSeg(6).phase=[1,1,1];
LineSeg(6).np=3;
LineSeg(6).Z_pu = Zmn*S_base/(LineSeg(6).Vbase^2);
LineSeg(6).Y_pu = inv(LineSeg(6).Z_pu);
LineSeg(6).B_pu= 0;
%%%%%%%%%%%%%
LineSeg(7).node1 = 3;
LineSeg(7).node2 = 8;
LineSeg(7).Vbase = 4.16/sqrt(3);
LineSeg(7).phase=[1,1,1];
LineSeg(7).np=3;
LineSeg(7).Z_pu = Zmn*S_base/(LineSeg(7).Vbase^2);
LineSeg(7).Y_pu = inv(LineSeg(7).Z_pu);
LineSeg(7).B_pu= 0;
%%%%%%%%%%%%%
LineSeg(8).node1 = 8;
LineSeg(8).node2 = 9;
LineSeg(8).Vbase = 4.16/sqrt(3);
LineSeg(8).phase=[1,1,1];
LineSeg(8).np=3;
LineSeg(8).Z_pu = Zmn*S_base/(LineSeg(8).Vbase^2);
LineSeg(8).Y_pu = inv(LineSeg(8).Z_pu);
LineSeg(8).B_pu= 0;
%%%%%%%%%%%%%
LineSeg(9).node1 = 9;
LineSeg(9).node2 = 10;
LineSeg(9).Vbase = 4.16/sqrt(3);
LineSeg(9).phase=[1,1,1];
LineSeg(9).np=3;
LineSeg(9).Z_pu = Zmn*S_base/(LineSeg(9).Vbase^2);
LineSeg(9).Y_pu = inv(LineSeg(9).Z_pu);
LineSeg(9).B_pu= 0;
%%%%%%%%%%%%%%%
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