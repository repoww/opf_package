%%%%%% Area(1) DATA %%%%%%
Area(1).node=[1,2,3];
Area(1).size=size(Area(1).node,2);
Area(1).extnode=[1,2,3,4];
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
	 Area(1).G_of_phases=Area(1).G_of_phases+node(Area(1).node(n)).np;
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
Area(2).node=[4,5,6,7];
Area(2).size=size(Area(2).node,2);
Area(2).extnode=[4,5,6,7,3,8];
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
	 Area(2).G_of_phases=Area(2).G_of_phases+node(Area(2).node(n)).np;
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
Area(3).node=[8,9,12,13];
Area(3).size=size(Area(3).node,2);
Area(3).extnode=[8,9,12,13,7,10,14];
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
	 Area(3).G_of_phases=Area(3).G_of_phases+node(Area(3).node(n)).np;
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
Area(4).node=[10,11];
Area(4).size=size(Area(4).node,2);
Area(4).extnode=[10,11,9];
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
	 Area(4).G_of_phases=Area(4).G_of_phases+node(Area(4).node(n)).np;
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
Area(5).node=[14,15,16,17];
Area(5).size=size(Area(5).node,2);
Area(5).extnode=[14,15,16,17,12,18];
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
	 Area(5).G_of_phases=Area(5).G_of_phases+node(Area(5).node(n)).np;
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
Area(6).node=[18,19,20,21,22];
Area(6).size=size(Area(6).node,2);
Area(6).extnode=[18,19,20,21,22,16,23];
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
	 Area(6).G_of_phases=Area(6).G_of_phases+node(Area(6).node(n)).np;
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
Area(7).node=[23,24,25,26,27];
Area(7).size=size(Area(7).node,2);
Area(7).extnode=[23,24,25,26,27,21,28];
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
	 Area(7).G_of_phases=Area(7).G_of_phases+node(Area(7).node(n)).np;
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
Area(8).node=[28,29,30,31,32];
Area(8).size=size(Area(8).node,2);
Area(8).extnode=[28,29,30,31,32,23];
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
	 Area(8).G_of_phases=Area(8).G_of_phases+node(Area(8).node(n)).np;
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

%%%% Bounary data Area(1) %%%%
Area(1).nb=1;
Area(1).bnd{1}=[Area(1).X(7:9,7:9),Area(1).X(7:9,10:12),Area(1).X(7:9,19:21),Area(1).X(7:9,22:24);...
			 Area(1).X(10:12,7:9),Area(1).X(10:12,10:12),Area(1).X(10:12,19:21),Area(1).X(10:12,22:24);...
			 Area(1).X(19:21,7:9),Area(1).X(19:21,10:12),Area(1).X(19:21,19:21),Area(1).X(19:21,22:24);...
			 Area(1).X(22:24,7:9),Area(1).X(22:24,10:12),Area(1).X(22:24,19:21),Area(1).X(22:24,22:24)];

%%%% Bounary data Area(2) %%%%
Area(2).nb=2;
Area(2).bnd{1}=[Area(2).X(8:10,8:10),Area(2).X(8:10,14:16),Area(2).X(8:10,24:26),Area(2).X(8:10,30:32);...
			 Area(2).X(14:16,8:10),Area(2).X(14:16,14:16),Area(2).X(14:16,24:26),Area(2).X(14:16,30:32);...
			 Area(2).X(24:26,8:10),Area(2).X(24:26,14:16),Area(2).X(24:26,24:26),Area(2).X(24:26,30:32);...
			 Area(2).X(30:32,8:10),Area(2).X(30:32,14:16),Area(2).X(30:32,24:26),Area(2).X(30:32,30:32)];

Area(2).bnd{2}=[Area(2).X(11:13,11:13),Area(2).X(11:13,1:3),Area(2).X(11:13,27:29),Area(2).X(11:13,17:19);...
			 Area(2).X(1:3,11:13),Area(2).X(1:3,1:3),Area(2).X(1:3,27:29),Area(2).X(1:3,17:19);...
			 Area(2).X(27:29,11:13),Area(2).X(27:29,1:3),Area(2).X(27:29,27:29),Area(2).X(27:29,17:19);...
			 Area(2).X(17:19,11:13),Area(2).X(17:19,1:3),Area(2).X(17:19,27:29),Area(2).X(17:19,17:19)];

%%%% Bounary data Area(3) %%%%
Area(3).nb=3;
Area(3).bnd{1}=[Area(3).X(9:11,9:11),Area(3).X(9:11,1:3),Area(3).X(9:11,24:26),Area(3).X(9:11,16:18);...
			 Area(3).X(1:3,9:11),Area(3).X(1:3,1:3),Area(3).X(1:3,24:26),Area(3).X(1:3,16:18);...
			 Area(3).X(24:26,9:11),Area(3).X(24:26,1:3),Area(3).X(24:26,24:26),Area(3).X(24:26,16:18);...
			 Area(3).X(16:18,9:11),Area(3).X(16:18,1:3),Area(3).X(16:18,24:26),Area(3).X(16:18,16:18)];

Area(3).bnd{2}=[Area(3).X(5:7,5:7),Area(3).X(5:7,13:15),Area(3).X(5:7,20:22),Area(3).X(5:7,28:30);...
			 Area(3).X(13:15,5:7),Area(3).X(13:15,13:15),Area(3).X(13:15,20:22),Area(3).X(13:15,28:30);...
			 Area(3).X(20:22,5:7),Area(3).X(20:22,13:15),Area(3).X(20:22,20:22),Area(3).X(20:22,28:30);...
			 Area(3).X(28:30,5:7),Area(3).X(28:30,13:15),Area(3).X(28:30,20:22),Area(3).X(28:30,28:30)];

Area(3).bnd{3}=[Area(3).X(4:4,4:4),Area(3).X(4:4,12:12),Area(3).X(4:4,19:19),Area(3).X(4:4,27:27);...
			 Area(3).X(12:12,4:4),Area(3).X(12:12,12:12),Area(3).X(12:12,19:19),Area(3).X(12:12,27:27);...
			 Area(3).X(19:19,4:4),Area(3).X(19:19,12:12),Area(3).X(19:19,19:19),Area(3).X(19:19,27:27);...
			 Area(3).X(27:27,4:4),Area(3).X(27:27,12:12),Area(3).X(27:27,19:19),Area(3).X(27:27,27:27)];

%%%% Bounary data Area(4) %%%%
Area(4).nb=1;
Area(4).bnd{1}=[Area(4).X(3:3,3:3),Area(4).X(3:3,1:1),Area(4).X(3:3,6:6),Area(4).X(3:3,4:4);...
			 Area(4).X(1:1,3:3),Area(4).X(1:1,1:1),Area(4).X(1:1,6:6),Area(4).X(1:1,4:4);...
			 Area(4).X(6:6,3:3),Area(4).X(6:6,1:1),Area(4).X(6:6,6:6),Area(4).X(6:6,4:4);...
			 Area(4).X(4:4,3:3),Area(4).X(4:4,1:1),Area(4).X(4:4,6:6),Area(4).X(4:4,4:4)];

%%%% Bounary data Area(5) %%%%
Area(5).nb=2;
Area(5).bnd{1}=[Area(5).X(7:9,7:9),Area(5).X(7:9,14:16),Area(5).X(7:9,23:25),Area(5).X(7:9,30:32);...
			 Area(5).X(14:16,7:9),Area(5).X(14:16,14:16),Area(5).X(14:16,23:25),Area(5).X(14:16,30:32);...
			 Area(5).X(23:25,7:9),Area(5).X(23:25,14:16),Area(5).X(23:25,23:25),Area(5).X(23:25,30:32);...
			 Area(5).X(30:32,7:9),Area(5).X(30:32,14:16),Area(5).X(30:32,23:25),Area(5).X(30:32,30:32)];

Area(5).bnd{2}=[Area(5).X(11:13,11:13),Area(5).X(11:13,1:3),Area(5).X(11:13,27:29),Area(5).X(11:13,17:19);...
			 Area(5).X(1:3,11:13),Area(5).X(1:3,1:3),Area(5).X(1:3,27:29),Area(5).X(1:3,17:19);...
			 Area(5).X(27:29,11:13),Area(5).X(27:29,1:3),Area(5).X(27:29,27:29),Area(5).X(27:29,17:19);...
			 Area(5).X(17:19,11:13),Area(5).X(17:19,1:3),Area(5).X(17:19,27:29),Area(5).X(17:19,17:19)];

%%%% Bounary data Area(6) %%%%
Area(6).nb=2;
Area(6).bnd{1}=[Area(6).X(14:16,14:16),Area(6).X(14:16,1:3),Area(6).X(14:16,33:35),Area(6).X(14:16,20:22);...
			 Area(6).X(1:3,14:16),Area(6).X(1:3,1:3),Area(6).X(1:3,33:35),Area(6).X(1:3,20:22);...
			 Area(6).X(33:35,14:16),Area(6).X(33:35,1:3),Area(6).X(33:35,33:35),Area(6).X(33:35,20:22);...
			 Area(6).X(20:22,14:16),Area(6).X(20:22,1:3),Area(6).X(20:22,33:35),Area(6).X(20:22,20:22)];

Area(6).bnd{2}=[Area(6).X(10:12,10:12),Area(6).X(10:12,17:19),Area(6).X(10:12,29:31),Area(6).X(10:12,36:38);...
			 Area(6).X(17:19,10:12),Area(6).X(17:19,17:19),Area(6).X(17:19,29:31),Area(6).X(17:19,36:38);...
			 Area(6).X(29:31,10:12),Area(6).X(29:31,17:19),Area(6).X(29:31,29:31),Area(6).X(29:31,36:38);...
			 Area(6).X(36:38,10:12),Area(6).X(36:38,17:19),Area(6).X(36:38,29:31),Area(6).X(36:38,36:38)];

%%%% Bounary data Area(7) %%%%
Area(7).nb=2;
Area(7).bnd{1}=[Area(7).X(16:18,16:18),Area(7).X(16:18,1:3),Area(7).X(16:18,37:39),Area(7).X(16:18,22:24);...
			 Area(7).X(1:3,16:18),Area(7).X(1:3,1:3),Area(7).X(1:3,37:39),Area(7).X(1:3,22:24);...
			 Area(7).X(37:39,16:18),Area(7).X(37:39,1:3),Area(7).X(37:39,37:39),Area(7).X(37:39,22:24);...
			 Area(7).X(22:24,16:18),Area(7).X(22:24,1:3),Area(7).X(22:24,37:39),Area(7).X(22:24,22:24)];

Area(7).bnd{2}=[Area(7).X(1:3,1:3),Area(7).X(1:3,19:21),Area(7).X(1:3,22:24),Area(7).X(1:3,40:42);...
			 Area(7).X(19:21,1:3),Area(7).X(19:21,19:21),Area(7).X(19:21,22:24),Area(7).X(19:21,40:42);...
			 Area(7).X(22:24,1:3),Area(7).X(22:24,19:21),Area(7).X(22:24,22:24),Area(7).X(22:24,40:42);...
			 Area(7).X(40:42,1:3),Area(7).X(40:42,19:21),Area(7).X(40:42,22:24),Area(7).X(40:42,40:42)];

%%%% Bounary data Area(8) %%%%
Area(8).nb=1;
Area(8).bnd{1}=[Area(8).X(14:16,14:16),Area(8).X(14:16,1:3),Area(8).X(14:16,30:32),Area(8).X(14:16,17:19);...
			 Area(8).X(1:3,14:16),Area(8).X(1:3,1:3),Area(8).X(1:3,30:32),Area(8).X(1:3,17:19);...
			 Area(8).X(30:32,14:16),Area(8).X(30:32,1:3),Area(8).X(30:32,30:32),Area(8).X(30:32,17:19);...
			 Area(8).X(17:19,14:16),Area(8).X(17:19,1:3),Area(8).X(17:19,30:32),Area(8).X(17:19,17:19)];

%%%% Boundary index %%%%
Bnd_index=[ 5, 1, 6, 1;...
		    2, 1, 3, 1;...
		    6, 2, 7, 1;...
		    1, 1, 2, 2;...
		    3, 2, 5, 2;...
		    7, 2, 8, 1;...
		    3, 3, 4, 1];

tat=1;
%%finish%%
