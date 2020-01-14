function generate_boundary(A_n,A_node,b_node,node,fid,Area)
%A_n area number
%A_node extended node
%b_node boundary node
%fid=fopen('bound_data.m','w');

for i=1:size(b_node,1)

    k1=find(A_node==b_node(i,1));
    k2=find(A_node==b_node(i,2));
    
    start1=0;
    for j=1:k1-1
        start1=start1+node(A_node(j)).np;
    end
    
    start2=0;
    for j=1:k2-1
        start2=start2+node(A_node(j)).np;
    end

    fprintf(fid,'Area(%d).bnd{%d}=[',A_n,i);
    %%%%%%%%%%%%%line
    s1=start1+1;
    s2=start1+node(b_node(i,1)).np;
    s3=start1+1;
    s4=start1+node(b_node(i,1)).np;
    fprintf(fid,'Area(%d).X(%d:%d,%d:%d),',A_n,s1,s2,s3,s4);
    s1=start1+1;
    s2=start1+node(b_node(i,1)).np;
    s3=start2+1;
    s4=start2+node(b_node(i,2)).np;
    fprintf(fid,'Area(%d).X(%d:%d,%d:%d),',A_n,s1,s2,s3,s4);
    s1=start1+1;
    s2=start1+node(b_node(i,1)).np;
    s3=start1+1+Area(A_n).N_of_phases_ext;
    s4=start1+node(b_node(i,1)).np+Area(A_n).N_of_phases_ext;
    fprintf(fid,'Area(%d).X(%d:%d,%d:%d),',A_n,s1,s2,s3,s4);
    s1=start1+1;
    s2=start1+node(b_node(i,1)).np;
    s3=start2+1+Area(A_n).N_of_phases_ext;
    s4=start2+node(b_node(i,2)).np+Area(A_n).N_of_phases_ext;
    fprintf(fid,'Area(%d).X(%d:%d,%d:%d);...\n',A_n,s1,s2,s3,s4);
    %%%%%%%%%%%%%line
    s1=start2+1;
    s2=start2+node(b_node(i,2)).np;
    s3=start1+1;
    s4=start1+node(b_node(i,1)).np;
    fprintf(fid,'\t\t\t Area(%d).X(%d:%d,%d:%d),',A_n,s1,s2,s3,s4);
    s1=start2+1;
    s2=start2+node(b_node(i,2)).np;
    s3=start2+1;
    s4=start2+node(b_node(i,2)).np;
    fprintf(fid,'Area(%d).X(%d:%d,%d:%d),',A_n,s1,s2,s3,s4);
    s1=start2+1;
    s2=start2+node(b_node(i,2)).np;
    s3=start1+1+Area(A_n).N_of_phases_ext;
    s4=start1+node(b_node(i,1)).np+Area(A_n).N_of_phases_ext;
    fprintf(fid,'Area(%d).X(%d:%d,%d:%d),',A_n,s1,s2,s3,s4);
    s1=start2+1;
    s2=start2+node(b_node(i,2)).np;
    s3=start2+1+Area(A_n).N_of_phases_ext;
    s4=start2+node(b_node(i,2)).np+Area(A_n).N_of_phases_ext;
    fprintf(fid,'Area(%d).X(%d:%d,%d:%d);...\n',A_n,s1,s2,s3,s4);
    %%%%%%%%%%%%%line
    s1=start1+1+Area(A_n).N_of_phases_ext;
    s2=start1+node(b_node(i,1)).np+Area(A_n).N_of_phases_ext;
    s3=start1+1;
    s4=start1+node(b_node(i,1)).np;
    fprintf(fid,'\t\t\t Area(%d).X(%d:%d,%d:%d),',A_n,s1,s2,s3,s4);
    s1=start1+1+Area(A_n).N_of_phases_ext;
    s2=start1+node(b_node(i,1)).np+Area(A_n).N_of_phases_ext;
    s3=start2+1;
    s4=start2+node(b_node(i,2)).np;
    fprintf(fid,'Area(%d).X(%d:%d,%d:%d),',A_n,s1,s2,s3,s4);
    s1=start1+1+Area(A_n).N_of_phases_ext;
    s2=start1+node(b_node(i,1)).np+Area(A_n).N_of_phases_ext;
    s3=start1+1+Area(A_n).N_of_phases_ext;
    s4=start1+node(b_node(i,1)).np+Area(A_n).N_of_phases_ext;
    fprintf(fid,'Area(%d).X(%d:%d,%d:%d),',A_n,s1,s2,s3,s4);
    s1=start1+1+Area(A_n).N_of_phases_ext;
    s2=start1+node(b_node(i,1)).np+Area(A_n).N_of_phases_ext;
    s3=start2+1+Area(A_n).N_of_phases_ext;
    s4=start2+node(b_node(i,2)).np+Area(A_n).N_of_phases_ext;
    fprintf(fid,'Area(%d).X(%d:%d,%d:%d);...\n',A_n,s1,s2,s3,s4);
    %%%%%%%%%%%%%line
    s1=start2+1+Area(A_n).N_of_phases_ext;
    s2=start2+node(b_node(i,2)).np+Area(A_n).N_of_phases_ext;
    s3=start1+1;
    s4=start1+node(b_node(i,1)).np;
    fprintf(fid,'\t\t\t Area(%d).X(%d:%d,%d:%d),',A_n,s1,s2,s3,s4);
    s1=start2+1+Area(A_n).N_of_phases_ext;
    s2=start2+node(b_node(i,2)).np+Area(A_n).N_of_phases_ext;
    s3=start2+1;
    s4=start2+node(b_node(i,2)).np;
    fprintf(fid,'Area(%d).X(%d:%d,%d:%d),',A_n,s1,s2,s3,s4);
    s1=start2+1+Area(A_n).N_of_phases_ext;
    s2=start2+node(b_node(i,2)).np+Area(A_n).N_of_phases_ext;
    s3=start1+1+Area(A_n).N_of_phases_ext;
    s4=start1+node(b_node(i,1)).np+Area(A_n).N_of_phases_ext;
    fprintf(fid,'Area(%d).X(%d:%d,%d:%d),',A_n,s1,s2,s3,s4);
    s1=start2+1+Area(A_n).N_of_phases_ext;
    s2=start2+node(b_node(i,2)).np+Area(A_n).N_of_phases_ext;
    s3=start2+1+Area(A_n).N_of_phases_ext;
    s4=start2+node(b_node(i,2)).np+Area(A_n).N_of_phases_ext;
    fprintf(fid,'Area(%d).X(%d:%d,%d:%d)];\n\n',A_n,s1,s2,s3,s4);
    
   
end

    %fclose(fid);