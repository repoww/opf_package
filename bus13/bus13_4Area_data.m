%%%%%% Area(1) DATA %%%%%%
Area(1).node=[1,2,3,4];
Area(1).size=size(Area(1).node,2);
Area(1).extnode=[1,2,3,4,5,7];
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

Area(1).X(1:3,1:3)=[1;-0.5;-0.5]*[1,-0.5,-0.5]*1.05^2;
Area(1).X(Area(1).N_of_phases_ext+1:Area(1).N_of_phases_ext+3,Area(1).N_of_phases_ext+1:Area(1).N_of_phases_ext+3)=...
		[0;-sqrt(3)/2;sqrt(3)/2]*[0,-sqrt(3)/2,sqrt(3)/2]*1.05^2;
Area(1).X(1:3,Area(1).N_of_phases_ext+1:Area(1).N_of_phases_ext+3)=...
		[1;-0.5;-0.5]*[0,-sqrt(3)/2,sqrt(3)/2]*1.05^2;
Area(1).X(Area(1).N_of_phases_ext+1:Area(1).N_of_phases_ext+3,1:3)=...
		[0;-sqrt(3)/2;sqrt(3)/2]* [1,-0.5,-0.5]*1.05^2;

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

%%%%%% Area(2) DATA %%%%%%
Area(2).node=[5,6];
Area(2).size=size(Area(2).node,2);
Area(2).extnode=[5,6,4];
Area(2).extsize=size(Area(2).extnode,2);

Area(2).N_of_phases=0;
for n=1:Area(2).size
	 Area(2).N_of_phases=Area(2).N_of_phases+node(Area(2).node(n)).np;
end


Area(2).N_of_phases_ext=0;
for n=1:Area(2).extsize
	 Area(2).N_of_phases_ext=Area(2).N_of_phases_ext+node(Area(2).extnode(n)).np;
end


Area(2).G_of_phases=0;
for n=1:Area(2).size
	 if node(Area(2).node(n)).g==1
	 Area(2).G_of_phases=Area(2).G_of_phases+3;
	 end
end

Area(2).X=sdpvar(2*Area(2).N_of_phases_ext,2*Area(2).N_of_phases_ext);


Area(2).cg=sdpvar(Area(2).G_of_phases,1);

Area(2).Y=zeros(Area(2).N_of_phases_ext,Area(2).N_of_phases_ext);
row_count1=1;
row_count2=0;
col_count1=1;
col_count2=0;
for i=1:Area(2).extsize
	 row_count2=row_count2+node(Area(2).extnode(i)).np;
	 for j=1:Area(2).extsize
		  col_count2=col_count2+node(Area(2).extnode(j)).np;
		  Area(2).Y(row_count1:row_count2,col_count1:col_count2)=...
		  Y(min(node(Area(2).extnode(i)).index):max(node(Area(2).extnode(i)).index),min(node(Area(2).extnode(j)).index):max(node(Area(2).extnode(j)).index));
		  col_count1=col_count1+node(Area(2).extnode(j)).np;
	 end
	 row_count1=row_count1+node(Area(2).extnode(i)).np;
	 col_count1=1;
	 col_count2=0;
end

%%%%%% Area(3) DATA %%%%%%
Area(3).node=[7];
Area(3).size=size(Area(3).node,2);
Area(3).extnode=[7,4,10];
Area(3).extsize=size(Area(3).extnode,2);

Area(3).N_of_phases=0;
for n=1:Area(3).size
	 Area(3).N_of_phases=Area(3).N_of_phases+node(Area(3).node(n)).np;
end


Area(3).N_of_phases_ext=0;
for n=1:Area(3).extsize
	 Area(3).N_of_phases_ext=Area(3).N_of_phases_ext+node(Area(3).extnode(n)).np;
end


Area(3).G_of_phases=0;
for n=1:Area(3).size
	 if node(Area(3).node(n)).g==1
	 Area(3).G_of_phases=Area(3).G_of_phases+3;
	 end
end

Area(3).X=sdpvar(2*Area(3).N_of_phases_ext,2*Area(3).N_of_phases_ext);


Area(3).cg=sdpvar(Area(3).G_of_phases,1);

Area(3).Y=zeros(Area(3).N_of_phases_ext,Area(3).N_of_phases_ext);
row_count1=1;
row_count2=0;
col_count1=1;
col_count2=0;
for i=1:Area(3).extsize
	 row_count2=row_count2+node(Area(3).extnode(i)).np;
	 for j=1:Area(3).extsize
		  col_count2=col_count2+node(Area(3).extnode(j)).np;
		  Area(3).Y(row_count1:row_count2,col_count1:col_count2)=...
		  Y(min(node(Area(3).extnode(i)).index):max(node(Area(3).extnode(i)).index),min(node(Area(3).extnode(j)).index):max(node(Area(3).extnode(j)).index));
		  col_count1=col_count1+node(Area(3).extnode(j)).np;
	 end
	 row_count1=row_count1+node(Area(3).extnode(i)).np;
	 col_count1=1;
	 col_count2=0;
end

%%%%%% Area(4) DATA %%%%%%
Area(4).node=[8,9,10,11,12,13];
Area(4).size=size(Area(4).node,2);
Area(4).extnode=[8,9,10,11,12,13,7];
Area(4).extsize=size(Area(4).extnode,2);

Area(4).N_of_phases=0;
for n=1:Area(4).size
	 Area(4).N_of_phases=Area(4).N_of_phases+node(Area(4).node(n)).np;
end


Area(4).N_of_phases_ext=0;
for n=1:Area(4).extsize
	 Area(4).N_of_phases_ext=Area(4).N_of_phases_ext+node(Area(4).extnode(n)).np;
end


Area(4).G_of_phases=0;
for n=1:Area(4).size
	 if node(Area(4).node(n)).g==1
	 Area(4).G_of_phases=Area(4).G_of_phases+3;
	 end
end

Area(4).X=sdpvar(2*Area(4).N_of_phases_ext,2*Area(4).N_of_phases_ext);


Area(4).cg=sdpvar(Area(4).G_of_phases,1);

Area(4).Y=zeros(Area(4).N_of_phases_ext,Area(4).N_of_phases_ext);
row_count1=1;
row_count2=0;
col_count1=1;
col_count2=0;
for i=1:Area(4).extsize
	 row_count2=row_count2+node(Area(4).extnode(i)).np;
	 for j=1:Area(4).extsize
		  col_count2=col_count2+node(Area(4).extnode(j)).np;
		  Area(4).Y(row_count1:row_count2,col_count1:col_count2)=...
		  Y(min(node(Area(4).extnode(i)).index):max(node(Area(4).extnode(i)).index),min(node(Area(4).extnode(j)).index):max(node(Area(4).extnode(j)).index));
		  col_count1=col_count1+node(Area(4).extnode(j)).np;
	 end
	 row_count1=row_count1+node(Area(4).extnode(i)).np;
	 col_count1=1;
	 col_count2=0;
end

%%%% Bounary data Area(1) %%%%
Area(1).nb=2;
Area(1).bnd{1}=[Area(1).X(8:10,8:10),Area(1).X(8:10,11:13),Area(1).X(8:10,24:26),Area(1).X(8:10,27:29);...
			 Area(1).X(11:13,8:10),Area(1).X(11:13,11:13),Area(1).X(11:13,24:26),Area(1).X(11:13,27:29);...
			 Area(1).X(24:26,8:10),Area(1).X(24:26,11:13),Area(1).X(24:26,24:26),Area(1).X(24:26,27:29);...
			 Area(1).X(27:29,8:10),Area(1).X(27:29,11:13),Area(1).X(27:29,24:26),Area(1).X(27:29,27:29)];

Area(1).bnd{2}=[Area(1).X(8:10,8:10),Area(1).X(8:10,14:16),Area(1).X(8:10,24:26),Area(1).X(8:10,30:32);...
			 Area(1).X(14:16,8:10),Area(1).X(14:16,14:16),Area(1).X(14:16,24:26),Area(1).X(14:16,30:32);...
			 Area(1).X(24:26,8:10),Area(1).X(24:26,14:16),Area(1).X(24:26,24:26),Area(1).X(24:26,30:32);...
			 Area(1).X(30:32,8:10),Area(1).X(30:32,14:16),Area(1).X(30:32,24:26),Area(1).X(30:32,30:32)];

%%%% Bounary data Area(2) %%%%
Area(2).nb=1;
Area(2).bnd{1}=[Area(2).X(7:9,7:9),Area(2).X(7:9,1:3),Area(2).X(7:9,16:18),Area(2).X(7:9,10:12);...
			 Area(2).X(1:3,7:9),Area(2).X(1:3,1:3),Area(2).X(1:3,16:18),Area(2).X(1:3,10:12);...
			 Area(2).X(16:18,7:9),Area(2).X(16:18,1:3),Area(2).X(16:18,16:18),Area(2).X(16:18,10:12);...
			 Area(2).X(10:12,7:9),Area(2).X(10:12,1:3),Area(2).X(10:12,16:18),Area(2).X(10:12,10:12)];

%%%% Bounary data Area(3) %%%%
Area(3).nb=2;
Area(3).bnd{1}=[Area(3).X(4:6,4:6),Area(3).X(4:6,1:3),Area(3).X(4:6,13:15),Area(3).X(4:6,10:12);...
			 Area(3).X(1:3,4:6),Area(3).X(1:3,1:3),Area(3).X(1:3,13:15),Area(3).X(1:3,10:12);...
			 Area(3).X(13:15,4:6),Area(3).X(13:15,1:3),Area(3).X(13:15,13:15),Area(3).X(13:15,10:12);...
			 Area(3).X(10:12,4:6),Area(3).X(10:12,1:3),Area(3).X(10:12,13:15),Area(3).X(10:12,10:12)];

Area(3).bnd{2}=[Area(3).X(1:3,1:3),Area(3).X(1:3,7:9),Area(3).X(1:3,10:12),Area(3).X(1:3,16:18);...
			 Area(3).X(7:9,1:3),Area(3).X(7:9,7:9),Area(3).X(7:9,10:12),Area(3).X(7:9,16:18);...
			 Area(3).X(10:12,1:3),Area(3).X(10:12,7:9),Area(3).X(10:12,10:12),Area(3).X(10:12,16:18);...
			 Area(3).X(16:18,1:3),Area(3).X(16:18,7:9),Area(3).X(16:18,10:12),Area(3).X(16:18,16:18)];

%%%% Bounary data Area(4) %%%%
Area(4).nb=1;
Area(4).bnd{1}=[Area(4).X(14:16,14:16),Area(4).X(14:16,4:6),Area(4).X(14:16,30:32),Area(4).X(14:16,20:22);...
			 Area(4).X(4:6,14:16),Area(4).X(4:6,4:6),Area(4).X(4:6,30:32),Area(4).X(4:6,20:22);...
			 Area(4).X(30:32,14:16),Area(4).X(30:32,4:6),Area(4).X(30:32,30:32),Area(4).X(30:32,20:22);...
			 Area(4).X(20:22,14:16),Area(4).X(20:22,4:6),Area(4).X(20:22,30:32),Area(4).X(20:22,20:22)];

%%%% Boundary index %%%%
Bnd_index=[ 1, 1, 2, 1;...
		    1, 2, 3, 1;...
		    3, 2, 4, 1];

tat=1;
%%finish%%
