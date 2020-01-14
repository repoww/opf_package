function [opt_cut_n,opt_cut_e,opt_size,cut_ln,cut_flag]=cut_into_two(E,N,ini_size,node)
%%%%%%%%%%%%%
%input: graph 
%       edges set
%       node set
%       initial variable size
%output: opt_cut
%        cut flag
%%%%%%%%%%%%%%%
gap=0;
opt_size_t=ini_size;
opt_size=zeros(2,1);
cut_flag=0;

    for i=1:size(E,1)

        A_cut=adjacency(graph(E(:,1),E(:,2)));
        A_cut(E(i,1),E(i,2))=0;
        A_cut(E(i,2),E(i,1))=0;

        G_cut=graph(A_cut);

        g1= bfsearch(G_cut,E(i,1));
        g1=sort(g1)';
        g1_edge=bfsearch(G_cut,E(i,1),'edgetonew');
        g1_edge=sort(g1_edge,2);

        g2=setdiff(N,g1);
        g2=sort(g2);
        g2_edge=bfsearch(G_cut,E(i,2),'edgetonew');
        g2_edge=sort(g2_edge,2);

        g1_ext=[g1,E(i,2)];
        g2_ext=[g2,E(i,1)];

        g1_phases=0;
         for j=1:size(g1_ext,2)
             g1_phases=g1_phases+node(g1_ext(j)).np;
         end

        g2_phases=0;
         for j=1:size(g2_ext,2)
             g2_phases=g2_phases+node(g2_ext(j)).np;
         end 

        dim_x(1,1)= (g1_phases*2)*(g1_phases*2+1)/2;
        dim_x(2,1)= (g2_phases*2)*(g2_phases*2+1)/2;

        if sum(dim_x)< opt_size_t-gap
            opt_size_t=sum(dim_x);
            phase1=g1_phases-node(E(i,2)).np;
            opt_size(1)=(phase1*2)*(phase1*2+1)/2;
            phase2=g2_phases-node(E(i,1)).np;
            opt_size(2)=(phase2*2)*(phase2*2+1)/2;
            
            opt_cut_n{1}=g1;
            opt_cut_n{2}=g2;
            
            cut_ln= E(i,:);
            
            opt_cut_e{1}=g1_edge;
            opt_cut_e{2}=g2_edge;
            cut_flag=1;
        end
        
    end
    
    
    if cut_flag==0
       opt_size=0;
       opt_cut_n=0;
       opt_cut_e=0; 
       cut_ln=0;
    end
    
