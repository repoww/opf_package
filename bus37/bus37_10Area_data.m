
%%%%%% Area(1) DATA %%%%%%
Area(1).node=[1,2,3,7];
Area(1).size=size(Area(1).node,2);
Area(1).extnode=[1,2,3,7,5,8,17];
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
Area(2).node=[4,5,6];
Area(2).size=size(Area(2).node,2);
Area(2).extnode=[4,5,6,3];
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
Area(3).node=[8,13,14];
Area(3).size=size(Area(3).node,2);
Area(3).extnode=[8,13,14,7,9];
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
Area(4).node=[9,15,16];
Area(4).size=size(Area(4).node,2);
Area(4).extnode=[9,15,16,8,10];
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

%%%%%% Area(5) DATA %%%%%%
Area(5).node=[10,11,12];
Area(5).size=size(Area(5).node,2);
Area(5).extnode=[10,11,12,9];
Area(5).extsize=size(Area(5).extnode,2);

Area(5).N_of_phases=0;
for n=1:Area(5).size
	 Area(5).N_of_phases=Area(5).N_of_phases+node(Area(5).node(n)).np;
end


Area(5).N_of_phases_ext=0;
for n=1:Area(5).extsize
	 Area(5).N_of_phases_ext=Area(5).N_of_phases_ext+node(Area(5).extnode(n)).np;
end


Area(5).G_of_phases=0;
for n=1:Area(5).size
	 if node(Area(5).node(n)).g==1
	 Area(5).G_of_phases=Area(5).G_of_phases+3;
	 end
end

Area(5).X=sdpvar(2*Area(5).N_of_phases_ext,2*Area(5).N_of_phases_ext);


Area(5).cg=sdpvar(Area(5).G_of_phases,1);

Area(5).Y=zeros(Area(5).N_of_phases_ext,Area(5).N_of_phases_ext);
row_count1=1;
row_count2=0;
col_count1=1;
col_count2=0;
for i=1:Area(5).extsize
	 row_count2=row_count2+node(Area(5).extnode(i)).np;
	 for j=1:Area(5).extsize
		  col_count2=col_count2+node(Area(5).extnode(j)).np;
		  Area(5).Y(row_count1:row_count2,col_count1:col_count2)=...
		  Y(min(node(Area(5).extnode(i)).index):max(node(Area(5).extnode(i)).index),min(node(Area(5).extnode(j)).index):max(node(Area(5).extnode(j)).index));
		  col_count1=col_count1+node(Area(5).extnode(j)).np;
	 end
	 row_count1=row_count1+node(Area(5).extnode(i)).np;
	 col_count1=1;
	 col_count2=0;
end

%%%%%% Area(6) DATA %%%%%%
Area(6).node=[17,18,22];
Area(6).size=size(Area(6).node,2);
Area(6).extnode=[17,18,22,3,19,23];
Area(6).extsize=size(Area(6).extnode,2);

Area(6).N_of_phases=0;
for n=1:Area(6).size
	 Area(6).N_of_phases=Area(6).N_of_phases+node(Area(6).node(n)).np;
end


Area(6).N_of_phases_ext=0;
for n=1:Area(6).extsize
	 Area(6).N_of_phases_ext=Area(6).N_of_phases_ext+node(Area(6).extnode(n)).np;
end


Area(6).G_of_phases=0;
for n=1:Area(6).size
	 if node(Area(6).node(n)).g==1
	 Area(6).G_of_phases=Area(6).G_of_phases+3;
	 end
end

Area(6).X=sdpvar(2*Area(6).N_of_phases_ext,2*Area(6).N_of_phases_ext);


Area(6).cg=sdpvar(Area(6).G_of_phases,1);

Area(6).Y=zeros(Area(6).N_of_phases_ext,Area(6).N_of_phases_ext);
row_count1=1;
row_count2=0;
col_count1=1;
col_count2=0;
for i=1:Area(6).extsize
	 row_count2=row_count2+node(Area(6).extnode(i)).np;
	 for j=1:Area(6).extsize
		  col_count2=col_count2+node(Area(6).extnode(j)).np;
		  Area(6).Y(row_count1:row_count2,col_count1:col_count2)=...
		  Y(min(node(Area(6).extnode(i)).index):max(node(Area(6).extnode(i)).index),min(node(Area(6).extnode(j)).index):max(node(Area(6).extnode(j)).index));
		  col_count1=col_count1+node(Area(6).extnode(j)).np;
	 end
	 row_count1=row_count1+node(Area(6).extnode(i)).np;
	 col_count1=1;
	 col_count2=0;
end

%%%%%% Area(7) DATA %%%%%%
Area(7).node=[19,20,21];
Area(7).size=size(Area(7).node,2);
Area(7).extnode=[19,20,21,18];
Area(7).extsize=size(Area(7).extnode,2);

Area(7).N_of_phases=0;
for n=1:Area(7).size
	 Area(7).N_of_phases=Area(7).N_of_phases+node(Area(7).node(n)).np;
end


Area(7).N_of_phases_ext=0;
for n=1:Area(7).extsize
	 Area(7).N_of_phases_ext=Area(7).N_of_phases_ext+node(Area(7).extnode(n)).np;
end


Area(7).G_of_phases=0;
for n=1:Area(7).size
	 if node(Area(7).node(n)).g==1
	 Area(7).G_of_phases=Area(7).G_of_phases+3;
	 end
end

Area(7).X=sdpvar(2*Area(7).N_of_phases_ext,2*Area(7).N_of_phases_ext);


Area(7).cg=sdpvar(Area(7).G_of_phases,1);

Area(7).Y=zeros(Area(7).N_of_phases_ext,Area(7).N_of_phases_ext);
row_count1=1;
row_count2=0;
col_count1=1;
col_count2=0;
for i=1:Area(7).extsize
	 row_count2=row_count2+node(Area(7).extnode(i)).np;
	 for j=1:Area(7).extsize
		  col_count2=col_count2+node(Area(7).extnode(j)).np;
		  Area(7).Y(row_count1:row_count2,col_count1:col_count2)=...
		  Y(min(node(Area(7).extnode(i)).index):max(node(Area(7).extnode(i)).index),min(node(Area(7).extnode(j)).index):max(node(Area(7).extnode(j)).index));
		  col_count1=col_count1+node(Area(7).extnode(j)).np;
	 end
	 row_count1=row_count1+node(Area(7).extnode(i)).np;
	 col_count1=1;
	 col_count2=0;
end

%%%%%% Area(8) DATA %%%%%%
Area(8).node=[23,24,25,26,27];
Area(8).size=size(Area(8).node,2);
Area(8).extnode=[23,24,25,26,27,22,28];
Area(8).extsize=size(Area(8).extnode,2);

Area(8).N_of_phases=0;
for n=1:Area(8).size
	 Area(8).N_of_phases=Area(8).N_of_phases+node(Area(8).node(n)).np;
end


Area(8).N_of_phases_ext=0;
for n=1:Area(8).extsize
	 Area(8).N_of_phases_ext=Area(8).N_of_phases_ext+node(Area(8).extnode(n)).np;
end


Area(8).G_of_phases=0;
for n=1:Area(8).size
	 if node(Area(8).node(n)).g==1
	 Area(8).G_of_phases=Area(8).G_of_phases+3;
	 end
end

Area(8).X=sdpvar(2*Area(8).N_of_phases_ext,2*Area(8).N_of_phases_ext);


Area(8).cg=sdpvar(Area(8).G_of_phases,1);

Area(8).Y=zeros(Area(8).N_of_phases_ext,Area(8).N_of_phases_ext);
row_count1=1;
row_count2=0;
col_count1=1;
col_count2=0;
for i=1:Area(8).extsize
	 row_count2=row_count2+node(Area(8).extnode(i)).np;
	 for j=1:Area(8).extsize
		  col_count2=col_count2+node(Area(8).extnode(j)).np;
		  Area(8).Y(row_count1:row_count2,col_count1:col_count2)=...
		  Y(min(node(Area(8).extnode(i)).index):max(node(Area(8).extnode(i)).index),min(node(Area(8).extnode(j)).index):max(node(Area(8).extnode(j)).index));
		  col_count1=col_count1+node(Area(8).extnode(j)).np;
	 end
	 row_count1=row_count1+node(Area(8).extnode(i)).np;
	 col_count1=1;
	 col_count2=0;
end

%%%%%% Area(9) DATA %%%%%%
Area(9).node=[28,29,30,31,32];
Area(9).size=size(Area(9).node,2);
Area(9).extnode=[28,29,30,31,32,26,33];
Area(9).extsize=size(Area(9).extnode,2);

Area(9).N_of_phases=0;
for n=1:Area(9).size
	 Area(9).N_of_phases=Area(9).N_of_phases+node(Area(9).node(n)).np;
end


Area(9).N_of_phases_ext=0;
for n=1:Area(9).extsize
	 Area(9).N_of_phases_ext=Area(9).N_of_phases_ext+node(Area(9).extnode(n)).np;
end


Area(9).G_of_phases=0;
for n=1:Area(9).size
	 if node(Area(9).node(n)).g==1
	 Area(9).G_of_phases=Area(9).G_of_phases+3;
	 end
end

Area(9).X=sdpvar(2*Area(9).N_of_phases_ext,2*Area(9).N_of_phases_ext);


Area(9).cg=sdpvar(Area(9).G_of_phases,1);

Area(9).Y=zeros(Area(9).N_of_phases_ext,Area(9).N_of_phases_ext);
row_count1=1;
row_count2=0;
col_count1=1;
col_count2=0;
for i=1:Area(9).extsize
	 row_count2=row_count2+node(Area(9).extnode(i)).np;
	 for j=1:Area(9).extsize
		  col_count2=col_count2+node(Area(9).extnode(j)).np;
		  Area(9).Y(row_count1:row_count2,col_count1:col_count2)=...
		  Y(min(node(Area(9).extnode(i)).index):max(node(Area(9).extnode(i)).index),min(node(Area(9).extnode(j)).index):max(node(Area(9).extnode(j)).index));
		  col_count1=col_count1+node(Area(9).extnode(j)).np;
	 end
	 row_count1=row_count1+node(Area(9).extnode(i)).np;
	 col_count1=1;
	 col_count2=0;
end

%%%%%% Area(10) DATA %%%%%%
Area(10).node=[33,34,35,36,37];
Area(10).size=size(Area(10).node,2);
Area(10).extnode=[33,34,35,36,37,29];
Area(10).extsize=size(Area(10).extnode,2);

Area(10).N_of_phases=0;
for n=1:Area(10).size
	 Area(10).N_of_phases=Area(10).N_of_phases+node(Area(10).node(n)).np;
end


Area(10).N_of_phases_ext=0;
for n=1:Area(10).extsize
	 Area(10).N_of_phases_ext=Area(10).N_of_phases_ext+node(Area(10).extnode(n)).np;
end


Area(10).G_of_phases=0;
for n=1:Area(10).size
	 if node(Area(10).node(n)).g==1
	 Area(10).G_of_phases=Area(10).G_of_phases+3;
	 end
end

Area(10).X=sdpvar(2*Area(10).N_of_phases_ext,2*Area(10).N_of_phases_ext);


Area(10).cg=sdpvar(Area(10).G_of_phases,1);

Area(10).Y=zeros(Area(10).N_of_phases_ext,Area(10).N_of_phases_ext);
row_count1=1;
row_count2=0;
col_count1=1;
col_count2=0;
for i=1:Area(10).extsize
	 row_count2=row_count2+node(Area(10).extnode(i)).np;
	 for j=1:Area(10).extsize
		  col_count2=col_count2+node(Area(10).extnode(j)).np;
		  Area(10).Y(row_count1:row_count2,col_count1:col_count2)=...
		  Y(min(node(Area(10).extnode(i)).index):max(node(Area(10).extnode(i)).index),min(node(Area(10).extnode(j)).index):max(node(Area(10).extnode(j)).index));
		  col_count1=col_count1+node(Area(10).extnode(j)).np;
	 end
	 row_count1=row_count1+node(Area(10).extnode(i)).np;
	 col_count1=1;
	 col_count2=0;
end

%%%% Bounary data Area(1) %%%%
Area(1).nb=3;
Area(1).bnd{1}=[Area(1).X(7:9,7:9),Area(1).X(7:9,19:21),Area(1).X(7:9,28:30),Area(1).X(7:9,40:42);...
			 Area(1).X(19:21,7:9),Area(1).X(19:21,19:21),Area(1).X(19:21,28:30),Area(1).X(19:21,40:42);...
			 Area(1).X(28:30,7:9),Area(1).X(28:30,19:21),Area(1).X(28:30,28:30),Area(1).X(28:30,40:42);...
			 Area(1).X(40:42,7:9),Area(1).X(40:42,19:21),Area(1).X(40:42,28:30),Area(1).X(40:42,40:42)];

Area(1).bnd{2}=[Area(1).X(10:12,10:12),Area(1).X(10:12,16:18),Area(1).X(10:12,31:33),Area(1).X(10:12,37:39);...
			 Area(1).X(16:18,10:12),Area(1).X(16:18,16:18),Area(1).X(16:18,31:33),Area(1).X(16:18,37:39);...
			 Area(1).X(31:33,10:12),Area(1).X(31:33,16:18),Area(1).X(31:33,31:33),Area(1).X(31:33,37:39);...
			 Area(1).X(37:39,10:12),Area(1).X(37:39,16:18),Area(1).X(37:39,31:33),Area(1).X(37:39,37:39)];

Area(1).bnd{3}=[Area(1).X(7:9,7:9),Area(1).X(7:9,13:15),Area(1).X(7:9,28:30),Area(1).X(7:9,34:36);...
			 Area(1).X(13:15,7:9),Area(1).X(13:15,13:15),Area(1).X(13:15,28:30),Area(1).X(13:15,34:36);...
			 Area(1).X(28:30,7:9),Area(1).X(28:30,13:15),Area(1).X(28:30,28:30),Area(1).X(28:30,34:36);...
			 Area(1).X(34:36,7:9),Area(1).X(34:36,13:15),Area(1).X(34:36,28:30),Area(1).X(34:36,34:36)];

%%%% Bounary data Area(2) %%%%
Area(2).nb=1;
Area(2).bnd{1}=[Area(2).X(10:12,10:12),Area(2).X(10:12,4:6),Area(2).X(10:12,22:24),Area(2).X(10:12,16:18);...
			 Area(2).X(4:6,10:12),Area(2).X(4:6,4:6),Area(2).X(4:6,22:24),Area(2).X(4:6,16:18);...
			 Area(2).X(22:24,10:12),Area(2).X(22:24,4:6),Area(2).X(22:24,22:24),Area(2).X(22:24,16:18);...
			 Area(2).X(16:18,10:12),Area(2).X(16:18,4:6),Area(2).X(16:18,22:24),Area(2).X(16:18,16:18)];

%%%% Bounary data Area(3) %%%%
Area(3).nb=2;
Area(3).bnd{1}=[Area(3).X(10:12,10:12),Area(3).X(10:12,1:3),Area(3).X(10:12,25:27),Area(3).X(10:12,16:18);...
			 Area(3).X(1:3,10:12),Area(3).X(1:3,1:3),Area(3).X(1:3,25:27),Area(3).X(1:3,16:18);...
			 Area(3).X(25:27,10:12),Area(3).X(25:27,1:3),Area(3).X(25:27,25:27),Area(3).X(25:27,16:18);...
			 Area(3).X(16:18,10:12),Area(3).X(16:18,1:3),Area(3).X(16:18,25:27),Area(3).X(16:18,16:18)];

Area(3).bnd{2}=[Area(3).X(1:3,1:3),Area(3).X(1:3,13:15),Area(3).X(1:3,16:18),Area(3).X(1:3,28:30);...
			 Area(3).X(13:15,1:3),Area(3).X(13:15,13:15),Area(3).X(13:15,16:18),Area(3).X(13:15,28:30);...
			 Area(3).X(16:18,1:3),Area(3).X(16:18,13:15),Area(3).X(16:18,16:18),Area(3).X(16:18,28:30);...
			 Area(3).X(28:30,1:3),Area(3).X(28:30,13:15),Area(3).X(28:30,16:18),Area(3).X(28:30,28:30)];

%%%% Bounary data Area(4) %%%%
Area(4).nb=2;
Area(4).bnd{1}=[Area(4).X(10:12,10:12),Area(4).X(10:12,1:3),Area(4).X(10:12,25:27),Area(4).X(10:12,16:18);...
			 Area(4).X(1:3,10:12),Area(4).X(1:3,1:3),Area(4).X(1:3,25:27),Area(4).X(1:3,16:18);...
			 Area(4).X(25:27,10:12),Area(4).X(25:27,1:3),Area(4).X(25:27,25:27),Area(4).X(25:27,16:18);...
			 Area(4).X(16:18,10:12),Area(4).X(16:18,1:3),Area(4).X(16:18,25:27),Area(4).X(16:18,16:18)];

Area(4).bnd{2}=[Area(4).X(1:3,1:3),Area(4).X(1:3,13:15),Area(4).X(1:3,16:18),Area(4).X(1:3,28:30);...
			 Area(4).X(13:15,1:3),Area(4).X(13:15,13:15),Area(4).X(13:15,16:18),Area(4).X(13:15,28:30);...
			 Area(4).X(16:18,1:3),Area(4).X(16:18,13:15),Area(4).X(16:18,16:18),Area(4).X(16:18,28:30);...
			 Area(4).X(28:30,1:3),Area(4).X(28:30,13:15),Area(4).X(28:30,16:18),Area(4).X(28:30,28:30)];

%%%% Bounary data Area(5) %%%%
Area(5).nb=1;
Area(5).bnd{1}=[Area(5).X(10:12,10:12),Area(5).X(10:12,1:3),Area(5).X(10:12,22:24),Area(5).X(10:12,13:15);...
			 Area(5).X(1:3,10:12),Area(5).X(1:3,1:3),Area(5).X(1:3,22:24),Area(5).X(1:3,13:15);...
			 Area(5).X(22:24,10:12),Area(5).X(22:24,1:3),Area(5).X(22:24,22:24),Area(5).X(22:24,13:15);...
			 Area(5).X(13:15,10:12),Area(5).X(13:15,1:3),Area(5).X(13:15,22:24),Area(5).X(13:15,13:15)];

%%%% Bounary data Area(6) %%%%
Area(6).nb=3;
Area(6).bnd{1}=[Area(6).X(10:12,10:12),Area(6).X(10:12,1:3),Area(6).X(10:12,28:30),Area(6).X(10:12,19:21);...
			 Area(6).X(1:3,10:12),Area(6).X(1:3,1:3),Area(6).X(1:3,28:30),Area(6).X(1:3,19:21);...
			 Area(6).X(28:30,10:12),Area(6).X(28:30,1:3),Area(6).X(28:30,28:30),Area(6).X(28:30,19:21);...
			 Area(6).X(19:21,10:12),Area(6).X(19:21,1:3),Area(6).X(19:21,28:30),Area(6).X(19:21,19:21)];

Area(6).bnd{2}=[Area(6).X(7:9,7:9),Area(6).X(7:9,16:18),Area(6).X(7:9,25:27),Area(6).X(7:9,34:36);...
			 Area(6).X(16:18,7:9),Area(6).X(16:18,16:18),Area(6).X(16:18,25:27),Area(6).X(16:18,34:36);...
			 Area(6).X(25:27,7:9),Area(6).X(25:27,16:18),Area(6).X(25:27,25:27),Area(6).X(25:27,34:36);...
			 Area(6).X(34:36,7:9),Area(6).X(34:36,16:18),Area(6).X(34:36,25:27),Area(6).X(34:36,34:36)];

Area(6).bnd{3}=[Area(6).X(4:6,4:6),Area(6).X(4:6,13:15),Area(6).X(4:6,22:24),Area(6).X(4:6,31:33);...
			 Area(6).X(13:15,4:6),Area(6).X(13:15,13:15),Area(6).X(13:15,22:24),Area(6).X(13:15,31:33);...
			 Area(6).X(22:24,4:6),Area(6).X(22:24,13:15),Area(6).X(22:24,22:24),Area(6).X(22:24,31:33);...
			 Area(6).X(31:33,4:6),Area(6).X(31:33,13:15),Area(6).X(31:33,22:24),Area(6).X(31:33,31:33)];

%%%% Bounary data Area(7) %%%%
Area(7).nb=1;
Area(7).bnd{1}=[Area(7).X(10:12,10:12),Area(7).X(10:12,1:3),Area(7).X(10:12,22:24),Area(7).X(10:12,13:15);...
			 Area(7).X(1:3,10:12),Area(7).X(1:3,1:3),Area(7).X(1:3,22:24),Area(7).X(1:3,13:15);...
			 Area(7).X(22:24,10:12),Area(7).X(22:24,1:3),Area(7).X(22:24,22:24),Area(7).X(22:24,13:15);...
			 Area(7).X(13:15,10:12),Area(7).X(13:15,1:3),Area(7).X(13:15,22:24),Area(7).X(13:15,13:15)];

%%%% Bounary data Area(8) %%%%
Area(8).nb=2;
Area(8).bnd{1}=[Area(8).X(10:12,10:12),Area(8).X(10:12,19:21),Area(8).X(10:12,31:33),Area(8).X(10:12,40:42);...
			 Area(8).X(19:21,10:12),Area(8).X(19:21,19:21),Area(8).X(19:21,31:33),Area(8).X(19:21,40:42);...
			 Area(8).X(31:33,10:12),Area(8).X(31:33,19:21),Area(8).X(31:33,31:33),Area(8).X(31:33,40:42);...
			 Area(8).X(40:42,10:12),Area(8).X(40:42,19:21),Area(8).X(40:42,31:33),Area(8).X(40:42,40:42)];

Area(8).bnd{2}=[Area(8).X(16:18,16:18),Area(8).X(16:18,1:3),Area(8).X(16:18,37:39),Area(8).X(16:18,22:24);...
			 Area(8).X(1:3,16:18),Area(8).X(1:3,1:3),Area(8).X(1:3,37:39),Area(8).X(1:3,22:24);...
			 Area(8).X(37:39,16:18),Area(8).X(37:39,1:3),Area(8).X(37:39,37:39),Area(8).X(37:39,22:24);...
			 Area(8).X(22:24,16:18),Area(8).X(22:24,1:3),Area(8).X(22:24,37:39),Area(8).X(22:24,22:24)];

%%%% Bounary data Area(9) %%%%
Area(9).nb=2;
Area(9).bnd{1}=[Area(9).X(16:18,16:18),Area(9).X(16:18,1:3),Area(9).X(16:18,37:39),Area(9).X(16:18,22:24);...
			 Area(9).X(1:3,16:18),Area(9).X(1:3,1:3),Area(9).X(1:3,37:39),Area(9).X(1:3,22:24);...
			 Area(9).X(37:39,16:18),Area(9).X(37:39,1:3),Area(9).X(37:39,37:39),Area(9).X(37:39,22:24);...
			 Area(9).X(22:24,16:18),Area(9).X(22:24,1:3),Area(9).X(22:24,37:39),Area(9).X(22:24,22:24)];

Area(9).bnd{2}=[Area(9).X(4:6,4:6),Area(9).X(4:6,19:21),Area(9).X(4:6,25:27),Area(9).X(4:6,40:42);...
			 Area(9).X(19:21,4:6),Area(9).X(19:21,19:21),Area(9).X(19:21,25:27),Area(9).X(19:21,40:42);...
			 Area(9).X(25:27,4:6),Area(9).X(25:27,19:21),Area(9).X(25:27,25:27),Area(9).X(25:27,40:42);...
			 Area(9).X(40:42,4:6),Area(9).X(40:42,19:21),Area(9).X(40:42,25:27),Area(9).X(40:42,40:42)];

%%%% Bounary data Area(10) %%%%
Area(10).nb=1;
Area(10).bnd{1}=[Area(10).X(16:18,16:18),Area(10).X(16:18,1:3),Area(10).X(16:18,34:36),Area(10).X(16:18,19:21);...
			 Area(10).X(1:3,16:18),Area(10).X(1:3,1:3),Area(10).X(1:3,34:36),Area(10).X(1:3,19:21);...
			 Area(10).X(34:36,16:18),Area(10).X(34:36,1:3),Area(10).X(34:36,34:36),Area(10).X(34:36,19:21);...
			 Area(10).X(19:21,16:18),Area(10).X(19:21,1:3),Area(10).X(19:21,34:36),Area(10).X(19:21,19:21)];

%%%% Boundary index %%%%
Bnd_index=[ 1, 1, 6, 1;...
		    1, 2, 3, 1;...
		    8, 1, 9, 1;...
		    1, 3, 2, 1;...
		    3, 2, 4, 1;...
		    6, 2, 8, 2;...
		    9, 2, 10, 1;...
		    4, 2, 5, 1;...
		    6, 3, 7, 1];

tat=1;
%%finish%%
