%%%%%% Area(1) DATA %%%%%%
Area(1).node=[1,2,3,4,5,6,7,8,9,10];
Area(1).size=size(Area(1).node,2);
Area(1).extnode=[1,2,3,4,5,6,7,8,9,10];
Area(1).extsize=size(Area(1).extnode,2);

Area(1).N_of_phases=0;
for n=1:Area(1).size
	 Area(1).N_of_phases=Area(1).N_of_phases+node(Area(1).node(n)).np;
end


Area(1).N_of_phases_ext=0;
for n=1:Area(1).extsize
	 Area(1).N_of_phases_ext=Area(1).N_of_phases_ext+node(Area(1).extnode(n)).np;
end


Area(1).G_of_phases=0;
for n=1:Area(1).size
	 if node(Area(1).node(n)).g==1
	 Area(1).G_of_phases=Area(1).G_of_phases+3;
	 end
end

Area(1).X=sdpvar(2*Area(1).N_of_phases_ext,2*Area(1).N_of_phases_ext);

Area(1).X(1:3,1:3)=[1;-0.5;-0.5]*[1,-0.5,-0.5];
Area(1).X(Area(1).N_of_phases_ext+1:Area(1).N_of_phases_ext+3,Area(1).N_of_phases_ext+1:Area(1).N_of_phases_ext+3)=...
		[0;-sqrt(3)/2;sqrt(3)/2]*[0,-sqrt(3)/2,sqrt(3)/2];
Area(1).X(1:3,Area(1).N_of_phases_ext+1:Area(1).N_of_phases_ext+3)=...
		[1;-0.5;-0.5]*[0,-sqrt(3)/2,sqrt(3)/2];
Area(1).X(Area(1).N_of_phases_ext+1:Area(1).N_of_phases_ext+3,1:3)=...
		[0;-sqrt(3)/2;sqrt(3)/2]* [1,-0.5,-0.5];

Area(1).cg=sdpvar(Area(1).G_of_phases,1);

Area(1).Y=zeros(Area(1).N_of_phases_ext,Area(1).N_of_phases_ext);
row_count1=1;
row_count2=0;
col_count1=1;
col_count2=0;
for i=1:Area(1).extsize
	 row_count2=row_count2+node(Area(1).extnode(i)).np;
	 for j=1:Area(1).extsize
		  col_count2=col_count2+node(Area(1).extnode(j)).np;
		  Area(1).Y(row_count1:row_count2,col_count1:col_count2)=...
		  Y(min(node(Area(1).extnode(i)).index):max(node(Area(1).extnode(i)).index),min(node(Area(1).extnode(j)).index):max(node(Area(1).extnode(j)).index));
		  col_count1=col_count1+node(Area(1).extnode(j)).np;
	 end
	 row_count1=row_count1+node(Area(1).extnode(i)).np;
	 col_count1=1;
	 col_count2=0;
end

%%%% Bounary data Area(1) %%%%
Area(1).nb=0;
Bnd_index=[];