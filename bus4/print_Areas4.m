fid=fopen('bus4_1Area_data.m','w');%%%%%%%%%%%%%change file name here

for i= 1:size(Area_result,2)


fprintf(fid,'%%%%%%%%%%%% Area(%d) DATA %%%%%%%%%%%%\n', i);

temp_size=size(Area_result{i},2);

if temp_size>=2
fprintf(fid,['Area(%d).node=[' repmat('%d,', 1, temp_size-1) '%d];\n'],i,Area_result{i}(1:end-1),Area_result{i}(end));
else
fprintf(fid,'Area(%d).node=[%d];\n',i,Area_result{i}(1));    
end
fprintf(fid,'Area(%d).size=size(Area(%d).node,2);\n',i,i);

tot_node=[Area_result{i},sort(Ext_Area{i})];

temp_size=size(tot_node,2);

fprintf(fid,['Area(%d).extnode=[' repmat('%d,', 1, temp_size-1) '%d];\n'],i,tot_node(1:end-1),tot_node(end));

fprintf(fid,'Area(%d).extsize=size(Area(%d).extnode,2);\n',i,i);

fprintf(fid,'\n');
fprintf(fid,'Area(%d).N_of_phases=0;\n',i);

fprintf(fid,'for n=1:Area(%d).size\n',i);

fprintf(fid,'\t Area(%d).N_of_phases=Area(%d).N_of_phases+node(Area(%d).node(n)).np;\n',i,i,i);

fprintf(fid,'end\n');
fprintf(fid,'\n');

fprintf(fid,'\n');
fprintf(fid,'Area(%d).N_of_phases_ext=0;\n',i);

fprintf(fid,'for n=1:Area(%d).extsize\n',i);

fprintf(fid,'\t Area(%d).N_of_phases_ext=Area(%d).N_of_phases_ext+node(Area(%d).extnode(n)).np;\n',i,i,i);

fprintf(fid,'end\n');
fprintf(fid,'\n');


fprintf(fid,'\n');
fprintf(fid,'Area(%d).G_of_phases=0;\n',i);

fprintf(fid,'for n=1:Area(%d).size\n',i);
% fprintf(fid,'\t if Area(%d).node(n)==1\n',i);
% fprintf(fid,'\t Area(%d).G_of_phases=Area(%d).G_of_phases+3;\n',i,i);
% fprintf(fid,'\t else\n');
% fprintf(fid,'\t if node(Area(%d).node(n)).g==1\n',i);
% fprintf(fid,'\t\t for j=1:3\n');
% fprintf(fid,'\t\t\t if node(Area(%d).node(n)).P(j)>0\n',i);
% fprintf(fid,'\t\t\t Area(%d).G_of_phases=Area(%d).G_of_phases+1;\n',i,i);
% fprintf(fid,'\t\t\t end\n');
% fprintf(fid,'\t\t end\n');
% fprintf(fid,'\t end\n');
% fprintf(fid,'\t end\n');
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
fprintf(fid,'\t if node(Area(%d).node(n)).g==1\n',i);
fprintf(fid,'\t Area(%d).G_of_phases=Area(%d).G_of_phases+3;\n',i,i);
fprintf(fid,'\t end\n');
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
fprintf(fid,'end\n');
fprintf(fid,'\n');



fprintf(fid,'Area(%d).X=sdpvar(2*Area(%d).N_of_phases_ext,2*Area(%d).N_of_phases_ext);\n',i,i,i);
fprintf(fid,'\n');
    if i==1
        fprintf(fid,'Area(1).X(1:3,1:3)=[1;-0.5;-0.5]*[1,-0.5,-0.5]*1.05^2;\n');
        fprintf(fid,'Area(1).X(Area(1).N_of_phases_ext+1:Area(1).N_of_phases_ext+3,Area(1).N_of_phases_ext+1:Area(1).N_of_phases_ext+3)=...\n');
        fprintf(fid,'\t\t[0;-sqrt(3)/2;sqrt(3)/2]*[0,-sqrt(3)/2,sqrt(3)/2]*1.05^2;\n');
        fprintf(fid,'Area(1).X(1:3,Area(1).N_of_phases_ext+1:Area(1).N_of_phases_ext+3)=...\n');
        fprintf(fid,'\t\t[1;-0.5;-0.5]*[0,-sqrt(3)/2,sqrt(3)/2]*1.05^2;\n');
        fprintf(fid,'Area(1).X(Area(1).N_of_phases_ext+1:Area(1).N_of_phases_ext+3,1:3)=...\n');
        fprintf(fid,'\t\t[0;-sqrt(3)/2;sqrt(3)/2]* [1,-0.5,-0.5]*1.05^2;\n');
    end
fprintf(fid,'\n');
fprintf(fid,'Area(%d).cg=sdpvar(Area(%d).G_of_phases,1);\n',i,i);
fprintf(fid,'\n');

fprintf(fid,'Area(%d).Y=zeros(Area(%d).N_of_phases_ext,Area(%d).N_of_phases_ext);\n',i,i,i);
fprintf(fid,'row_count1=1;\n');    
fprintf(fid,'row_count2=0;\n');    
fprintf(fid,'col_count1=1;\n');    
fprintf(fid,'col_count2=0;\n');    

fprintf(fid,'for i=1:Area(%d).extsize\n',i); 
fprintf(fid,'\t row_count2=row_count2+node(Area(%d).extnode(i)).np;\n',i);
fprintf(fid,'\t for j=1:Area(%d).extsize\n',i);
fprintf(fid,'\t\t  col_count2=col_count2+node(Area(%d).extnode(j)).np;\n',i);
fprintf(fid,'\t\t  Area(%d).Y(row_count1:row_count2,col_count1:col_count2)=...\n',i);
fprintf(fid,'\t\t  Y(min(node(Area(%d).extnode(i)).index):max(node(Area(%d).extnode(i)).index),min(node(Area(%d).extnode(j)).index):max(node(Area(%d).extnode(j)).index));\n',i,i,i,i);
fprintf(fid,'\t\t  col_count1=col_count1+node(Area(%d).extnode(j)).np;\n',i);
fprintf(fid,'\t end\n');
fprintf(fid,'\t row_count1=row_count1+node(Area(%d).extnode(i)).np;\n',i);
fprintf(fid,'\t col_count1=1;\n');
fprintf(fid,'\t col_count2=0;\n');
fprintf(fid,'end\n');

fprintf(fid,'\n');    

end
fclose(fid);

bus4_1Area_data;%%%%%%%%%%%%%change file name here

fid=fopen('bus4_1Area_data_p.m','a');%%%%%%%%%%%%%change file name here
for i= 1:size(Area_result,2)
    fprintf(fid,'%%%%%%%% Bounary data Area(%d) %%%%%%%%\n',i);
    fprintf(fid,'Area(%d).nb=%d;\n',i,size(Ext_Area{i},2));
    %for j=1:size(Ext_bnd{i},1)
    tot_node=[Area_result{i},sort(Ext_Area{i})];
    generate_boundary(i,tot_node,Ext_bnd{i},node,fid,Area)
    %fprintf(fid,'\n');
    %end
end

fprintf(fid,'%%%%%%%% Boundary index %%%%%%%%\n');

temp_size=size(bnd_cond,2);
fprintf(fid,['Bnd_index=[' repmat(' %d,', 1, temp_size-1) ' %d;...\n'],bnd_cond(1,1:end-1),bnd_cond(1,end));

for i=2:size(bnd_cond,1)-1
fprintf(fid,['\t\t   ' repmat(' %d,', 1, temp_size-1) ' %d;...\n'],bnd_cond(i,1:end-1),bnd_cond(i,end));
    
end
fprintf(fid,['\t\t   ' repmat(' %d,', 1, temp_size-1) ' %d];\n'],bnd_cond(end,1:end-1),bnd_cond(end,end));

fprintf(fid,'\n'); 
fprintf(fid,'tat=1;\n');
fprintf(fid,'%%%%finish%%%%\n');
fclose(fid);
