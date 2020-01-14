%%%%%% Area(1) DATA %%%%%%
Area(1).node=[1,2,3,4,5];
Area(1).size=size(Area(1).node,2);
Area(1).extnode=[1,2,3,4,5,6,8];
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
Area(2).node=[6,7];
Area(2).size=size(Area(2).node,2);
Area(2).extnode=[6,7,4];
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
Area(3).node=[8,9,10,13];
Area(3).size=size(Area(3).node,2);
Area(3).extnode=[8,9,10,13,2,14,15];
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
Area(4).node=[11,12,15];
Area(4).size=size(Area(4).node,2);
Area(4).extnode=[11,12,15,10];
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
Area(5).node=[14,35,53,54];
Area(5).size=size(Area(5).node,2);
Area(5).extnode=[14,35,53,54,9,16,19,55];
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
Area(6).node=[16,17,18];
Area(6).size=size(Area(6).node,2);
Area(6).extnode=[16,17,18,35];
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
Area(7).node=[19,20,21,22,23,24,25];
Area(7).size=size(Area(7).node,2);
Area(7).extnode=[19,20,21,22,23,24,25,14,26,36];
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
Area(8).node=[26,29,30,31,116];
Area(8).size=size(Area(8).node,2);
Area(8).extnode=[26,29,30,31,116,24,27];
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

%%%%%% Area(9) DATA %%%%%%
Area(9).node=[27,28,32,33,34];
Area(9).size=size(Area(9).node,2);
Area(9).extnode=[27,28,32,33,34,26];
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
	 Area(9).G_of_phases=Area(9).G_of_phases+node(Area(9).node(n)).np;
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
Area(10).node=[36,37,38,41,42];
Area(10).size=size(Area(10).node,2);
Area(10).extnode=[36,37,38,41,42,19,39,43];
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
	 Area(10).G_of_phases=Area(10).G_of_phases+node(Area(10).node(n)).np;
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

%%%%%% Area(11) DATA %%%%%%
Area(11).node=[39,40];
Area(11).size=size(Area(11).node,2);
Area(11).extnode=[39,40,37];
Area(11).extsize=size(Area(11).extnode,2);

Area(11).N_of_phases=0;
for n=1:Area(11).size
	 Area(11).N_of_phases=Area(11).N_of_phases+node(Area(11).node(n)).np;
end


Area(11).N_of_phases_ext=0;
for n=1:Area(11).extsize
	 Area(11).N_of_phases_ext=Area(11).N_of_phases_ext+node(Area(11).extnode(n)).np;
end


Area(11).G_of_phases=0;
for n=1:Area(11).size
	 if node(Area(11).node(n)).g==1
	 Area(11).G_of_phases=Area(11).G_of_phases+node(Area(11).node(n)).np;
	 end
end

Area(11).X=sdpvar(2*Area(11).N_of_phases_ext,2*Area(11).N_of_phases_ext);


Area(11).cg=sdpvar(Area(11).G_of_phases,1);

Area(11).Y=zeros(Area(11).N_of_phases_ext,Area(11).N_of_phases_ext);
row_count1=1;
row_count2=0;
col_count1=1;
col_count2=0;
for i=1:Area(11).extsize
	 row_count2=row_count2+node(Area(11).extnode(i)).np;
	 for j=1:Area(11).extsize
		  col_count2=col_count2+node(Area(11).extnode(j)).np;
		  Area(11).Y(row_count1:row_count2,col_count1:col_count2)=...
		  Y(min(node(Area(11).extnode(i)).index):max(node(Area(11).extnode(i)).index),min(node(Area(11).extnode(j)).index):max(node(Area(11).extnode(j)).index));
		  col_count1=col_count1+node(Area(11).extnode(j)).np;
	 end
	 row_count1=row_count1+node(Area(11).extnode(i)).np;
	 col_count1=1;
	 col_count2=0;
end

%%%%%% Area(12) DATA %%%%%%
Area(12).node=[43,44,45,46,47];
Area(12).size=size(Area(12).node,2);
Area(12).extnode=[43,44,45,46,47,41,48];
Area(12).extsize=size(Area(12).extnode,2);

Area(12).N_of_phases=0;
for n=1:Area(12).size
	 Area(12).N_of_phases=Area(12).N_of_phases+node(Area(12).node(n)).np;
end


Area(12).N_of_phases_ext=0;
for n=1:Area(12).extsize
	 Area(12).N_of_phases_ext=Area(12).N_of_phases_ext+node(Area(12).extnode(n)).np;
end


Area(12).G_of_phases=0;
for n=1:Area(12).size
	 if node(Area(12).node(n)).g==1
	 Area(12).G_of_phases=Area(12).G_of_phases+node(Area(12).node(n)).np;
	 end
end

Area(12).X=sdpvar(2*Area(12).N_of_phases_ext,2*Area(12).N_of_phases_ext);


Area(12).cg=sdpvar(Area(12).G_of_phases,1);

Area(12).Y=zeros(Area(12).N_of_phases_ext,Area(12).N_of_phases_ext);
row_count1=1;
row_count2=0;
col_count1=1;
col_count2=0;
for i=1:Area(12).extsize
	 row_count2=row_count2+node(Area(12).extnode(i)).np;
	 for j=1:Area(12).extsize
		  col_count2=col_count2+node(Area(12).extnode(j)).np;
		  Area(12).Y(row_count1:row_count2,col_count1:col_count2)=...
		  Y(min(node(Area(12).extnode(i)).index):max(node(Area(12).extnode(i)).index),min(node(Area(12).extnode(j)).index):max(node(Area(12).extnode(j)).index));
		  col_count1=col_count1+node(Area(12).extnode(j)).np;
	 end
	 row_count1=row_count1+node(Area(12).extnode(i)).np;
	 col_count1=1;
	 col_count2=0;
end

%%%%%% Area(13) DATA %%%%%%
Area(13).node=[48,49,50];
Area(13).size=size(Area(13).node,2);
Area(13).extnode=[48,49,50,45,51];
Area(13).extsize=size(Area(13).extnode,2);

Area(13).N_of_phases=0;
for n=1:Area(13).size
	 Area(13).N_of_phases=Area(13).N_of_phases+node(Area(13).node(n)).np;
end


Area(13).N_of_phases_ext=0;
for n=1:Area(13).extsize
	 Area(13).N_of_phases_ext=Area(13).N_of_phases_ext+node(Area(13).extnode(n)).np;
end


Area(13).G_of_phases=0;
for n=1:Area(13).size
	 if node(Area(13).node(n)).g==1
	 Area(13).G_of_phases=Area(13).G_of_phases+node(Area(13).node(n)).np;
	 end
end

Area(13).X=sdpvar(2*Area(13).N_of_phases_ext,2*Area(13).N_of_phases_ext);


Area(13).cg=sdpvar(Area(13).G_of_phases,1);

Area(13).Y=zeros(Area(13).N_of_phases_ext,Area(13).N_of_phases_ext);
row_count1=1;
row_count2=0;
col_count1=1;
col_count2=0;
for i=1:Area(13).extsize
	 row_count2=row_count2+node(Area(13).extnode(i)).np;
	 for j=1:Area(13).extsize
		  col_count2=col_count2+node(Area(13).extnode(j)).np;
		  Area(13).Y(row_count1:row_count2,col_count1:col_count2)=...
		  Y(min(node(Area(13).extnode(i)).index):max(node(Area(13).extnode(i)).index),min(node(Area(13).extnode(j)).index):max(node(Area(13).extnode(j)).index));
		  col_count1=col_count1+node(Area(13).extnode(j)).np;
	 end
	 row_count1=row_count1+node(Area(13).extnode(i)).np;
	 col_count1=1;
	 col_count2=0;
end

%%%%%% Area(14) DATA %%%%%%
Area(14).node=[51,52,117];
Area(14).size=size(Area(14).node,2);
Area(14).extnode=[51,52,117,50];
Area(14).extsize=size(Area(14).extnode,2);

Area(14).N_of_phases=0;
for n=1:Area(14).size
	 Area(14).N_of_phases=Area(14).N_of_phases+node(Area(14).node(n)).np;
end


Area(14).N_of_phases_ext=0;
for n=1:Area(14).extsize
	 Area(14).N_of_phases_ext=Area(14).N_of_phases_ext+node(Area(14).extnode(n)).np;
end


Area(14).G_of_phases=0;
for n=1:Area(14).size
	 if node(Area(14).node(n)).g==1
	 Area(14).G_of_phases=Area(14).G_of_phases+node(Area(14).node(n)).np;
	 end
end

Area(14).X=sdpvar(2*Area(14).N_of_phases_ext,2*Area(14).N_of_phases_ext);


Area(14).cg=sdpvar(Area(14).G_of_phases,1);

Area(14).Y=zeros(Area(14).N_of_phases_ext,Area(14).N_of_phases_ext);
row_count1=1;
row_count2=0;
col_count1=1;
col_count2=0;
for i=1:Area(14).extsize
	 row_count2=row_count2+node(Area(14).extnode(i)).np;
	 for j=1:Area(14).extsize
		  col_count2=col_count2+node(Area(14).extnode(j)).np;
		  Area(14).Y(row_count1:row_count2,col_count1:col_count2)=...
		  Y(min(node(Area(14).extnode(i)).index):max(node(Area(14).extnode(i)).index),min(node(Area(14).extnode(j)).index):max(node(Area(14).extnode(j)).index));
		  col_count1=col_count1+node(Area(14).extnode(j)).np;
	 end
	 row_count1=row_count1+node(Area(14).extnode(i)).np;
	 col_count1=1;
	 col_count2=0;
end

%%%%%% Area(15) DATA %%%%%%
Area(15).node=[55,56,57,58,59,60];
Area(15).size=size(Area(15).node,2);
Area(15).extnode=[55,56,57,58,59,60,54,61];
Area(15).extsize=size(Area(15).extnode,2);

Area(15).N_of_phases=0;
for n=1:Area(15).size
	 Area(15).N_of_phases=Area(15).N_of_phases+node(Area(15).node(n)).np;
end


Area(15).N_of_phases_ext=0;
for n=1:Area(15).extsize
	 Area(15).N_of_phases_ext=Area(15).N_of_phases_ext+node(Area(15).extnode(n)).np;
end


Area(15).G_of_phases=0;
for n=1:Area(15).size
	 if node(Area(15).node(n)).g==1
	 Area(15).G_of_phases=Area(15).G_of_phases+node(Area(15).node(n)).np;
	 end
end

Area(15).X=sdpvar(2*Area(15).N_of_phases_ext,2*Area(15).N_of_phases_ext);


Area(15).cg=sdpvar(Area(15).G_of_phases,1);

Area(15).Y=zeros(Area(15).N_of_phases_ext,Area(15).N_of_phases_ext);
row_count1=1;
row_count2=0;
col_count1=1;
col_count2=0;
for i=1:Area(15).extsize
	 row_count2=row_count2+node(Area(15).extnode(i)).np;
	 for j=1:Area(15).extsize
		  col_count2=col_count2+node(Area(15).extnode(j)).np;
		  Area(15).Y(row_count1:row_count2,col_count1:col_count2)=...
		  Y(min(node(Area(15).extnode(i)).index):max(node(Area(15).extnode(i)).index),min(node(Area(15).extnode(j)).index):max(node(Area(15).extnode(j)).index));
		  col_count1=col_count1+node(Area(15).extnode(j)).np;
	 end
	 row_count1=row_count1+node(Area(15).extnode(i)).np;
	 col_count1=1;
	 col_count2=0;
end

%%%%%% Area(16) DATA %%%%%%
Area(16).node=[61,62,68,69,118];
Area(16).size=size(Area(16).node,2);
Area(16).extnode=[61,62,68,69,118,58,63,70,73,98];
Area(16).extsize=size(Area(16).extnode,2);

Area(16).N_of_phases=0;
for n=1:Area(16).size
	 Area(16).N_of_phases=Area(16).N_of_phases+node(Area(16).node(n)).np;
end


Area(16).N_of_phases_ext=0;
for n=1:Area(16).extsize
	 Area(16).N_of_phases_ext=Area(16).N_of_phases_ext+node(Area(16).extnode(n)).np;
end


Area(16).G_of_phases=0;
for n=1:Area(16).size
	 if node(Area(16).node(n)).g==1
	 Area(16).G_of_phases=Area(16).G_of_phases+node(Area(16).node(n)).np;
	 end
end

Area(16).X=sdpvar(2*Area(16).N_of_phases_ext,2*Area(16).N_of_phases_ext);


Area(16).cg=sdpvar(Area(16).G_of_phases,1);

Area(16).Y=zeros(Area(16).N_of_phases_ext,Area(16).N_of_phases_ext);
row_count1=1;
row_count2=0;
col_count1=1;
col_count2=0;
for i=1:Area(16).extsize
	 row_count2=row_count2+node(Area(16).extnode(i)).np;
	 for j=1:Area(16).extsize
		  col_count2=col_count2+node(Area(16).extnode(j)).np;
		  Area(16).Y(row_count1:row_count2,col_count1:col_count2)=...
		  Y(min(node(Area(16).extnode(i)).index):max(node(Area(16).extnode(i)).index),min(node(Area(16).extnode(j)).index):max(node(Area(16).extnode(j)).index));
		  col_count1=col_count1+node(Area(16).extnode(j)).np;
	 end
	 row_count1=row_count1+node(Area(16).extnode(i)).np;
	 col_count1=1;
	 col_count2=0;
end

%%%%%% Area(17) DATA %%%%%%
Area(17).node=[63,64,65,66,67];
Area(17).size=size(Area(17).node,2);
Area(17).extnode=[63,64,65,66,67,61];
Area(17).extsize=size(Area(17).extnode,2);

Area(17).N_of_phases=0;
for n=1:Area(17).size
	 Area(17).N_of_phases=Area(17).N_of_phases+node(Area(17).node(n)).np;
end


Area(17).N_of_phases_ext=0;
for n=1:Area(17).extsize
	 Area(17).N_of_phases_ext=Area(17).N_of_phases_ext+node(Area(17).extnode(n)).np;
end


Area(17).G_of_phases=0;
for n=1:Area(17).size
	 if node(Area(17).node(n)).g==1
	 Area(17).G_of_phases=Area(17).G_of_phases+node(Area(17).node(n)).np;
	 end
end

Area(17).X=sdpvar(2*Area(17).N_of_phases_ext,2*Area(17).N_of_phases_ext);


Area(17).cg=sdpvar(Area(17).G_of_phases,1);

Area(17).Y=zeros(Area(17).N_of_phases_ext,Area(17).N_of_phases_ext);
row_count1=1;
row_count2=0;
col_count1=1;
col_count2=0;
for i=1:Area(17).extsize
	 row_count2=row_count2+node(Area(17).extnode(i)).np;
	 for j=1:Area(17).extsize
		  col_count2=col_count2+node(Area(17).extnode(j)).np;
		  Area(17).Y(row_count1:row_count2,col_count1:col_count2)=...
		  Y(min(node(Area(17).extnode(i)).index):max(node(Area(17).extnode(i)).index),min(node(Area(17).extnode(j)).index):max(node(Area(17).extnode(j)).index));
		  col_count1=col_count1+node(Area(17).extnode(j)).np;
	 end
	 row_count1=row_count1+node(Area(17).extnode(i)).np;
	 col_count1=1;
	 col_count2=0;
end

%%%%%% Area(18) DATA %%%%%%
Area(18).node=[70,71,72];
Area(18).size=size(Area(18).node,2);
Area(18).extnode=[70,71,72,69];
Area(18).extsize=size(Area(18).extnode,2);

Area(18).N_of_phases=0;
for n=1:Area(18).size
	 Area(18).N_of_phases=Area(18).N_of_phases+node(Area(18).node(n)).np;
end


Area(18).N_of_phases_ext=0;
for n=1:Area(18).extsize
	 Area(18).N_of_phases_ext=Area(18).N_of_phases_ext+node(Area(18).extnode(n)).np;
end


Area(18).G_of_phases=0;
for n=1:Area(18).size
	 if node(Area(18).node(n)).g==1
	 Area(18).G_of_phases=Area(18).G_of_phases+node(Area(18).node(n)).np;
	 end
end

Area(18).X=sdpvar(2*Area(18).N_of_phases_ext,2*Area(18).N_of_phases_ext);


Area(18).cg=sdpvar(Area(18).G_of_phases,1);

Area(18).Y=zeros(Area(18).N_of_phases_ext,Area(18).N_of_phases_ext);
row_count1=1;
row_count2=0;
col_count1=1;
col_count2=0;
for i=1:Area(18).extsize
	 row_count2=row_count2+node(Area(18).extnode(i)).np;
	 for j=1:Area(18).extsize
		  col_count2=col_count2+node(Area(18).extnode(j)).np;
		  Area(18).Y(row_count1:row_count2,col_count1:col_count2)=...
		  Y(min(node(Area(18).extnode(i)).index):max(node(Area(18).extnode(i)).index),min(node(Area(18).extnode(j)).index):max(node(Area(18).extnode(j)).index));
		  col_count1=col_count1+node(Area(18).extnode(j)).np;
	 end
	 row_count1=row_count1+node(Area(18).extnode(i)).np;
	 col_count1=1;
	 col_count2=0;
end

%%%%%% Area(19) DATA %%%%%%
Area(19).node=[73,77,87,88,89];
Area(19).size=size(Area(19).node,2);
Area(19).extnode=[73,77,87,88,89,68,74,78,90];
Area(19).extsize=size(Area(19).extnode,2);

Area(19).N_of_phases=0;
for n=1:Area(19).size
	 Area(19).N_of_phases=Area(19).N_of_phases+node(Area(19).node(n)).np;
end


Area(19).N_of_phases_ext=0;
for n=1:Area(19).extsize
	 Area(19).N_of_phases_ext=Area(19).N_of_phases_ext+node(Area(19).extnode(n)).np;
end


Area(19).G_of_phases=0;
for n=1:Area(19).size
	 if node(Area(19).node(n)).g==1
	 Area(19).G_of_phases=Area(19).G_of_phases+node(Area(19).node(n)).np;
	 end
end

Area(19).X=sdpvar(2*Area(19).N_of_phases_ext,2*Area(19).N_of_phases_ext);


Area(19).cg=sdpvar(Area(19).G_of_phases,1);

Area(19).Y=zeros(Area(19).N_of_phases_ext,Area(19).N_of_phases_ext);
row_count1=1;
row_count2=0;
col_count1=1;
col_count2=0;
for i=1:Area(19).extsize
	 row_count2=row_count2+node(Area(19).extnode(i)).np;
	 for j=1:Area(19).extsize
		  col_count2=col_count2+node(Area(19).extnode(j)).np;
		  Area(19).Y(row_count1:row_count2,col_count1:col_count2)=...
		  Y(min(node(Area(19).extnode(i)).index):max(node(Area(19).extnode(i)).index),min(node(Area(19).extnode(j)).index):max(node(Area(19).extnode(j)).index));
		  col_count1=col_count1+node(Area(19).extnode(j)).np;
	 end
	 row_count1=row_count1+node(Area(19).extnode(i)).np;
	 col_count1=1;
	 col_count2=0;
end

%%%%%% Area(20) DATA %%%%%%
Area(20).node=[74,75,76];
Area(20).size=size(Area(20).node,2);
Area(20).extnode=[74,75,76,73];
Area(20).extsize=size(Area(20).extnode,2);

Area(20).N_of_phases=0;
for n=1:Area(20).size
	 Area(20).N_of_phases=Area(20).N_of_phases+node(Area(20).node(n)).np;
end


Area(20).N_of_phases_ext=0;
for n=1:Area(20).extsize
	 Area(20).N_of_phases_ext=Area(20).N_of_phases_ext+node(Area(20).extnode(n)).np;
end


Area(20).G_of_phases=0;
for n=1:Area(20).size
	 if node(Area(20).node(n)).g==1
	 Area(20).G_of_phases=Area(20).G_of_phases+node(Area(20).node(n)).np;
	 end
end

Area(20).X=sdpvar(2*Area(20).N_of_phases_ext,2*Area(20).N_of_phases_ext);


Area(20).cg=sdpvar(Area(20).G_of_phases,1);

Area(20).Y=zeros(Area(20).N_of_phases_ext,Area(20).N_of_phases_ext);
row_count1=1;
row_count2=0;
col_count1=1;
col_count2=0;
for i=1:Area(20).extsize
	 row_count2=row_count2+node(Area(20).extnode(i)).np;
	 for j=1:Area(20).extsize
		  col_count2=col_count2+node(Area(20).extnode(j)).np;
		  Area(20).Y(row_count1:row_count2,col_count1:col_count2)=...
		  Y(min(node(Area(20).extnode(i)).index):max(node(Area(20).extnode(i)).index),min(node(Area(20).extnode(j)).index):max(node(Area(20).extnode(j)).index));
		  col_count1=col_count1+node(Area(20).extnode(j)).np;
	 end
	 row_count1=row_count1+node(Area(20).extnode(i)).np;
	 col_count1=1;
	 col_count2=0;
end

%%%%%% Area(21) DATA %%%%%%
Area(21).node=[78,79,80,81];
Area(21).size=size(Area(21).node,2);
Area(21).extnode=[78,79,80,81,77,82];
Area(21).extsize=size(Area(21).extnode,2);

Area(21).N_of_phases=0;
for n=1:Area(21).size
	 Area(21).N_of_phases=Area(21).N_of_phases+node(Area(21).node(n)).np;
end


Area(21).N_of_phases_ext=0;
for n=1:Area(21).extsize
	 Area(21).N_of_phases_ext=Area(21).N_of_phases_ext+node(Area(21).extnode(n)).np;
end


Area(21).G_of_phases=0;
for n=1:Area(21).size
	 if node(Area(21).node(n)).g==1
	 Area(21).G_of_phases=Area(21).G_of_phases+node(Area(21).node(n)).np;
	 end
end

Area(21).X=sdpvar(2*Area(21).N_of_phases_ext,2*Area(21).N_of_phases_ext);


Area(21).cg=sdpvar(Area(21).G_of_phases,1);

Area(21).Y=zeros(Area(21).N_of_phases_ext,Area(21).N_of_phases_ext);
row_count1=1;
row_count2=0;
col_count1=1;
col_count2=0;
for i=1:Area(21).extsize
	 row_count2=row_count2+node(Area(21).extnode(i)).np;
	 for j=1:Area(21).extsize
		  col_count2=col_count2+node(Area(21).extnode(j)).np;
		  Area(21).Y(row_count1:row_count2,col_count1:col_count2)=...
		  Y(min(node(Area(21).extnode(i)).index):max(node(Area(21).extnode(i)).index),min(node(Area(21).extnode(j)).index):max(node(Area(21).extnode(j)).index));
		  col_count1=col_count1+node(Area(21).extnode(j)).np;
	 end
	 row_count1=row_count1+node(Area(21).extnode(i)).np;
	 col_count1=1;
	 col_count2=0;
end

%%%%%% Area(22) DATA %%%%%%
Area(22).node=[82,83,84,85,86];
Area(22).size=size(Area(22).node,2);
Area(22).extnode=[82,83,84,85,86,81];
Area(22).extsize=size(Area(22).extnode,2);

Area(22).N_of_phases=0;
for n=1:Area(22).size
	 Area(22).N_of_phases=Area(22).N_of_phases+node(Area(22).node(n)).np;
end


Area(22).N_of_phases_ext=0;
for n=1:Area(22).extsize
	 Area(22).N_of_phases_ext=Area(22).N_of_phases_ext+node(Area(22).extnode(n)).np;
end


Area(22).G_of_phases=0;
for n=1:Area(22).size
	 if node(Area(22).node(n)).g==1
	 Area(22).G_of_phases=Area(22).G_of_phases+node(Area(22).node(n)).np;
	 end
end

Area(22).X=sdpvar(2*Area(22).N_of_phases_ext,2*Area(22).N_of_phases_ext);


Area(22).cg=sdpvar(Area(22).G_of_phases,1);

Area(22).Y=zeros(Area(22).N_of_phases_ext,Area(22).N_of_phases_ext);
row_count1=1;
row_count2=0;
col_count1=1;
col_count2=0;
for i=1:Area(22).extsize
	 row_count2=row_count2+node(Area(22).extnode(i)).np;
	 for j=1:Area(22).extsize
		  col_count2=col_count2+node(Area(22).extnode(j)).np;
		  Area(22).Y(row_count1:row_count2,col_count1:col_count2)=...
		  Y(min(node(Area(22).extnode(i)).index):max(node(Area(22).extnode(i)).index),min(node(Area(22).extnode(j)).index):max(node(Area(22).extnode(j)).index));
		  col_count1=col_count1+node(Area(22).extnode(j)).np;
	 end
	 row_count1=row_count1+node(Area(22).extnode(i)).np;
	 col_count1=1;
	 col_count2=0;
end

%%%%%% Area(23) DATA %%%%%%
Area(23).node=[90,91,92,93];
Area(23).size=size(Area(23).node,2);
Area(23).extnode=[90,91,92,93,88,94];
Area(23).extsize=size(Area(23).extnode,2);

Area(23).N_of_phases=0;
for n=1:Area(23).size
	 Area(23).N_of_phases=Area(23).N_of_phases+node(Area(23).node(n)).np;
end


Area(23).N_of_phases_ext=0;
for n=1:Area(23).extsize
	 Area(23).N_of_phases_ext=Area(23).N_of_phases_ext+node(Area(23).extnode(n)).np;
end


Area(23).G_of_phases=0;
for n=1:Area(23).size
	 if node(Area(23).node(n)).g==1
	 Area(23).G_of_phases=Area(23).G_of_phases+node(Area(23).node(n)).np;
	 end
end

Area(23).X=sdpvar(2*Area(23).N_of_phases_ext,2*Area(23).N_of_phases_ext);


Area(23).cg=sdpvar(Area(23).G_of_phases,1);

Area(23).Y=zeros(Area(23).N_of_phases_ext,Area(23).N_of_phases_ext);
row_count1=1;
row_count2=0;
col_count1=1;
col_count2=0;
for i=1:Area(23).extsize
	 row_count2=row_count2+node(Area(23).extnode(i)).np;
	 for j=1:Area(23).extsize
		  col_count2=col_count2+node(Area(23).extnode(j)).np;
		  Area(23).Y(row_count1:row_count2,col_count1:col_count2)=...
		  Y(min(node(Area(23).extnode(i)).index):max(node(Area(23).extnode(i)).index),min(node(Area(23).extnode(j)).index):max(node(Area(23).extnode(j)).index));
		  col_count1=col_count1+node(Area(23).extnode(j)).np;
	 end
	 row_count1=row_count1+node(Area(23).extnode(i)).np;
	 col_count1=1;
	 col_count2=0;
end

%%%%%% Area(24) DATA %%%%%%
Area(24).node=[94,95,96,97];
Area(24).size=size(Area(24).node,2);
Area(24).extnode=[94,95,96,97,92];
Area(24).extsize=size(Area(24).extnode,2);

Area(24).N_of_phases=0;
for n=1:Area(24).size
	 Area(24).N_of_phases=Area(24).N_of_phases+node(Area(24).node(n)).np;
end


Area(24).N_of_phases_ext=0;
for n=1:Area(24).extsize
	 Area(24).N_of_phases_ext=Area(24).N_of_phases_ext+node(Area(24).extnode(n)).np;
end


Area(24).G_of_phases=0;
for n=1:Area(24).size
	 if node(Area(24).node(n)).g==1
	 Area(24).G_of_phases=Area(24).G_of_phases+node(Area(24).node(n)).np;
	 end
end

Area(24).X=sdpvar(2*Area(24).N_of_phases_ext,2*Area(24).N_of_phases_ext);


Area(24).cg=sdpvar(Area(24).G_of_phases,1);

Area(24).Y=zeros(Area(24).N_of_phases_ext,Area(24).N_of_phases_ext);
row_count1=1;
row_count2=0;
col_count1=1;
col_count2=0;
for i=1:Area(24).extsize
	 row_count2=row_count2+node(Area(24).extnode(i)).np;
	 for j=1:Area(24).extsize
		  col_count2=col_count2+node(Area(24).extnode(j)).np;
		  Area(24).Y(row_count1:row_count2,col_count1:col_count2)=...
		  Y(min(node(Area(24).extnode(i)).index):max(node(Area(24).extnode(i)).index),min(node(Area(24).extnode(j)).index):max(node(Area(24).extnode(j)).index));
		  col_count1=col_count1+node(Area(24).extnode(j)).np;
	 end
	 row_count1=row_count1+node(Area(24).extnode(i)).np;
	 col_count1=1;
	 col_count2=0;
end

%%%%%% Area(25) DATA %%%%%%
Area(25).node=[98,102,103];
Area(25).size=size(Area(25).node,2);
Area(25).extnode=[98,102,103,68,99,104,106];
Area(25).extsize=size(Area(25).extnode,2);

Area(25).N_of_phases=0;
for n=1:Area(25).size
	 Area(25).N_of_phases=Area(25).N_of_phases+node(Area(25).node(n)).np;
end


Area(25).N_of_phases_ext=0;
for n=1:Area(25).extsize
	 Area(25).N_of_phases_ext=Area(25).N_of_phases_ext+node(Area(25).extnode(n)).np;
end


Area(25).G_of_phases=0;
for n=1:Area(25).size
	 if node(Area(25).node(n)).g==1
	 Area(25).G_of_phases=Area(25).G_of_phases+node(Area(25).node(n)).np;
	 end
end

Area(25).X=sdpvar(2*Area(25).N_of_phases_ext,2*Area(25).N_of_phases_ext);


Area(25).cg=sdpvar(Area(25).G_of_phases,1);

Area(25).Y=zeros(Area(25).N_of_phases_ext,Area(25).N_of_phases_ext);
row_count1=1;
row_count2=0;
col_count1=1;
col_count2=0;
for i=1:Area(25).extsize
	 row_count2=row_count2+node(Area(25).extnode(i)).np;
	 for j=1:Area(25).extsize
		  col_count2=col_count2+node(Area(25).extnode(j)).np;
		  Area(25).Y(row_count1:row_count2,col_count1:col_count2)=...
		  Y(min(node(Area(25).extnode(i)).index):max(node(Area(25).extnode(i)).index),min(node(Area(25).extnode(j)).index):max(node(Area(25).extnode(j)).index));
		  col_count1=col_count1+node(Area(25).extnode(j)).np;
	 end
	 row_count1=row_count1+node(Area(25).extnode(i)).np;
	 col_count1=1;
	 col_count2=0;
end

%%%%%% Area(26) DATA %%%%%%
Area(26).node=[99,100,101,120];
Area(26).size=size(Area(26).node,2);
Area(26).extnode=[99,100,101,120,98];
Area(26).extsize=size(Area(26).extnode,2);

Area(26).N_of_phases=0;
for n=1:Area(26).size
	 Area(26).N_of_phases=Area(26).N_of_phases+node(Area(26).node(n)).np;
end


Area(26).N_of_phases_ext=0;
for n=1:Area(26).extsize
	 Area(26).N_of_phases_ext=Area(26).N_of_phases_ext+node(Area(26).extnode(n)).np;
end


Area(26).G_of_phases=0;
for n=1:Area(26).size
	 if node(Area(26).node(n)).g==1
	 Area(26).G_of_phases=Area(26).G_of_phases+node(Area(26).node(n)).np;
	 end
end

Area(26).X=sdpvar(2*Area(26).N_of_phases_ext,2*Area(26).N_of_phases_ext);


Area(26).cg=sdpvar(Area(26).G_of_phases,1);

Area(26).Y=zeros(Area(26).N_of_phases_ext,Area(26).N_of_phases_ext);
row_count1=1;
row_count2=0;
col_count1=1;
col_count2=0;
for i=1:Area(26).extsize
	 row_count2=row_count2+node(Area(26).extnode(i)).np;
	 for j=1:Area(26).extsize
		  col_count2=col_count2+node(Area(26).extnode(j)).np;
		  Area(26).Y(row_count1:row_count2,col_count1:col_count2)=...
		  Y(min(node(Area(26).extnode(i)).index):max(node(Area(26).extnode(i)).index),min(node(Area(26).extnode(j)).index):max(node(Area(26).extnode(j)).index));
		  col_count1=col_count1+node(Area(26).extnode(j)).np;
	 end
	 row_count1=row_count1+node(Area(26).extnode(i)).np;
	 col_count1=1;
	 col_count2=0;
end

%%%%%% Area(27) DATA %%%%%%
Area(27).node=[104,105];
Area(27).size=size(Area(27).node,2);
Area(27).extnode=[104,105,103];
Area(27).extsize=size(Area(27).extnode,2);

Area(27).N_of_phases=0;
for n=1:Area(27).size
	 Area(27).N_of_phases=Area(27).N_of_phases+node(Area(27).node(n)).np;
end


Area(27).N_of_phases_ext=0;
for n=1:Area(27).extsize
	 Area(27).N_of_phases_ext=Area(27).N_of_phases_ext+node(Area(27).extnode(n)).np;
end


Area(27).G_of_phases=0;
for n=1:Area(27).size
	 if node(Area(27).node(n)).g==1
	 Area(27).G_of_phases=Area(27).G_of_phases+node(Area(27).node(n)).np;
	 end
end

Area(27).X=sdpvar(2*Area(27).N_of_phases_ext,2*Area(27).N_of_phases_ext);


Area(27).cg=sdpvar(Area(27).G_of_phases,1);

Area(27).Y=zeros(Area(27).N_of_phases_ext,Area(27).N_of_phases_ext);
row_count1=1;
row_count2=0;
col_count1=1;
col_count2=0;
for i=1:Area(27).extsize
	 row_count2=row_count2+node(Area(27).extnode(i)).np;
	 for j=1:Area(27).extsize
		  col_count2=col_count2+node(Area(27).extnode(j)).np;
		  Area(27).Y(row_count1:row_count2,col_count1:col_count2)=...
		  Y(min(node(Area(27).extnode(i)).index):max(node(Area(27).extnode(i)).index),min(node(Area(27).extnode(j)).index):max(node(Area(27).extnode(j)).index));
		  col_count1=col_count1+node(Area(27).extnode(j)).np;
	 end
	 row_count1=row_count1+node(Area(27).extnode(i)).np;
	 col_count1=1;
	 col_count2=0;
end

%%%%%% Area(28) DATA %%%%%%
Area(28).node=[106,107,108,109,110,119];
Area(28).size=size(Area(28).node,2);
Area(28).extnode=[106,107,108,109,110,119,102,111];
Area(28).extsize=size(Area(28).extnode,2);

Area(28).N_of_phases=0;
for n=1:Area(28).size
	 Area(28).N_of_phases=Area(28).N_of_phases+node(Area(28).node(n)).np;
end


Area(28).N_of_phases_ext=0;
for n=1:Area(28).extsize
	 Area(28).N_of_phases_ext=Area(28).N_of_phases_ext+node(Area(28).extnode(n)).np;
end


Area(28).G_of_phases=0;
for n=1:Area(28).size
	 if node(Area(28).node(n)).g==1
	 Area(28).G_of_phases=Area(28).G_of_phases+node(Area(28).node(n)).np;
	 end
end

Area(28).X=sdpvar(2*Area(28).N_of_phases_ext,2*Area(28).N_of_phases_ext);


Area(28).cg=sdpvar(Area(28).G_of_phases,1);

Area(28).Y=zeros(Area(28).N_of_phases_ext,Area(28).N_of_phases_ext);
row_count1=1;
row_count2=0;
col_count1=1;
col_count2=0;
for i=1:Area(28).extsize
	 row_count2=row_count2+node(Area(28).extnode(i)).np;
	 for j=1:Area(28).extsize
		  col_count2=col_count2+node(Area(28).extnode(j)).np;
		  Area(28).Y(row_count1:row_count2,col_count1:col_count2)=...
		  Y(min(node(Area(28).extnode(i)).index):max(node(Area(28).extnode(i)).index),min(node(Area(28).extnode(j)).index):max(node(Area(28).extnode(j)).index));
		  col_count1=col_count1+node(Area(28).extnode(j)).np;
	 end
	 row_count1=row_count1+node(Area(28).extnode(i)).np;
	 col_count1=1;
	 col_count2=0;
end

%%%%%% Area(29) DATA %%%%%%
Area(29).node=[111,112,113,114,115];
Area(29).size=size(Area(29).node,2);
Area(29).extnode=[111,112,113,114,115,110];
Area(29).extsize=size(Area(29).extnode,2);

Area(29).N_of_phases=0;
for n=1:Area(29).size
	 Area(29).N_of_phases=Area(29).N_of_phases+node(Area(29).node(n)).np;
end


Area(29).N_of_phases_ext=0;
for n=1:Area(29).extsize
	 Area(29).N_of_phases_ext=Area(29).N_of_phases_ext+node(Area(29).extnode(n)).np;
end


Area(29).G_of_phases=0;
for n=1:Area(29).size
	 if node(Area(29).node(n)).g==1
	 Area(29).G_of_phases=Area(29).G_of_phases+node(Area(29).node(n)).np;
	 end
end

Area(29).X=sdpvar(2*Area(29).N_of_phases_ext,2*Area(29).N_of_phases_ext);


Area(29).cg=sdpvar(Area(29).G_of_phases,1);

Area(29).Y=zeros(Area(29).N_of_phases_ext,Area(29).N_of_phases_ext);
row_count1=1;
row_count2=0;
col_count1=1;
col_count2=0;
for i=1:Area(29).extsize
	 row_count2=row_count2+node(Area(29).extnode(i)).np;
	 for j=1:Area(29).extsize
		  col_count2=col_count2+node(Area(29).extnode(j)).np;
		  Area(29).Y(row_count1:row_count2,col_count1:col_count2)=...
		  Y(min(node(Area(29).extnode(i)).index):max(node(Area(29).extnode(i)).index),min(node(Area(29).extnode(j)).index):max(node(Area(29).extnode(j)).index));
		  col_count1=col_count1+node(Area(29).extnode(j)).np;
	 end
	 row_count1=row_count1+node(Area(29).extnode(i)).np;
	 col_count1=1;
	 col_count2=0;
end

%%%% Bounary data Area(1) %%%%
Area(1).nb=2;
Area(1).bnd{1}=[Area(1).X(4:6,4:6),Area(1).X(4:6,11:13),Area(1).X(4:6,17:19),Area(1).X(4:6,24:26);...
			 Area(1).X(11:13,4:6),Area(1).X(11:13,11:13),Area(1).X(11:13,17:19),Area(1).X(11:13,24:26);...
			 Area(1).X(17:19,4:6),Area(1).X(17:19,11:13),Area(1).X(17:19,17:19),Area(1).X(17:19,24:26);...
			 Area(1).X(24:26,4:6),Area(1).X(24:26,11:13),Area(1).X(24:26,17:19),Area(1).X(24:26,24:26)];

Area(1).bnd{2}=[Area(1).X(8:8,8:8),Area(1).X(8:8,10:10),Area(1).X(8:8,21:21),Area(1).X(8:8,23:23);...
			 Area(1).X(10:10,8:8),Area(1).X(10:10,10:10),Area(1).X(10:10,21:21),Area(1).X(10:10,23:23);...
			 Area(1).X(21:21,8:8),Area(1).X(21:21,10:10),Area(1).X(21:21,21:21),Area(1).X(21:21,23:23);...
			 Area(1).X(23:23,8:8),Area(1).X(23:23,10:10),Area(1).X(23:23,21:21),Area(1).X(23:23,23:23)];

%%%% Bounary data Area(2) %%%%
Area(2).nb=1;
Area(2).bnd{1}=[Area(2).X(3:3,3:3),Area(2).X(3:3,1:1),Area(2).X(3:3,6:6),Area(2).X(3:3,4:4);...
			 Area(2).X(1:1,3:3),Area(2).X(1:1,1:1),Area(2).X(1:1,6:6),Area(2).X(1:1,4:4);...
			 Area(2).X(6:6,3:3),Area(2).X(6:6,1:1),Area(2).X(6:6,6:6),Area(2).X(6:6,4:4);...
			 Area(2).X(4:4,3:3),Area(2).X(4:4,1:1),Area(2).X(4:4,6:6),Area(2).X(4:4,4:4)];

%%%% Bounary data Area(3) %%%%
Area(3).nb=3;
Area(3).bnd{1}=[Area(3).X(4:6,4:6),Area(3).X(4:6,12:14),Area(3).X(4:6,19:21),Area(3).X(4:6,27:29);...
			 Area(3).X(12:14,4:6),Area(3).X(12:14,12:14),Area(3).X(12:14,19:21),Area(3).X(12:14,27:29);...
			 Area(3).X(19:21,4:6),Area(3).X(19:21,12:14),Area(3).X(19:21,19:21),Area(3).X(19:21,27:29);...
			 Area(3).X(27:29,4:6),Area(3).X(27:29,12:14),Area(3).X(27:29,19:21),Area(3).X(27:29,27:29)];

Area(3).bnd{2}=[Area(3).X(9:11,9:11),Area(3).X(9:11,1:3),Area(3).X(9:11,24:26),Area(3).X(9:11,16:18);...
			 Area(3).X(1:3,9:11),Area(3).X(1:3,1:3),Area(3).X(1:3,24:26),Area(3).X(1:3,16:18);...
			 Area(3).X(24:26,9:11),Area(3).X(24:26,1:3),Area(3).X(24:26,24:26),Area(3).X(24:26,16:18);...
			 Area(3).X(16:18,9:11),Area(3).X(16:18,1:3),Area(3).X(16:18,24:26),Area(3).X(16:18,16:18)];

Area(3).bnd{3}=[Area(3).X(7:7,7:7),Area(3).X(7:7,15:15),Area(3).X(7:7,22:22),Area(3).X(7:7,30:30);...
			 Area(3).X(15:15,7:7),Area(3).X(15:15,15:15),Area(3).X(15:15,22:22),Area(3).X(15:15,30:30);...
			 Area(3).X(22:22,7:7),Area(3).X(22:22,15:15),Area(3).X(22:22,22:22),Area(3).X(22:22,30:30);...
			 Area(3).X(30:30,7:7),Area(3).X(30:30,15:15),Area(3).X(30:30,22:22),Area(3).X(30:30,30:30)];

%%%% Bounary data Area(4) %%%%
Area(4).nb=1;
Area(4).bnd{1}=[Area(4).X(4:4,4:4),Area(4).X(4:4,3:3),Area(4).X(4:4,8:8),Area(4).X(4:4,7:7);...
			 Area(4).X(3:3,4:4),Area(4).X(3:3,3:3),Area(4).X(3:3,8:8),Area(4).X(3:3,7:7);...
			 Area(4).X(8:8,4:4),Area(4).X(8:8,3:3),Area(4).X(8:8,8:8),Area(4).X(8:8,7:7);...
			 Area(4).X(7:7,4:4),Area(4).X(7:7,3:3),Area(4).X(7:7,8:8),Area(4).X(7:7,7:7)];

%%%% Bounary data Area(5) %%%%
Area(5).nb=4;
Area(5).bnd{1}=[Area(5).X(1:3,1:3),Area(5).X(1:3,15:17),Area(5).X(1:3,21:23),Area(5).X(1:3,35:37);...
			 Area(5).X(15:17,1:3),Area(5).X(15:17,15:17),Area(5).X(15:17,21:23),Area(5).X(15:17,35:37);...
			 Area(5).X(21:23,1:3),Area(5).X(21:23,15:17),Area(5).X(21:23,21:23),Area(5).X(21:23,35:37);...
			 Area(5).X(35:37,1:3),Area(5).X(35:37,15:17),Area(5).X(35:37,21:23),Area(5).X(35:37,35:37)];

Area(5).bnd{2}=[Area(5).X(11:13,11:13),Area(5).X(11:13,1:3),Area(5).X(11:13,31:33),Area(5).X(11:13,21:23);...
			 Area(5).X(1:3,11:13),Area(5).X(1:3,1:3),Area(5).X(1:3,31:33),Area(5).X(1:3,21:23);...
			 Area(5).X(31:33,11:13),Area(5).X(31:33,1:3),Area(5).X(31:33,31:33),Area(5).X(31:33,21:23);...
			 Area(5).X(21:23,11:13),Area(5).X(21:23,1:3),Area(5).X(21:23,31:33),Area(5).X(21:23,21:23)];

Area(5).bnd{3}=[Area(5).X(8:10,8:10),Area(5).X(8:10,18:20),Area(5).X(8:10,28:30),Area(5).X(8:10,38:40);...
			 Area(5).X(18:20,8:10),Area(5).X(18:20,18:20),Area(5).X(18:20,28:30),Area(5).X(18:20,38:40);...
			 Area(5).X(28:30,8:10),Area(5).X(28:30,18:20),Area(5).X(28:30,28:30),Area(5).X(28:30,38:40);...
			 Area(5).X(38:40,8:10),Area(5).X(38:40,18:20),Area(5).X(38:40,28:30),Area(5).X(38:40,38:40)];

Area(5).bnd{4}=[Area(5).X(14:14,14:14),Area(5).X(14:14,4:4),Area(5).X(14:14,34:34),Area(5).X(14:14,24:24);...
			 Area(5).X(4:4,14:14),Area(5).X(4:4,4:4),Area(5).X(4:4,34:34),Area(5).X(4:4,24:24);...
			 Area(5).X(34:34,14:14),Area(5).X(34:34,4:4),Area(5).X(34:34,34:34),Area(5).X(34:34,24:24);...
			 Area(5).X(24:24,14:14),Area(5).X(24:24,4:4),Area(5).X(24:24,34:34),Area(5).X(24:24,24:24)];

%%%% Bounary data Area(6) %%%%
Area(6).nb=1;
Area(6).bnd{1}=[Area(6).X(1:1,1:1),Area(6).X(1:1,4:4),Area(6).X(1:1,5:5),Area(6).X(1:1,8:8);...
			 Area(6).X(4:4,1:1),Area(6).X(4:4,4:4),Area(6).X(4:4,5:5),Area(6).X(4:4,8:8);...
			 Area(6).X(5:5,1:1),Area(6).X(5:5,4:4),Area(6).X(5:5,5:5),Area(6).X(5:5,8:8);...
			 Area(6).X(8:8,1:1),Area(6).X(8:8,4:4),Area(6).X(8:8,5:5),Area(6).X(8:8,8:8)];

%%%% Bounary data Area(7) %%%%
Area(7).nb=3;
Area(7).bnd{1}=[Area(7).X(14:16,14:16),Area(7).X(14:16,1:3),Area(7).X(14:16,36:38),Area(7).X(14:16,23:25);...
			 Area(7).X(1:3,14:16),Area(7).X(1:3,1:3),Area(7).X(1:3,36:38),Area(7).X(1:3,23:25);...
			 Area(7).X(36:38,14:16),Area(7).X(36:38,1:3),Area(7).X(36:38,36:38),Area(7).X(36:38,23:25);...
			 Area(7).X(23:25,14:16),Area(7).X(23:25,1:3),Area(7).X(23:25,36:38),Area(7).X(23:25,23:25)];

Area(7).bnd{2}=[Area(7).X(1:3,1:3),Area(7).X(1:3,20:22),Area(7).X(1:3,23:25),Area(7).X(1:3,42:44);...
			 Area(7).X(20:22,1:3),Area(7).X(20:22,20:22),Area(7).X(20:22,23:25),Area(7).X(20:22,42:44);...
			 Area(7).X(23:25,1:3),Area(7).X(23:25,20:22),Area(7).X(23:25,23:25),Area(7).X(23:25,42:44);...
			 Area(7).X(42:44,1:3),Area(7).X(42:44,20:22),Area(7).X(42:44,23:25),Area(7).X(42:44,42:44)];

Area(7).bnd{3}=[Area(7).X(10:12,10:12),Area(7).X(10:12,17:19),Area(7).X(10:12,32:34),Area(7).X(10:12,39:41);...
			 Area(7).X(17:19,10:12),Area(7).X(17:19,17:19),Area(7).X(17:19,32:34),Area(7).X(17:19,39:41);...
			 Area(7).X(32:34,10:12),Area(7).X(32:34,17:19),Area(7).X(32:34,32:34),Area(7).X(32:34,39:41);...
			 Area(7).X(39:41,10:12),Area(7).X(39:41,17:19),Area(7).X(39:41,32:34),Area(7).X(39:41,39:41)];

%%%% Bounary data Area(8) %%%%
Area(8).nb=2;
Area(8).bnd{1}=[Area(8).X(16:18,16:18),Area(8).X(16:18,1:3),Area(8).X(16:18,36:38),Area(8).X(16:18,21:23);...
			 Area(8).X(1:3,16:18),Area(8).X(1:3,1:3),Area(8).X(1:3,36:38),Area(8).X(1:3,21:23);...
			 Area(8).X(36:38,16:18),Area(8).X(36:38,1:3),Area(8).X(36:38,36:38),Area(8).X(36:38,21:23);...
			 Area(8).X(21:23,16:18),Area(8).X(21:23,1:3),Area(8).X(21:23,36:38),Area(8).X(21:23,21:23)];

Area(8).bnd{2}=[Area(8).X(1:3,1:3),Area(8).X(1:3,19:20),Area(8).X(1:3,21:23),Area(8).X(1:3,39:40);...
			 Area(8).X(19:20,1:3),Area(8).X(19:20,19:20),Area(8).X(19:20,21:23),Area(8).X(19:20,39:40);...
			 Area(8).X(21:23,1:3),Area(8).X(21:23,19:20),Area(8).X(21:23,21:23),Area(8).X(21:23,39:40);...
			 Area(8).X(39:40,1:3),Area(8).X(39:40,19:20),Area(8).X(39:40,21:23),Area(8).X(39:40,39:40)];

%%%% Bounary data Area(9) %%%%
Area(9).nb=1;
Area(9).bnd{1}=[Area(9).X(8:10,8:10),Area(9).X(8:10,1:2),Area(9).X(8:10,18:20),Area(9).X(8:10,11:12);...
			 Area(9).X(1:2,8:10),Area(9).X(1:2,1:2),Area(9).X(1:2,18:20),Area(9).X(1:2,11:12);...
			 Area(9).X(18:20,8:10),Area(9).X(18:20,1:2),Area(9).X(18:20,18:20),Area(9).X(18:20,11:12);...
			 Area(9).X(11:12,8:10),Area(9).X(11:12,1:2),Area(9).X(11:12,18:20),Area(9).X(11:12,11:12)];

%%%% Bounary data Area(10) %%%%
Area(10).nb=3;
Area(10).bnd{1}=[Area(10).X(11:13,11:13),Area(10).X(11:13,1:3),Area(10).X(11:13,28:30),Area(10).X(11:13,18:20);...
			 Area(10).X(1:3,11:13),Area(10).X(1:3,1:3),Area(10).X(1:3,28:30),Area(10).X(1:3,18:20);...
			 Area(10).X(28:30,11:13),Area(10).X(28:30,1:3),Area(10).X(28:30,28:30),Area(10).X(28:30,18:20);...
			 Area(10).X(18:20,11:13),Area(10).X(18:20,1:3),Area(10).X(18:20,28:30),Area(10).X(18:20,18:20)];

Area(10).bnd{2}=[Area(10).X(7:9,7:9),Area(10).X(7:9,15:17),Area(10).X(7:9,24:26),Area(10).X(7:9,32:34);...
			 Area(10).X(15:17,7:9),Area(10).X(15:17,15:17),Area(10).X(15:17,24:26),Area(10).X(15:17,32:34);...
			 Area(10).X(24:26,7:9),Area(10).X(24:26,15:17),Area(10).X(24:26,24:26),Area(10).X(24:26,32:34);...
			 Area(10).X(32:34,7:9),Area(10).X(32:34,15:17),Area(10).X(32:34,24:26),Area(10).X(32:34,32:34)];

Area(10).bnd{3}=[Area(10).X(4:5,4:5),Area(10).X(4:5,14:14),Area(10).X(4:5,21:22),Area(10).X(4:5,31:31);...
			 Area(10).X(14:14,4:5),Area(10).X(14:14,14:14),Area(10).X(14:14,21:22),Area(10).X(14:14,31:31);...
			 Area(10).X(21:22,4:5),Area(10).X(21:22,14:14),Area(10).X(21:22,21:22),Area(10).X(21:22,31:31);...
			 Area(10).X(31:31,4:5),Area(10).X(31:31,14:14),Area(10).X(31:31,21:22),Area(10).X(31:31,31:31)];

%%%% Bounary data Area(11) %%%%
Area(11).nb=1;
Area(11).bnd{1}=[Area(11).X(3:4,3:4),Area(11).X(3:4,1:1),Area(11).X(3:4,7:8),Area(11).X(3:4,5:5);...
			 Area(11).X(1:1,3:4),Area(11).X(1:1,1:1),Area(11).X(1:1,7:8),Area(11).X(1:1,5:5);...
			 Area(11).X(7:8,3:4),Area(11).X(7:8,1:1),Area(11).X(7:8,7:8),Area(11).X(7:8,5:5);...
			 Area(11).X(5:5,3:4),Area(11).X(5:5,1:1),Area(11).X(5:5,7:8),Area(11).X(5:5,5:5)];

%%%% Bounary data Area(12) %%%%
Area(12).nb=2;
Area(12).bnd{1}=[Area(12).X(5:7,5:7),Area(12).X(5:7,13:15),Area(12).X(5:7,20:22),Area(12).X(5:7,28:30);...
			 Area(12).X(13:15,5:7),Area(12).X(13:15,13:15),Area(12).X(13:15,20:22),Area(12).X(13:15,28:30);...
			 Area(12).X(20:22,5:7),Area(12).X(20:22,13:15),Area(12).X(20:22,20:22),Area(12).X(20:22,28:30);...
			 Area(12).X(28:30,5:7),Area(12).X(28:30,13:15),Area(12).X(28:30,20:22),Area(12).X(28:30,28:30)];

Area(12).bnd{2}=[Area(12).X(10:12,10:12),Area(12).X(10:12,1:3),Area(12).X(10:12,25:27),Area(12).X(10:12,16:18);...
			 Area(12).X(1:3,10:12),Area(12).X(1:3,1:3),Area(12).X(1:3,25:27),Area(12).X(1:3,16:18);...
			 Area(12).X(25:27,10:12),Area(12).X(25:27,1:3),Area(12).X(25:27,25:27),Area(12).X(25:27,16:18);...
			 Area(12).X(16:18,10:12),Area(12).X(16:18,1:3),Area(12).X(16:18,25:27),Area(12).X(16:18,16:18)];

%%%% Bounary data Area(13) %%%%
Area(13).nb=2;
Area(13).bnd{1}=[Area(13).X(10:12,10:12),Area(13).X(10:12,1:3),Area(13).X(10:12,25:27),Area(13).X(10:12,16:18);...
			 Area(13).X(1:3,10:12),Area(13).X(1:3,1:3),Area(13).X(1:3,25:27),Area(13).X(1:3,16:18);...
			 Area(13).X(25:27,10:12),Area(13).X(25:27,1:3),Area(13).X(25:27,25:27),Area(13).X(25:27,16:18);...
			 Area(13).X(16:18,10:12),Area(13).X(16:18,1:3),Area(13).X(16:18,25:27),Area(13).X(16:18,16:18)];

Area(13).bnd{2}=[Area(13).X(7:9,7:9),Area(13).X(7:9,13:15),Area(13).X(7:9,22:24),Area(13).X(7:9,28:30);...
			 Area(13).X(13:15,7:9),Area(13).X(13:15,13:15),Area(13).X(13:15,22:24),Area(13).X(13:15,28:30);...
			 Area(13).X(22:24,7:9),Area(13).X(22:24,13:15),Area(13).X(22:24,22:24),Area(13).X(22:24,28:30);...
			 Area(13).X(28:30,7:9),Area(13).X(28:30,13:15),Area(13).X(28:30,22:24),Area(13).X(28:30,28:30)];

%%%% Bounary data Area(14) %%%%
Area(14).nb=1;
Area(14).bnd{1}=[Area(14).X(10:12,10:12),Area(14).X(10:12,1:3),Area(14).X(10:12,22:24),Area(14).X(10:12,13:15);...
			 Area(14).X(1:3,10:12),Area(14).X(1:3,1:3),Area(14).X(1:3,22:24),Area(14).X(1:3,13:15);...
			 Area(14).X(22:24,10:12),Area(14).X(22:24,1:3),Area(14).X(22:24,22:24),Area(14).X(22:24,13:15);...
			 Area(14).X(13:15,10:12),Area(14).X(13:15,1:3),Area(14).X(13:15,22:24),Area(14).X(13:15,13:15)];

%%%% Bounary data Area(15) %%%%
Area(15).nb=2;
Area(15).bnd{1}=[Area(15).X(10:12,10:12),Area(15).X(10:12,18:20),Area(15).X(10:12,30:32),Area(15).X(10:12,38:40);...
			 Area(15).X(18:20,10:12),Area(15).X(18:20,18:20),Area(15).X(18:20,30:32),Area(15).X(18:20,38:40);...
			 Area(15).X(30:32,10:12),Area(15).X(30:32,18:20),Area(15).X(30:32,30:32),Area(15).X(30:32,38:40);...
			 Area(15).X(38:40,10:12),Area(15).X(38:40,18:20),Area(15).X(38:40,30:32),Area(15).X(38:40,38:40)];

Area(15).bnd{2}=[Area(15).X(15:17,15:17),Area(15).X(15:17,1:3),Area(15).X(15:17,35:37),Area(15).X(15:17,21:23);...
			 Area(15).X(1:3,15:17),Area(15).X(1:3,1:3),Area(15).X(1:3,35:37),Area(15).X(1:3,21:23);...
			 Area(15).X(35:37,15:17),Area(15).X(35:37,1:3),Area(15).X(35:37,35:37),Area(15).X(35:37,21:23);...
			 Area(15).X(21:23,15:17),Area(15).X(21:23,1:3),Area(15).X(21:23,35:37),Area(15).X(21:23,21:23)];

%%%% Bounary data Area(16) %%%%
Area(16).nb=5;
Area(16).bnd{1}=[Area(16).X(14:16,14:16),Area(16).X(14:16,1:3),Area(16).X(14:16,40:42),Area(16).X(14:16,27:29);...
			 Area(16).X(1:3,14:16),Area(16).X(1:3,1:3),Area(16).X(1:3,40:42),Area(16).X(1:3,27:29);...
			 Area(16).X(40:42,14:16),Area(16).X(40:42,1:3),Area(16).X(40:42,40:42),Area(16).X(40:42,27:29);...
			 Area(16).X(27:29,14:16),Area(16).X(27:29,1:3),Area(16).X(27:29,40:42),Area(16).X(27:29,27:29)];

Area(16).bnd{2}=[Area(16).X(7:9,7:9),Area(16).X(7:9,21:23),Area(16).X(7:9,33:35),Area(16).X(7:9,47:49);...
			 Area(16).X(21:23,7:9),Area(16).X(21:23,21:23),Area(16).X(21:23,33:35),Area(16).X(21:23,47:49);...
			 Area(16).X(33:35,7:9),Area(16).X(33:35,21:23),Area(16).X(33:35,33:35),Area(16).X(33:35,47:49);...
			 Area(16).X(47:49,7:9),Area(16).X(47:49,21:23),Area(16).X(47:49,33:35),Area(16).X(47:49,47:49)];

Area(16).bnd{3}=[Area(16).X(7:9,7:9),Area(16).X(7:9,24:26),Area(16).X(7:9,33:35),Area(16).X(7:9,50:52);...
			 Area(16).X(24:26,7:9),Area(16).X(24:26,24:26),Area(16).X(24:26,33:35),Area(16).X(24:26,50:52);...
			 Area(16).X(33:35,7:9),Area(16).X(33:35,24:26),Area(16).X(33:35,33:35),Area(16).X(33:35,50:52);...
			 Area(16).X(50:52,7:9),Area(16).X(50:52,24:26),Area(16).X(50:52,33:35),Area(16).X(50:52,50:52)];

Area(16).bnd{4}=[Area(16).X(1:3,1:3),Area(16).X(1:3,17:19),Area(16).X(1:3,27:29),Area(16).X(1:3,43:45);...
			 Area(16).X(17:19,1:3),Area(16).X(17:19,17:19),Area(16).X(17:19,27:29),Area(16).X(17:19,43:45);...
			 Area(16).X(27:29,1:3),Area(16).X(27:29,17:19),Area(16).X(27:29,27:29),Area(16).X(27:29,43:45);...
			 Area(16).X(43:45,1:3),Area(16).X(43:45,17:19),Area(16).X(43:45,27:29),Area(16).X(43:45,43:45)];

Area(16).bnd{5}=[Area(16).X(10:10,10:10),Area(16).X(10:10,20:20),Area(16).X(10:10,36:36),Area(16).X(10:10,46:46);...
			 Area(16).X(20:20,10:10),Area(16).X(20:20,20:20),Area(16).X(20:20,36:36),Area(16).X(20:20,46:46);...
			 Area(16).X(36:36,10:10),Area(16).X(36:36,20:20),Area(16).X(36:36,36:36),Area(16).X(36:36,46:46);...
			 Area(16).X(46:46,10:10),Area(16).X(46:46,20:20),Area(16).X(46:46,36:36),Area(16).X(46:46,46:46)];

%%%% Bounary data Area(17) %%%%
Area(17).nb=1;
Area(17).bnd{1}=[Area(17).X(16:18,16:18),Area(17).X(16:18,1:3),Area(17).X(16:18,34:36),Area(17).X(16:18,19:21);...
			 Area(17).X(1:3,16:18),Area(17).X(1:3,1:3),Area(17).X(1:3,34:36),Area(17).X(1:3,19:21);...
			 Area(17).X(34:36,16:18),Area(17).X(34:36,1:3),Area(17).X(34:36,34:36),Area(17).X(34:36,19:21);...
			 Area(17).X(19:21,16:18),Area(17).X(19:21,1:3),Area(17).X(19:21,34:36),Area(17).X(19:21,19:21)];

%%%% Bounary data Area(18) %%%%
Area(18).nb=1;
Area(18).bnd{1}=[Area(18).X(4:4,4:4),Area(18).X(4:4,1:1),Area(18).X(4:4,8:8),Area(18).X(4:4,5:5);...
			 Area(18).X(1:1,4:4),Area(18).X(1:1,1:1),Area(18).X(1:1,8:8),Area(18).X(1:1,5:5);...
			 Area(18).X(8:8,4:4),Area(18).X(8:8,1:1),Area(18).X(8:8,8:8),Area(18).X(8:8,5:5);...
			 Area(18).X(5:5,4:4),Area(18).X(5:5,1:1),Area(18).X(5:5,8:8),Area(18).X(5:5,5:5)];

%%%% Bounary data Area(19) %%%%
Area(19).nb=4;
Area(19).bnd{1}=[Area(19).X(14:16,14:16),Area(19).X(14:16,1:3),Area(19).X(14:16,37:39),Area(19).X(14:16,24:26);...
			 Area(19).X(1:3,14:16),Area(19).X(1:3,1:3),Area(19).X(1:3,37:39),Area(19).X(1:3,24:26);...
			 Area(19).X(37:39,14:16),Area(19).X(37:39,1:3),Area(19).X(37:39,37:39),Area(19).X(37:39,24:26);...
			 Area(19).X(24:26,14:16),Area(19).X(24:26,1:3),Area(19).X(24:26,37:39),Area(19).X(24:26,24:26)];

Area(19).bnd{2}=[Area(19).X(4:6,4:6),Area(19).X(4:6,18:20),Area(19).X(4:6,27:29),Area(19).X(4:6,41:43);...
			 Area(19).X(18:20,4:6),Area(19).X(18:20,18:20),Area(19).X(18:20,27:29),Area(19).X(18:20,41:43);...
			 Area(19).X(27:29,4:6),Area(19).X(27:29,18:20),Area(19).X(27:29,27:29),Area(19).X(27:29,41:43);...
			 Area(19).X(41:43,4:6),Area(19).X(41:43,18:20),Area(19).X(41:43,27:29),Area(19).X(41:43,41:43)];

Area(19).bnd{3}=[Area(19).X(10:12,10:12),Area(19).X(10:12,21:23),Area(19).X(10:12,33:35),Area(19).X(10:12,44:46);...
			 Area(19).X(21:23,10:12),Area(19).X(21:23,21:23),Area(19).X(21:23,33:35),Area(19).X(21:23,44:46);...
			 Area(19).X(33:35,10:12),Area(19).X(33:35,21:23),Area(19).X(33:35,33:35),Area(19).X(33:35,44:46);...
			 Area(19).X(44:46,10:12),Area(19).X(44:46,21:23),Area(19).X(44:46,33:35),Area(19).X(44:46,44:46)];

Area(19).bnd{4}=[Area(19).X(1:3,1:3),Area(19).X(1:3,17:17),Area(19).X(1:3,24:26),Area(19).X(1:3,40:40);...
			 Area(19).X(17:17,1:3),Area(19).X(17:17,17:17),Area(19).X(17:17,24:26),Area(19).X(17:17,40:40);...
			 Area(19).X(24:26,1:3),Area(19).X(24:26,17:17),Area(19).X(24:26,24:26),Area(19).X(24:26,40:40);...
			 Area(19).X(40:40,1:3),Area(19).X(40:40,17:17),Area(19).X(40:40,24:26),Area(19).X(40:40,40:40)];

%%%% Bounary data Area(20) %%%%
Area(20).nb=1;
Area(20).bnd{1}=[Area(20).X(4:6,4:6),Area(20).X(4:6,1:1),Area(20).X(4:6,10:12),Area(20).X(4:6,7:7);...
			 Area(20).X(1:1,4:6),Area(20).X(1:1,1:1),Area(20).X(1:1,10:12),Area(20).X(1:1,7:7);...
			 Area(20).X(10:12,4:6),Area(20).X(10:12,1:1),Area(20).X(10:12,10:12),Area(20).X(10:12,7:7);...
			 Area(20).X(7:7,4:6),Area(20).X(7:7,1:1),Area(20).X(7:7,10:12),Area(20).X(7:7,7:7)];

%%%% Bounary data Area(21) %%%%
Area(21).nb=2;
Area(21).bnd{1}=[Area(21).X(13:15,13:15),Area(21).X(13:15,1:3),Area(21).X(13:15,31:33),Area(21).X(13:15,19:21);...
			 Area(21).X(1:3,13:15),Area(21).X(1:3,1:3),Area(21).X(1:3,31:33),Area(21).X(1:3,19:21);...
			 Area(21).X(31:33,13:15),Area(21).X(31:33,1:3),Area(21).X(31:33,31:33),Area(21).X(31:33,19:21);...
			 Area(21).X(19:21,13:15),Area(21).X(19:21,1:3),Area(21).X(19:21,31:33),Area(21).X(19:21,19:21)];

Area(21).bnd{2}=[Area(21).X(10:12,10:12),Area(21).X(10:12,16:18),Area(21).X(10:12,28:30),Area(21).X(10:12,34:36);...
			 Area(21).X(16:18,10:12),Area(21).X(16:18,16:18),Area(21).X(16:18,28:30),Area(21).X(16:18,34:36);...
			 Area(21).X(28:30,10:12),Area(21).X(28:30,16:18),Area(21).X(28:30,28:30),Area(21).X(28:30,34:36);...
			 Area(21).X(34:36,10:12),Area(21).X(34:36,16:18),Area(21).X(34:36,28:30),Area(21).X(34:36,34:36)];

%%%% Bounary data Area(22) %%%%
Area(22).nb=1;
Area(22).bnd{1}=[Area(22).X(12:14,12:14),Area(22).X(12:14,1:3),Area(22).X(12:14,26:28),Area(22).X(12:14,15:17);...
			 Area(22).X(1:3,12:14),Area(22).X(1:3,1:3),Area(22).X(1:3,26:28),Area(22).X(1:3,15:17);...
			 Area(22).X(26:28,12:14),Area(22).X(26:28,1:3),Area(22).X(26:28,26:28),Area(22).X(26:28,15:17);...
			 Area(22).X(15:17,12:14),Area(22).X(15:17,1:3),Area(22).X(15:17,26:28),Area(22).X(15:17,15:17)];

%%%% Bounary data Area(23) %%%%
Area(23).nb=2;
Area(23).bnd{1}=[Area(23).X(9:11,9:11),Area(23).X(9:11,1:3),Area(23).X(9:11,23:25),Area(23).X(9:11,15:17);...
			 Area(23).X(1:3,9:11),Area(23).X(1:3,1:3),Area(23).X(1:3,23:25),Area(23).X(1:3,15:17);...
			 Area(23).X(23:25,9:11),Area(23).X(23:25,1:3),Area(23).X(23:25,23:25),Area(23).X(23:25,15:17);...
			 Area(23).X(15:17,9:11),Area(23).X(15:17,1:3),Area(23).X(15:17,23:25),Area(23).X(15:17,15:17)];

Area(23).bnd{2}=[Area(23).X(5:7,5:7),Area(23).X(5:7,12:14),Area(23).X(5:7,19:21),Area(23).X(5:7,26:28);...
			 Area(23).X(12:14,5:7),Area(23).X(12:14,12:14),Area(23).X(12:14,19:21),Area(23).X(12:14,26:28);...
			 Area(23).X(19:21,5:7),Area(23).X(19:21,12:14),Area(23).X(19:21,19:21),Area(23).X(19:21,26:28);...
			 Area(23).X(26:28,5:7),Area(23).X(26:28,12:14),Area(23).X(26:28,19:21),Area(23).X(26:28,26:28)];

%%%% Bounary data Area(24) %%%%
Area(24).nb=1;
Area(24).bnd{1}=[Area(24).X(9:11,9:11),Area(24).X(9:11,1:3),Area(24).X(9:11,20:22),Area(24).X(9:11,12:14);...
			 Area(24).X(1:3,9:11),Area(24).X(1:3,1:3),Area(24).X(1:3,20:22),Area(24).X(1:3,12:14);...
			 Area(24).X(20:22,9:11),Area(24).X(20:22,1:3),Area(24).X(20:22,20:22),Area(24).X(20:22,12:14);...
			 Area(24).X(12:14,9:11),Area(24).X(12:14,1:3),Area(24).X(12:14,20:22),Area(24).X(12:14,12:14)];

%%%% Bounary data Area(25) %%%%
Area(25).nb=4;
Area(25).bnd{1}=[Area(25).X(8:10,8:10),Area(25).X(8:10,1:3),Area(25).X(8:10,25:27),Area(25).X(8:10,18:20);...
			 Area(25).X(1:3,8:10),Area(25).X(1:3,1:3),Area(25).X(1:3,25:27),Area(25).X(1:3,18:20);...
			 Area(25).X(25:27,8:10),Area(25).X(25:27,1:3),Area(25).X(25:27,25:27),Area(25).X(25:27,18:20);...
			 Area(25).X(18:20,8:10),Area(25).X(18:20,1:3),Area(25).X(18:20,25:27),Area(25).X(18:20,18:20)];

Area(25).bnd{2}=[Area(25).X(4:6,4:6),Area(25).X(4:6,15:17),Area(25).X(4:6,21:23),Area(25).X(4:6,32:34);...
			 Area(25).X(15:17,4:6),Area(25).X(15:17,15:17),Area(25).X(15:17,21:23),Area(25).X(15:17,32:34);...
			 Area(25).X(21:23,4:6),Area(25).X(21:23,15:17),Area(25).X(21:23,21:23),Area(25).X(21:23,32:34);...
			 Area(25).X(32:34,4:6),Area(25).X(32:34,15:17),Area(25).X(32:34,21:23),Area(25).X(32:34,32:34)];

Area(25).bnd{3}=[Area(25).X(1:3,1:3),Area(25).X(1:3,11:13),Area(25).X(1:3,18:20),Area(25).X(1:3,28:30);...
			 Area(25).X(11:13,1:3),Area(25).X(11:13,11:13),Area(25).X(11:13,18:20),Area(25).X(11:13,28:30);...
			 Area(25).X(18:20,1:3),Area(25).X(18:20,11:13),Area(25).X(18:20,18:20),Area(25).X(18:20,28:30);...
			 Area(25).X(28:30,1:3),Area(25).X(28:30,11:13),Area(25).X(28:30,18:20),Area(25).X(28:30,28:30)];

Area(25).bnd{4}=[Area(25).X(7:7,7:7),Area(25).X(7:7,14:14),Area(25).X(7:7,24:24),Area(25).X(7:7,31:31);...
			 Area(25).X(14:14,7:7),Area(25).X(14:14,14:14),Area(25).X(14:14,24:24),Area(25).X(14:14,31:31);...
			 Area(25).X(24:24,7:7),Area(25).X(24:24,14:14),Area(25).X(24:24,24:24),Area(25).X(24:24,31:31);...
			 Area(25).X(31:31,7:7),Area(25).X(31:31,14:14),Area(25).X(31:31,24:24),Area(25).X(31:31,31:31)];

%%%% Bounary data Area(26) %%%%
Area(26).nb=1;
Area(26).bnd{1}=[Area(26).X(13:15,13:15),Area(26).X(13:15,1:3),Area(26).X(13:15,28:30),Area(26).X(13:15,16:18);...
			 Area(26).X(1:3,13:15),Area(26).X(1:3,1:3),Area(26).X(1:3,28:30),Area(26).X(1:3,16:18);...
			 Area(26).X(28:30,13:15),Area(26).X(28:30,1:3),Area(26).X(28:30,28:30),Area(26).X(28:30,16:18);...
			 Area(26).X(16:18,13:15),Area(26).X(16:18,1:3),Area(26).X(16:18,28:30),Area(26).X(16:18,16:18)];

%%%% Bounary data Area(27) %%%%
Area(27).nb=1;
Area(27).bnd{1}=[Area(27).X(3:3,3:3),Area(27).X(3:3,1:1),Area(27).X(3:3,6:6),Area(27).X(3:3,4:4);...
			 Area(27).X(1:1,3:3),Area(27).X(1:1,1:1),Area(27).X(1:1,6:6),Area(27).X(1:1,4:4);...
			 Area(27).X(6:6,3:3),Area(27).X(6:6,1:1),Area(27).X(6:6,6:6),Area(27).X(6:6,4:4);...
			 Area(27).X(4:4,3:3),Area(27).X(4:4,1:1),Area(27).X(4:4,6:6),Area(27).X(4:4,4:4)];

%%%% Bounary data Area(28) %%%%
Area(28).nb=2;
Area(28).bnd{1}=[Area(28).X(13:15,13:15),Area(28).X(13:15,1:3),Area(28).X(13:15,29:31),Area(28).X(13:15,17:19);...
			 Area(28).X(1:3,13:15),Area(28).X(1:3,1:3),Area(28).X(1:3,29:31),Area(28).X(1:3,17:19);...
			 Area(28).X(29:31,13:15),Area(28).X(29:31,1:3),Area(28).X(29:31,29:31),Area(28).X(29:31,17:19);...
			 Area(28).X(17:19,13:15),Area(28).X(17:19,1:3),Area(28).X(17:19,29:31),Area(28).X(17:19,17:19)];

Area(28).bnd{2}=[Area(28).X(9:9,9:9),Area(28).X(9:9,16:16),Area(28).X(9:9,25:25),Area(28).X(9:9,32:32);...
			 Area(28).X(16:16,9:9),Area(28).X(16:16,16:16),Area(28).X(16:16,25:25),Area(28).X(16:16,32:32);...
			 Area(28).X(25:25,9:9),Area(28).X(25:25,16:16),Area(28).X(25:25,25:25),Area(28).X(25:25,32:32);...
			 Area(28).X(32:32,9:9),Area(28).X(32:32,16:16),Area(28).X(32:32,25:25),Area(28).X(32:32,32:32)];

%%%% Bounary data Area(29) %%%%
Area(29).nb=1;
Area(29).bnd{1}=[Area(29).X(6:6,6:6),Area(29).X(6:6,1:1),Area(29).X(6:6,12:12),Area(29).X(6:6,7:7);...
			 Area(29).X(1:1,6:6),Area(29).X(1:1,1:1),Area(29).X(1:1,12:12),Area(29).X(1:1,7:7);...
			 Area(29).X(12:12,6:6),Area(29).X(12:12,1:1),Area(29).X(12:12,12:12),Area(29).X(12:12,7:7);...
			 Area(29).X(7:7,6:6),Area(29).X(7:7,1:1),Area(29).X(7:7,12:12),Area(29).X(7:7,7:7)];

%%%% Boundary index %%%%
Bnd_index=[ 15, 1, 16, 1;...
		    5, 1, 7, 1;...
		    16, 2, 19, 1;...
		    3, 1, 5, 2;...
		    7, 2, 10, 1;...
		    16, 3, 25, 1;...
		    19, 2, 21, 1;...
		    1, 1, 3, 2;...
		    5, 3, 15, 2;...
		    7, 3, 8, 1;...
		    12, 1, 13, 1;...
		    16, 4, 17, 1;...
		    25, 2, 28, 1;...
		    19, 3, 23, 1;...
		    21, 2, 22, 1;...
		    1, 2, 2, 1;...
		    3, 3, 4, 1;...
		    6, 1, 5, 4;...
		    8, 2, 9, 1;...
		    10, 2, 12, 2;...
		    13, 2, 14, 1;...
		    16, 5, 18, 1;...
		    25, 3, 26, 1;...
		    28, 2, 29, 1;...
		    19, 4, 20, 1;...
		    23, 2, 24, 1;...
		    10, 3, 11, 1;...
		    25, 4, 27, 1];

tat=1;
%%finish%%
