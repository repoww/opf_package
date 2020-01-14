%%%%%% Area(1) DATA %%%%%%
Area(1).node=[1,2,3,17,20];
Area(1).size=size(Area(1).node,2);
Area(1).extnode=[1,2,3,17,20,4];
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

E1=[2.518993726665344e+02;-1.269705415246708e+02;-1.257088038304551e+02]/V_base;
F1=[-8.545024763749053e-01;-2.170296505484899e+02;2.183509784163180e+02]/V_base;
Area(1).X(1:3,1:3)=E1*E1';
Area(1).X(Area(1).N_of_phases_ext+1:Area(1).N_of_phases_ext+3,Area(1).N_of_phases_ext+1:Area(1).N_of_phases_ext+3)=...
		F1*F1';
Area(1).X(1:3,Area(1).N_of_phases_ext+1:Area(1).N_of_phases_ext+3)=...
		E1*F1';
Area(1).X(Area(1).N_of_phases_ext+1:Area(1).N_of_phases_ext+3,1:3)=...
		F1*E1';

% Area(1).X(1:3,1:3)=[1;-0.5;-0.5]*[1,-0.5,-0.5]*10.5^2/3;
% Area(1).X(Area(1).N_of_phases_ext+1:Area(1).N_of_phases_ext+3,Area(1).N_of_phases_ext+1:Area(1).N_of_phases_ext+3)=...
% 		[0;-sqrt(3)/2;sqrt(3)/2]*[0,-sqrt(3)/2,sqrt(3)/2]*10.5^2/3;
% Area(1).X(1:3,Area(1).N_of_phases_ext+1:Area(1).N_of_phases_ext+3)=...
% 		[1;-0.5;-0.5]*[0,-sqrt(3)/2,sqrt(3)/2]*10.5^2/3;
% Area(1).X(Area(1).N_of_phases_ext+1:Area(1).N_of_phases_ext+3,1:3)=...
% 		[0;-sqrt(3)/2;sqrt(3)/2]* [1,-0.5,-0.5]*10.5^2/3;

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
Area(2).node=[4,5,7,14];
Area(2).size=size(Area(2).node,2);
Area(2).extnode=[4,5,7,14,3,6];
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
Area(3).node=[6,8,10,18];
Area(3).size=size(Area(3).node,2);
Area(3).extnode=[6,8,10,18,4,9];
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
Area(4).node=[9,11,21];
Area(4).size=size(Area(4).node,2);
Area(4).extnode=[9,11,21,6,12,22];
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
Area(5).node=[12,13,15,16];
Area(5).size=size(Area(5).node,2);
Area(5).extnode=[12,13,15,16,11,19];
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
Area(6).node=[19,29,30,35];
Area(6).size=size(Area(6).node,2);
Area(6).extnode=[19,29,30,35,12,23,34];
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
Area(7).node=[22,24,33];
Area(7).size=size(Area(7).node,2);
Area(7).extnode=[22,24,33,21];
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
Area(8).node=[23,25,32];
Area(8).size=size(Area(8).node,2);
Area(8).extnode=[23,25,32,19,26,45];
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
Area(9).node=[26,28,41,57];
Area(9).size=size(Area(9).node,2);
Area(9).extnode=[26,28,41,57,23,27];
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
Area(10).node=[27,50,54,59];
Area(10).size=size(Area(10).node,2);
Area(10).extnode=[27,50,54,59,26,31];
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
Area(11).node=[31,56,60,62];
Area(11).size=size(Area(11).node,2);
Area(11).extnode=[31,56,60,62,27];
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
Area(12).node=[34,36,39,49,52];
Area(12).size=size(Area(12).node,2);
Area(12).extnode=[34,36,39,49,52,29,37];
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
Area(13).node=[37,38,40,42];
Area(13).size=size(Area(13).node,2);
Area(13).extnode=[37,38,40,42,34,43];
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
Area(14).node=[43,44,46,47];
Area(14).size=size(Area(14).node,2);
Area(14).extnode=[43,44,46,47,37];
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
Area(15).node=[45,48,63,77];
Area(15).size=size(Area(15).node,2);
Area(15).extnode=[45,48,63,77,32,51];
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
Area(16).node=[51,53,66,70];
Area(16).size=size(Area(16).node,2);
Area(16).extnode=[51,53,66,70,45,55];
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
Area(17).node=[55,58,61,64,68];
Area(17).size=size(Area(17).node,2);
Area(17).extnode=[55,58,61,64,68,51,65,67,72];
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
Area(18).node=[65,83,85,88];
Area(18).size=size(Area(18).node,2);
Area(18).extnode=[65,83,85,88,61,69,87];
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
Area(19).node=[67,71,75,78];
Area(19).size=size(Area(19).node,2);
Area(19).extnode=[67,71,75,78,58];
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
Area(20).node=[69,73,81];
Area(20).size=size(Area(20).node,2);
Area(20).extnode=[69,73,81,65];
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
Area(21).node=[72,74,76,91,94];
Area(21).size=size(Area(21).node,2);
Area(21).extnode=[72,74,76,91,94,55,79,82];
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
Area(22).node=[79,80];
Area(22).size=size(Area(22).node,2);
Area(22).extnode=[79,80,72,86,115];
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
Area(23).node=[82,84,97,109];
Area(23).size=size(Area(23).node,2);
Area(23).extnode=[82,84,97,109,74];
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
Area(24).node=[86,108,112,113];
Area(24).size=size(Area(24).node,2);
Area(24).extnode=[86,108,112,113,80,128];
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
Area(25).node=[87,89,90,92];
Area(25).size=size(Area(25).node,2);
Area(25).extnode=[87,89,90,92,85,93];
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
Area(26).node=[93,96,111,119,145];
Area(26).size=size(Area(26).node,2);
Area(26).extnode=[93,96,111,119,145,89,95];
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
Area(27).node=[95,98,99];
Area(27).size=size(Area(27).node,2);
Area(27).extnode=[95,98,99,93,100];
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
Area(28).node=[100,102,103,107,127];
Area(28).size=size(Area(28).node,2);
Area(28).extnode=[100,102,103,107,127,98,101];
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
Area(29).node=[101,104,105,106];
Area(29).size=size(Area(29).node,2);
Area(29).extnode=[101,104,105,106,100,110];
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

%%%%%% Area(30) DATA %%%%%%
Area(30).node=[110,118,126,138];
Area(30).size=size(Area(30).node,2);
Area(30).extnode=[110,118,126,138,104,114];
Area(30).extsize=size(Area(30).extnode,2);

Area(30).N_of_phases=0;
for n=1:Area(30).size
	 Area(30).N_of_phases=Area(30).N_of_phases+node(Area(30).node(n)).np;
end


Area(30).N_of_phases_ext=0;
for n=1:Area(30).extsize
	 Area(30).N_of_phases_ext=Area(30).N_of_phases_ext+node(Area(30).extnode(n)).np;
end


Area(30).G_of_phases=0;
for n=1:Area(30).size
	 if node(Area(30).node(n)).g==1
	 Area(30).G_of_phases=Area(30).G_of_phases+node(Area(30).node(n)).np;
	 end
end

Area(30).X=sdpvar(2*Area(30).N_of_phases_ext,2*Area(30).N_of_phases_ext);


Area(30).cg=sdpvar(Area(30).G_of_phases,1);

Area(30).Y=zeros(Area(30).N_of_phases_ext,Area(30).N_of_phases_ext);
row_count1=1;
row_count2=0;
col_count1=1;
col_count2=0;
for i=1:Area(30).extsize
	 row_count2=row_count2+node(Area(30).extnode(i)).np;
	 for j=1:Area(30).extsize
		  col_count2=col_count2+node(Area(30).extnode(j)).np;
		  Area(30).Y(row_count1:row_count2,col_count1:col_count2)=...
		  Y(min(node(Area(30).extnode(i)).index):max(node(Area(30).extnode(i)).index),min(node(Area(30).extnode(j)).index):max(node(Area(30).extnode(j)).index));
		  col_count1=col_count1+node(Area(30).extnode(j)).np;
	 end
	 row_count1=row_count1+node(Area(30).extnode(i)).np;
	 col_count1=1;
	 col_count2=0;
end

%%%%%% Area(31) DATA %%%%%%
Area(31).node=[114,117,121,122,125];
Area(31).size=size(Area(31).node,2);
Area(31).extnode=[114,117,121,122,125,110,124];
Area(31).extsize=size(Area(31).extnode,2);

Area(31).N_of_phases=0;
for n=1:Area(31).size
	 Area(31).N_of_phases=Area(31).N_of_phases+node(Area(31).node(n)).np;
end


Area(31).N_of_phases_ext=0;
for n=1:Area(31).extsize
	 Area(31).N_of_phases_ext=Area(31).N_of_phases_ext+node(Area(31).extnode(n)).np;
end


Area(31).G_of_phases=0;
for n=1:Area(31).size
	 if node(Area(31).node(n)).g==1
	 Area(31).G_of_phases=Area(31).G_of_phases+node(Area(31).node(n)).np;
	 end
end

Area(31).X=sdpvar(2*Area(31).N_of_phases_ext,2*Area(31).N_of_phases_ext);


Area(31).cg=sdpvar(Area(31).G_of_phases,1);

Area(31).Y=zeros(Area(31).N_of_phases_ext,Area(31).N_of_phases_ext);
row_count1=1;
row_count2=0;
col_count1=1;
col_count2=0;
for i=1:Area(31).extsize
	 row_count2=row_count2+node(Area(31).extnode(i)).np;
	 for j=1:Area(31).extsize
		  col_count2=col_count2+node(Area(31).extnode(j)).np;
		  Area(31).Y(row_count1:row_count2,col_count1:col_count2)=...
		  Y(min(node(Area(31).extnode(i)).index):max(node(Area(31).extnode(i)).index),min(node(Area(31).extnode(j)).index):max(node(Area(31).extnode(j)).index));
		  col_count1=col_count1+node(Area(31).extnode(j)).np;
	 end
	 row_count1=row_count1+node(Area(31).extnode(i)).np;
	 col_count1=1;
	 col_count2=0;
end

%%%%%% Area(32) DATA %%%%%%
Area(32).node=[115,116,120,123];
Area(32).size=size(Area(32).node,2);
Area(32).extnode=[115,116,120,123,79];
Area(32).extsize=size(Area(32).extnode,2);

Area(32).N_of_phases=0;
for n=1:Area(32).size
	 Area(32).N_of_phases=Area(32).N_of_phases+node(Area(32).node(n)).np;
end


Area(32).N_of_phases_ext=0;
for n=1:Area(32).extsize
	 Area(32).N_of_phases_ext=Area(32).N_of_phases_ext+node(Area(32).extnode(n)).np;
end


Area(32).G_of_phases=0;
for n=1:Area(32).size
	 if node(Area(32).node(n)).g==1
	 Area(32).G_of_phases=Area(32).G_of_phases+node(Area(32).node(n)).np;
	 end
end

Area(32).X=sdpvar(2*Area(32).N_of_phases_ext,2*Area(32).N_of_phases_ext);


Area(32).cg=sdpvar(Area(32).G_of_phases,1);

Area(32).Y=zeros(Area(32).N_of_phases_ext,Area(32).N_of_phases_ext);
row_count1=1;
row_count2=0;
col_count1=1;
col_count2=0;
for i=1:Area(32).extsize
	 row_count2=row_count2+node(Area(32).extnode(i)).np;
	 for j=1:Area(32).extsize
		  col_count2=col_count2+node(Area(32).extnode(j)).np;
		  Area(32).Y(row_count1:row_count2,col_count1:col_count2)=...
		  Y(min(node(Area(32).extnode(i)).index):max(node(Area(32).extnode(i)).index),min(node(Area(32).extnode(j)).index):max(node(Area(32).extnode(j)).index));
		  col_count1=col_count1+node(Area(32).extnode(j)).np;
	 end
	 row_count1=row_count1+node(Area(32).extnode(i)).np;
	 col_count1=1;
	 col_count2=0;
end

%%%%%% Area(33) DATA %%%%%%
Area(33).node=[124,147,149,151];
Area(33).size=size(Area(33).node,2);
Area(33).extnode=[124,147,149,151,121,129];
Area(33).extsize=size(Area(33).extnode,2);

Area(33).N_of_phases=0;
for n=1:Area(33).size
	 Area(33).N_of_phases=Area(33).N_of_phases+node(Area(33).node(n)).np;
end


Area(33).N_of_phases_ext=0;
for n=1:Area(33).extsize
	 Area(33).N_of_phases_ext=Area(33).N_of_phases_ext+node(Area(33).extnode(n)).np;
end


Area(33).G_of_phases=0;
for n=1:Area(33).size
	 if node(Area(33).node(n)).g==1
	 Area(33).G_of_phases=Area(33).G_of_phases+node(Area(33).node(n)).np;
	 end
end

Area(33).X=sdpvar(2*Area(33).N_of_phases_ext,2*Area(33).N_of_phases_ext);


Area(33).cg=sdpvar(Area(33).G_of_phases,1);

Area(33).Y=zeros(Area(33).N_of_phases_ext,Area(33).N_of_phases_ext);
row_count1=1;
row_count2=0;
col_count1=1;
col_count2=0;
for i=1:Area(33).extsize
	 row_count2=row_count2+node(Area(33).extnode(i)).np;
	 for j=1:Area(33).extsize
		  col_count2=col_count2+node(Area(33).extnode(j)).np;
		  Area(33).Y(row_count1:row_count2,col_count1:col_count2)=...
		  Y(min(node(Area(33).extnode(i)).index):max(node(Area(33).extnode(i)).index),min(node(Area(33).extnode(j)).index):max(node(Area(33).extnode(j)).index));
		  col_count1=col_count1+node(Area(33).extnode(j)).np;
	 end
	 row_count1=row_count1+node(Area(33).extnode(i)).np;
	 col_count1=1;
	 col_count2=0;
end

%%%%%% Area(34) DATA %%%%%%
Area(34).node=[128,158,174];
Area(34).size=size(Area(34).node,2);
Area(34).extnode=[128,158,174,108,131];
Area(34).extsize=size(Area(34).extnode,2);

Area(34).N_of_phases=0;
for n=1:Area(34).size
	 Area(34).N_of_phases=Area(34).N_of_phases+node(Area(34).node(n)).np;
end


Area(34).N_of_phases_ext=0;
for n=1:Area(34).extsize
	 Area(34).N_of_phases_ext=Area(34).N_of_phases_ext+node(Area(34).extnode(n)).np;
end


Area(34).G_of_phases=0;
for n=1:Area(34).size
	 if node(Area(34).node(n)).g==1
	 Area(34).G_of_phases=Area(34).G_of_phases+node(Area(34).node(n)).np;
	 end
end

Area(34).X=sdpvar(2*Area(34).N_of_phases_ext,2*Area(34).N_of_phases_ext);


Area(34).cg=sdpvar(Area(34).G_of_phases,1);

Area(34).Y=zeros(Area(34).N_of_phases_ext,Area(34).N_of_phases_ext);
row_count1=1;
row_count2=0;
col_count1=1;
col_count2=0;
for i=1:Area(34).extsize
	 row_count2=row_count2+node(Area(34).extnode(i)).np;
	 for j=1:Area(34).extsize
		  col_count2=col_count2+node(Area(34).extnode(j)).np;
		  Area(34).Y(row_count1:row_count2,col_count1:col_count2)=...
		  Y(min(node(Area(34).extnode(i)).index):max(node(Area(34).extnode(i)).index),min(node(Area(34).extnode(j)).index):max(node(Area(34).extnode(j)).index));
		  col_count1=col_count1+node(Area(34).extnode(j)).np;
	 end
	 row_count1=row_count1+node(Area(34).extnode(i)).np;
	 col_count1=1;
	 col_count2=0;
end

%%%%%% Area(35) DATA %%%%%%
Area(35).node=[129,130,137,143];
Area(35).size=size(Area(35).node,2);
Area(35).extnode=[129,130,137,143,124,132];
Area(35).extsize=size(Area(35).extnode,2);

Area(35).N_of_phases=0;
for n=1:Area(35).size
	 Area(35).N_of_phases=Area(35).N_of_phases+node(Area(35).node(n)).np;
end


Area(35).N_of_phases_ext=0;
for n=1:Area(35).extsize
	 Area(35).N_of_phases_ext=Area(35).N_of_phases_ext+node(Area(35).extnode(n)).np;
end


Area(35).G_of_phases=0;
for n=1:Area(35).size
	 if node(Area(35).node(n)).g==1
	 Area(35).G_of_phases=Area(35).G_of_phases+node(Area(35).node(n)).np;
	 end
end

Area(35).X=sdpvar(2*Area(35).N_of_phases_ext,2*Area(35).N_of_phases_ext);


Area(35).cg=sdpvar(Area(35).G_of_phases,1);

Area(35).Y=zeros(Area(35).N_of_phases_ext,Area(35).N_of_phases_ext);
row_count1=1;
row_count2=0;
col_count1=1;
col_count2=0;
for i=1:Area(35).extsize
	 row_count2=row_count2+node(Area(35).extnode(i)).np;
	 for j=1:Area(35).extsize
		  col_count2=col_count2+node(Area(35).extnode(j)).np;
		  Area(35).Y(row_count1:row_count2,col_count1:col_count2)=...
		  Y(min(node(Area(35).extnode(i)).index):max(node(Area(35).extnode(i)).index),min(node(Area(35).extnode(j)).index):max(node(Area(35).extnode(j)).index));
		  col_count1=col_count1+node(Area(35).extnode(j)).np;
	 end
	 row_count1=row_count1+node(Area(35).extnode(i)).np;
	 col_count1=1;
	 col_count2=0;
end

%%%%%% Area(36) DATA %%%%%%
Area(36).node=[131,133,139];
Area(36).size=size(Area(36).node,2);
Area(36).extnode=[131,133,139,128,140];
Area(36).extsize=size(Area(36).extnode,2);

Area(36).N_of_phases=0;
for n=1:Area(36).size
	 Area(36).N_of_phases=Area(36).N_of_phases+node(Area(36).node(n)).np;
end


Area(36).N_of_phases_ext=0;
for n=1:Area(36).extsize
	 Area(36).N_of_phases_ext=Area(36).N_of_phases_ext+node(Area(36).extnode(n)).np;
end


Area(36).G_of_phases=0;
for n=1:Area(36).size
	 if node(Area(36).node(n)).g==1
	 Area(36).G_of_phases=Area(36).G_of_phases+node(Area(36).node(n)).np;
	 end
end

Area(36).X=sdpvar(2*Area(36).N_of_phases_ext,2*Area(36).N_of_phases_ext);


Area(36).cg=sdpvar(Area(36).G_of_phases,1);

Area(36).Y=zeros(Area(36).N_of_phases_ext,Area(36).N_of_phases_ext);
row_count1=1;
row_count2=0;
col_count1=1;
col_count2=0;
for i=1:Area(36).extsize
	 row_count2=row_count2+node(Area(36).extnode(i)).np;
	 for j=1:Area(36).extsize
		  col_count2=col_count2+node(Area(36).extnode(j)).np;
		  Area(36).Y(row_count1:row_count2,col_count1:col_count2)=...
		  Y(min(node(Area(36).extnode(i)).index):max(node(Area(36).extnode(i)).index),min(node(Area(36).extnode(j)).index):max(node(Area(36).extnode(j)).index));
		  col_count1=col_count1+node(Area(36).extnode(j)).np;
	 end
	 row_count1=row_count1+node(Area(36).extnode(i)).np;
	 col_count1=1;
	 col_count2=0;
end

%%%%%% Area(37) DATA %%%%%%
Area(37).node=[132,135,136];
Area(37).size=size(Area(37).node,2);
Area(37).extnode=[132,135,136,130,134];
Area(37).extsize=size(Area(37).extnode,2);

Area(37).N_of_phases=0;
for n=1:Area(37).size
	 Area(37).N_of_phases=Area(37).N_of_phases+node(Area(37).node(n)).np;
end


Area(37).N_of_phases_ext=0;
for n=1:Area(37).extsize
	 Area(37).N_of_phases_ext=Area(37).N_of_phases_ext+node(Area(37).extnode(n)).np;
end


Area(37).G_of_phases=0;
for n=1:Area(37).size
	 if node(Area(37).node(n)).g==1
	 Area(37).G_of_phases=Area(37).G_of_phases+node(Area(37).node(n)).np;
	 end
end

Area(37).X=sdpvar(2*Area(37).N_of_phases_ext,2*Area(37).N_of_phases_ext);


Area(37).cg=sdpvar(Area(37).G_of_phases,1);

Area(37).Y=zeros(Area(37).N_of_phases_ext,Area(37).N_of_phases_ext);
row_count1=1;
row_count2=0;
col_count1=1;
col_count2=0;
for i=1:Area(37).extsize
	 row_count2=row_count2+node(Area(37).extnode(i)).np;
	 for j=1:Area(37).extsize
		  col_count2=col_count2+node(Area(37).extnode(j)).np;
		  Area(37).Y(row_count1:row_count2,col_count1:col_count2)=...
		  Y(min(node(Area(37).extnode(i)).index):max(node(Area(37).extnode(i)).index),min(node(Area(37).extnode(j)).index):max(node(Area(37).extnode(j)).index));
		  col_count1=col_count1+node(Area(37).extnode(j)).np;
	 end
	 row_count1=row_count1+node(Area(37).extnode(i)).np;
	 col_count1=1;
	 col_count2=0;
end

%%%%%% Area(38) DATA %%%%%%
Area(38).node=[134,141,142,144,146];
Area(38).size=size(Area(38).node,2);
Area(38).extnode=[134,141,142,144,146,132];
Area(38).extsize=size(Area(38).extnode,2);

Area(38).N_of_phases=0;
for n=1:Area(38).size
	 Area(38).N_of_phases=Area(38).N_of_phases+node(Area(38).node(n)).np;
end


Area(38).N_of_phases_ext=0;
for n=1:Area(38).extsize
	 Area(38).N_of_phases_ext=Area(38).N_of_phases_ext+node(Area(38).extnode(n)).np;
end


Area(38).G_of_phases=0;
for n=1:Area(38).size
	 if node(Area(38).node(n)).g==1
	 Area(38).G_of_phases=Area(38).G_of_phases+node(Area(38).node(n)).np;
	 end
end

Area(38).X=sdpvar(2*Area(38).N_of_phases_ext,2*Area(38).N_of_phases_ext);


Area(38).cg=sdpvar(Area(38).G_of_phases,1);

Area(38).Y=zeros(Area(38).N_of_phases_ext,Area(38).N_of_phases_ext);
row_count1=1;
row_count2=0;
col_count1=1;
col_count2=0;
for i=1:Area(38).extsize
	 row_count2=row_count2+node(Area(38).extnode(i)).np;
	 for j=1:Area(38).extsize
		  col_count2=col_count2+node(Area(38).extnode(j)).np;
		  Area(38).Y(row_count1:row_count2,col_count1:col_count2)=...
		  Y(min(node(Area(38).extnode(i)).index):max(node(Area(38).extnode(i)).index),min(node(Area(38).extnode(j)).index):max(node(Area(38).extnode(j)).index));
		  col_count1=col_count1+node(Area(38).extnode(j)).np;
	 end
	 row_count1=row_count1+node(Area(38).extnode(i)).np;
	 col_count1=1;
	 col_count2=0;
end

%%%%%% Area(39) DATA %%%%%%
Area(39).node=[140,150,152,154];
Area(39).size=size(Area(39).node,2);
Area(39).extnode=[140,150,152,154,131,148];
Area(39).extsize=size(Area(39).extnode,2);

Area(39).N_of_phases=0;
for n=1:Area(39).size
	 Area(39).N_of_phases=Area(39).N_of_phases+node(Area(39).node(n)).np;
end


Area(39).N_of_phases_ext=0;
for n=1:Area(39).extsize
	 Area(39).N_of_phases_ext=Area(39).N_of_phases_ext+node(Area(39).extnode(n)).np;
end


Area(39).G_of_phases=0;
for n=1:Area(39).size
	 if node(Area(39).node(n)).g==1
	 Area(39).G_of_phases=Area(39).G_of_phases+node(Area(39).node(n)).np;
	 end
end

Area(39).X=sdpvar(2*Area(39).N_of_phases_ext,2*Area(39).N_of_phases_ext);


Area(39).cg=sdpvar(Area(39).G_of_phases,1);

Area(39).Y=zeros(Area(39).N_of_phases_ext,Area(39).N_of_phases_ext);
row_count1=1;
row_count2=0;
col_count1=1;
col_count2=0;
for i=1:Area(39).extsize
	 row_count2=row_count2+node(Area(39).extnode(i)).np;
	 for j=1:Area(39).extsize
		  col_count2=col_count2+node(Area(39).extnode(j)).np;
		  Area(39).Y(row_count1:row_count2,col_count1:col_count2)=...
		  Y(min(node(Area(39).extnode(i)).index):max(node(Area(39).extnode(i)).index),min(node(Area(39).extnode(j)).index):max(node(Area(39).extnode(j)).index));
		  col_count1=col_count1+node(Area(39).extnode(j)).np;
	 end
	 row_count1=row_count1+node(Area(39).extnode(i)).np;
	 col_count1=1;
	 col_count2=0;
end

%%%%%% Area(40) DATA %%%%%%
Area(40).node=[148,163,175,177,181];
Area(40).size=size(Area(40).node,2);
Area(40).extnode=[148,163,175,177,181,140,153,192];
Area(40).extsize=size(Area(40).extnode,2);

Area(40).N_of_phases=0;
for n=1:Area(40).size
	 Area(40).N_of_phases=Area(40).N_of_phases+node(Area(40).node(n)).np;
end


Area(40).N_of_phases_ext=0;
for n=1:Area(40).extsize
	 Area(40).N_of_phases_ext=Area(40).N_of_phases_ext+node(Area(40).extnode(n)).np;
end


Area(40).G_of_phases=0;
for n=1:Area(40).size
	 if node(Area(40).node(n)).g==1
	 Area(40).G_of_phases=Area(40).G_of_phases+node(Area(40).node(n)).np;
	 end
end

Area(40).X=sdpvar(2*Area(40).N_of_phases_ext,2*Area(40).N_of_phases_ext);


Area(40).cg=sdpvar(Area(40).G_of_phases,1);

Area(40).Y=zeros(Area(40).N_of_phases_ext,Area(40).N_of_phases_ext);
row_count1=1;
row_count2=0;
col_count1=1;
col_count2=0;
for i=1:Area(40).extsize
	 row_count2=row_count2+node(Area(40).extnode(i)).np;
	 for j=1:Area(40).extsize
		  col_count2=col_count2+node(Area(40).extnode(j)).np;
		  Area(40).Y(row_count1:row_count2,col_count1:col_count2)=...
		  Y(min(node(Area(40).extnode(i)).index):max(node(Area(40).extnode(i)).index),min(node(Area(40).extnode(j)).index):max(node(Area(40).extnode(j)).index));
		  col_count1=col_count1+node(Area(40).extnode(j)).np;
	 end
	 row_count1=row_count1+node(Area(40).extnode(i)).np;
	 col_count1=1;
	 col_count2=0;
end

%%%%%% Area(41) DATA %%%%%%
Area(41).node=[153,156,157,160];
Area(41).size=size(Area(41).node,2);
Area(41).extnode=[153,156,157,160,148,155,161];
Area(41).extsize=size(Area(41).extnode,2);

Area(41).N_of_phases=0;
for n=1:Area(41).size
	 Area(41).N_of_phases=Area(41).N_of_phases+node(Area(41).node(n)).np;
end


Area(41).N_of_phases_ext=0;
for n=1:Area(41).extsize
	 Area(41).N_of_phases_ext=Area(41).N_of_phases_ext+node(Area(41).extnode(n)).np;
end


Area(41).G_of_phases=0;
for n=1:Area(41).size
	 if node(Area(41).node(n)).g==1
	 Area(41).G_of_phases=Area(41).G_of_phases+node(Area(41).node(n)).np;
	 end
end

Area(41).X=sdpvar(2*Area(41).N_of_phases_ext,2*Area(41).N_of_phases_ext);


Area(41).cg=sdpvar(Area(41).G_of_phases,1);

Area(41).Y=zeros(Area(41).N_of_phases_ext,Area(41).N_of_phases_ext);
row_count1=1;
row_count2=0;
col_count1=1;
col_count2=0;
for i=1:Area(41).extsize
	 row_count2=row_count2+node(Area(41).extnode(i)).np;
	 for j=1:Area(41).extsize
		  col_count2=col_count2+node(Area(41).extnode(j)).np;
		  Area(41).Y(row_count1:row_count2,col_count1:col_count2)=...
		  Y(min(node(Area(41).extnode(i)).index):max(node(Area(41).extnode(i)).index),min(node(Area(41).extnode(j)).index):max(node(Area(41).extnode(j)).index));
		  col_count1=col_count1+node(Area(41).extnode(j)).np;
	 end
	 row_count1=row_count1+node(Area(41).extnode(i)).np;
	 col_count1=1;
	 col_count2=0;
end

%%%%%% Area(42) DATA %%%%%%
Area(42).node=[155,159,172];
Area(42).size=size(Area(42).node,2);
Area(42).extnode=[155,159,172,153];
Area(42).extsize=size(Area(42).extnode,2);

Area(42).N_of_phases=0;
for n=1:Area(42).size
	 Area(42).N_of_phases=Area(42).N_of_phases+node(Area(42).node(n)).np;
end


Area(42).N_of_phases_ext=0;
for n=1:Area(42).extsize
	 Area(42).N_of_phases_ext=Area(42).N_of_phases_ext+node(Area(42).extnode(n)).np;
end


Area(42).G_of_phases=0;
for n=1:Area(42).size
	 if node(Area(42).node(n)).g==1
	 Area(42).G_of_phases=Area(42).G_of_phases+node(Area(42).node(n)).np;
	 end
end

Area(42).X=sdpvar(2*Area(42).N_of_phases_ext,2*Area(42).N_of_phases_ext);


Area(42).cg=sdpvar(Area(42).G_of_phases,1);

Area(42).Y=zeros(Area(42).N_of_phases_ext,Area(42).N_of_phases_ext);
row_count1=1;
row_count2=0;
col_count1=1;
col_count2=0;
for i=1:Area(42).extsize
	 row_count2=row_count2+node(Area(42).extnode(i)).np;
	 for j=1:Area(42).extsize
		  col_count2=col_count2+node(Area(42).extnode(j)).np;
		  Area(42).Y(row_count1:row_count2,col_count1:col_count2)=...
		  Y(min(node(Area(42).extnode(i)).index):max(node(Area(42).extnode(i)).index),min(node(Area(42).extnode(j)).index):max(node(Area(42).extnode(j)).index));
		  col_count1=col_count1+node(Area(42).extnode(j)).np;
	 end
	 row_count1=row_count1+node(Area(42).extnode(i)).np;
	 col_count1=1;
	 col_count2=0;
end

%%%%%% Area(43) DATA %%%%%%
Area(43).node=[161,162,184];
Area(43).size=size(Area(43).node,2);
Area(43).extnode=[161,162,184,156,164,203];
Area(43).extsize=size(Area(43).extnode,2);

Area(43).N_of_phases=0;
for n=1:Area(43).size
	 Area(43).N_of_phases=Area(43).N_of_phases+node(Area(43).node(n)).np;
end


Area(43).N_of_phases_ext=0;
for n=1:Area(43).extsize
	 Area(43).N_of_phases_ext=Area(43).N_of_phases_ext+node(Area(43).extnode(n)).np;
end


Area(43).G_of_phases=0;
for n=1:Area(43).size
	 if node(Area(43).node(n)).g==1
	 Area(43).G_of_phases=Area(43).G_of_phases+node(Area(43).node(n)).np;
	 end
end

Area(43).X=sdpvar(2*Area(43).N_of_phases_ext,2*Area(43).N_of_phases_ext);


Area(43).cg=sdpvar(Area(43).G_of_phases,1);

Area(43).Y=zeros(Area(43).N_of_phases_ext,Area(43).N_of_phases_ext);
row_count1=1;
row_count2=0;
col_count1=1;
col_count2=0;
for i=1:Area(43).extsize
	 row_count2=row_count2+node(Area(43).extnode(i)).np;
	 for j=1:Area(43).extsize
		  col_count2=col_count2+node(Area(43).extnode(j)).np;
		  Area(43).Y(row_count1:row_count2,col_count1:col_count2)=...
		  Y(min(node(Area(43).extnode(i)).index):max(node(Area(43).extnode(i)).index),min(node(Area(43).extnode(j)).index):max(node(Area(43).extnode(j)).index));
		  col_count1=col_count1+node(Area(43).extnode(j)).np;
	 end
	 row_count1=row_count1+node(Area(43).extnode(i)).np;
	 col_count1=1;
	 col_count2=0;
end

%%%%%% Area(44) DATA %%%%%%
Area(44).node=[164,165,167,169,180];
Area(44).size=size(Area(44).node,2);
Area(44).extnode=[164,165,167,169,180,162,166];
Area(44).extsize=size(Area(44).extnode,2);

Area(44).N_of_phases=0;
for n=1:Area(44).size
	 Area(44).N_of_phases=Area(44).N_of_phases+node(Area(44).node(n)).np;
end


Area(44).N_of_phases_ext=0;
for n=1:Area(44).extsize
	 Area(44).N_of_phases_ext=Area(44).N_of_phases_ext+node(Area(44).extnode(n)).np;
end


Area(44).G_of_phases=0;
for n=1:Area(44).size
	 if node(Area(44).node(n)).g==1
	 Area(44).G_of_phases=Area(44).G_of_phases+node(Area(44).node(n)).np;
	 end
end

Area(44).X=sdpvar(2*Area(44).N_of_phases_ext,2*Area(44).N_of_phases_ext);


Area(44).cg=sdpvar(Area(44).G_of_phases,1);

Area(44).Y=zeros(Area(44).N_of_phases_ext,Area(44).N_of_phases_ext);
row_count1=1;
row_count2=0;
col_count1=1;
col_count2=0;
for i=1:Area(44).extsize
	 row_count2=row_count2+node(Area(44).extnode(i)).np;
	 for j=1:Area(44).extsize
		  col_count2=col_count2+node(Area(44).extnode(j)).np;
		  Area(44).Y(row_count1:row_count2,col_count1:col_count2)=...
		  Y(min(node(Area(44).extnode(i)).index):max(node(Area(44).extnode(i)).index),min(node(Area(44).extnode(j)).index):max(node(Area(44).extnode(j)).index));
		  col_count1=col_count1+node(Area(44).extnode(j)).np;
	 end
	 row_count1=row_count1+node(Area(44).extnode(i)).np;
	 col_count1=1;
	 col_count2=0;
end

%%%%%% Area(45) DATA %%%%%%
Area(45).node=[166,168,170,173,186];
Area(45).size=size(Area(45).node,2);
Area(45).extnode=[166,168,170,173,186,165,171];
Area(45).extsize=size(Area(45).extnode,2);

Area(45).N_of_phases=0;
for n=1:Area(45).size
	 Area(45).N_of_phases=Area(45).N_of_phases+node(Area(45).node(n)).np;
end


Area(45).N_of_phases_ext=0;
for n=1:Area(45).extsize
	 Area(45).N_of_phases_ext=Area(45).N_of_phases_ext+node(Area(45).extnode(n)).np;
end


Area(45).G_of_phases=0;
for n=1:Area(45).size
	 if node(Area(45).node(n)).g==1
	 Area(45).G_of_phases=Area(45).G_of_phases+node(Area(45).node(n)).np;
	 end
end

Area(45).X=sdpvar(2*Area(45).N_of_phases_ext,2*Area(45).N_of_phases_ext);


Area(45).cg=sdpvar(Area(45).G_of_phases,1);

Area(45).Y=zeros(Area(45).N_of_phases_ext,Area(45).N_of_phases_ext);
row_count1=1;
row_count2=0;
col_count1=1;
col_count2=0;
for i=1:Area(45).extsize
	 row_count2=row_count2+node(Area(45).extnode(i)).np;
	 for j=1:Area(45).extsize
		  col_count2=col_count2+node(Area(45).extnode(j)).np;
		  Area(45).Y(row_count1:row_count2,col_count1:col_count2)=...
		  Y(min(node(Area(45).extnode(i)).index):max(node(Area(45).extnode(i)).index),min(node(Area(45).extnode(j)).index):max(node(Area(45).extnode(j)).index));
		  col_count1=col_count1+node(Area(45).extnode(j)).np;
	 end
	 row_count1=row_count1+node(Area(45).extnode(i)).np;
	 col_count1=1;
	 col_count2=0;
end

%%%%%% Area(46) DATA %%%%%%
Area(46).node=[171,176];
Area(46).size=size(Area(46).node,2);
Area(46).extnode=[171,176,168,178,201];
Area(46).extsize=size(Area(46).extnode,2);

Area(46).N_of_phases=0;
for n=1:Area(46).size
	 Area(46).N_of_phases=Area(46).N_of_phases+node(Area(46).node(n)).np;
end


Area(46).N_of_phases_ext=0;
for n=1:Area(46).extsize
	 Area(46).N_of_phases_ext=Area(46).N_of_phases_ext+node(Area(46).extnode(n)).np;
end


Area(46).G_of_phases=0;
for n=1:Area(46).size
	 if node(Area(46).node(n)).g==1
	 Area(46).G_of_phases=Area(46).G_of_phases+node(Area(46).node(n)).np;
	 end
end

Area(46).X=sdpvar(2*Area(46).N_of_phases_ext,2*Area(46).N_of_phases_ext);


Area(46).cg=sdpvar(Area(46).G_of_phases,1);

Area(46).Y=zeros(Area(46).N_of_phases_ext,Area(46).N_of_phases_ext);
row_count1=1;
row_count2=0;
col_count1=1;
col_count2=0;
for i=1:Area(46).extsize
	 row_count2=row_count2+node(Area(46).extnode(i)).np;
	 for j=1:Area(46).extsize
		  col_count2=col_count2+node(Area(46).extnode(j)).np;
		  Area(46).Y(row_count1:row_count2,col_count1:col_count2)=...
		  Y(min(node(Area(46).extnode(i)).index):max(node(Area(46).extnode(i)).index),min(node(Area(46).extnode(j)).index):max(node(Area(46).extnode(j)).index));
		  col_count1=col_count1+node(Area(46).extnode(j)).np;
	 end
	 row_count1=row_count1+node(Area(46).extnode(i)).np;
	 col_count1=1;
	 col_count2=0;
end

%%%%%% Area(47) DATA %%%%%%
Area(47).node=[178,179,182,183,185];
Area(47).size=size(Area(47).node,2);
Area(47).extnode=[178,179,182,183,185,176,187];
Area(47).extsize=size(Area(47).extnode,2);

Area(47).N_of_phases=0;
for n=1:Area(47).size
	 Area(47).N_of_phases=Area(47).N_of_phases+node(Area(47).node(n)).np;
end


Area(47).N_of_phases_ext=0;
for n=1:Area(47).extsize
	 Area(47).N_of_phases_ext=Area(47).N_of_phases_ext+node(Area(47).extnode(n)).np;
end


Area(47).G_of_phases=0;
for n=1:Area(47).size
	 if node(Area(47).node(n)).g==1
	 Area(47).G_of_phases=Area(47).G_of_phases+node(Area(47).node(n)).np;
	 end
end

Area(47).X=sdpvar(2*Area(47).N_of_phases_ext,2*Area(47).N_of_phases_ext);


Area(47).cg=sdpvar(Area(47).G_of_phases,1);

Area(47).Y=zeros(Area(47).N_of_phases_ext,Area(47).N_of_phases_ext);
row_count1=1;
row_count2=0;
col_count1=1;
col_count2=0;
for i=1:Area(47).extsize
	 row_count2=row_count2+node(Area(47).extnode(i)).np;
	 for j=1:Area(47).extsize
		  col_count2=col_count2+node(Area(47).extnode(j)).np;
		  Area(47).Y(row_count1:row_count2,col_count1:col_count2)=...
		  Y(min(node(Area(47).extnode(i)).index):max(node(Area(47).extnode(i)).index),min(node(Area(47).extnode(j)).index):max(node(Area(47).extnode(j)).index));
		  col_count1=col_count1+node(Area(47).extnode(j)).np;
	 end
	 row_count1=row_count1+node(Area(47).extnode(i)).np;
	 col_count1=1;
	 col_count2=0;
end

%%%%%% Area(48) DATA %%%%%%
Area(48).node=[187,189];
Area(48).size=size(Area(48).node,2);
Area(48).extnode=[187,189,185,188,199];
Area(48).extsize=size(Area(48).extnode,2);

Area(48).N_of_phases=0;
for n=1:Area(48).size
	 Area(48).N_of_phases=Area(48).N_of_phases+node(Area(48).node(n)).np;
end


Area(48).N_of_phases_ext=0;
for n=1:Area(48).extsize
	 Area(48).N_of_phases_ext=Area(48).N_of_phases_ext+node(Area(48).extnode(n)).np;
end


Area(48).G_of_phases=0;
for n=1:Area(48).size
	 if node(Area(48).node(n)).g==1
	 Area(48).G_of_phases=Area(48).G_of_phases+node(Area(48).node(n)).np;
	 end
end

Area(48).X=sdpvar(2*Area(48).N_of_phases_ext,2*Area(48).N_of_phases_ext);


Area(48).cg=sdpvar(Area(48).G_of_phases,1);

Area(48).Y=zeros(Area(48).N_of_phases_ext,Area(48).N_of_phases_ext);
row_count1=1;
row_count2=0;
col_count1=1;
col_count2=0;
for i=1:Area(48).extsize
	 row_count2=row_count2+node(Area(48).extnode(i)).np;
	 for j=1:Area(48).extsize
		  col_count2=col_count2+node(Area(48).extnode(j)).np;
		  Area(48).Y(row_count1:row_count2,col_count1:col_count2)=...
		  Y(min(node(Area(48).extnode(i)).index):max(node(Area(48).extnode(i)).index),min(node(Area(48).extnode(j)).index):max(node(Area(48).extnode(j)).index));
		  col_count1=col_count1+node(Area(48).extnode(j)).np;
	 end
	 row_count1=row_count1+node(Area(48).extnode(i)).np;
	 col_count1=1;
	 col_count2=0;
end

%%%%%% Area(49) DATA %%%%%%
Area(49).node=[188,190,191,194];
Area(49).size=size(Area(49).node,2);
Area(49).extnode=[188,190,191,194,187,193];
Area(49).extsize=size(Area(49).extnode,2);

Area(49).N_of_phases=0;
for n=1:Area(49).size
	 Area(49).N_of_phases=Area(49).N_of_phases+node(Area(49).node(n)).np;
end


Area(49).N_of_phases_ext=0;
for n=1:Area(49).extsize
	 Area(49).N_of_phases_ext=Area(49).N_of_phases_ext+node(Area(49).extnode(n)).np;
end


Area(49).G_of_phases=0;
for n=1:Area(49).size
	 if node(Area(49).node(n)).g==1
	 Area(49).G_of_phases=Area(49).G_of_phases+node(Area(49).node(n)).np;
	 end
end

Area(49).X=sdpvar(2*Area(49).N_of_phases_ext,2*Area(49).N_of_phases_ext);


Area(49).cg=sdpvar(Area(49).G_of_phases,1);

Area(49).Y=zeros(Area(49).N_of_phases_ext,Area(49).N_of_phases_ext);
row_count1=1;
row_count2=0;
col_count1=1;
col_count2=0;
for i=1:Area(49).extsize
	 row_count2=row_count2+node(Area(49).extnode(i)).np;
	 for j=1:Area(49).extsize
		  col_count2=col_count2+node(Area(49).extnode(j)).np;
		  Area(49).Y(row_count1:row_count2,col_count1:col_count2)=...
		  Y(min(node(Area(49).extnode(i)).index):max(node(Area(49).extnode(i)).index),min(node(Area(49).extnode(j)).index):max(node(Area(49).extnode(j)).index));
		  col_count1=col_count1+node(Area(49).extnode(j)).np;
	 end
	 row_count1=row_count1+node(Area(49).extnode(i)).np;
	 col_count1=1;
	 col_count2=0;
end

%%%%%% Area(50) DATA %%%%%%
Area(50).node=[192,195,196];
Area(50).size=size(Area(50).node,2);
Area(50).extnode=[192,195,196,175];
Area(50).extsize=size(Area(50).extnode,2);

Area(50).N_of_phases=0;
for n=1:Area(50).size
	 Area(50).N_of_phases=Area(50).N_of_phases+node(Area(50).node(n)).np;
end


Area(50).N_of_phases_ext=0;
for n=1:Area(50).extsize
	 Area(50).N_of_phases_ext=Area(50).N_of_phases_ext+node(Area(50).extnode(n)).np;
end


Area(50).G_of_phases=0;
for n=1:Area(50).size
	 if node(Area(50).node(n)).g==1
	 Area(50).G_of_phases=Area(50).G_of_phases+node(Area(50).node(n)).np;
	 end
end

Area(50).X=sdpvar(2*Area(50).N_of_phases_ext,2*Area(50).N_of_phases_ext);


Area(50).cg=sdpvar(Area(50).G_of_phases,1);

Area(50).Y=zeros(Area(50).N_of_phases_ext,Area(50).N_of_phases_ext);
row_count1=1;
row_count2=0;
col_count1=1;
col_count2=0;
for i=1:Area(50).extsize
	 row_count2=row_count2+node(Area(50).extnode(i)).np;
	 for j=1:Area(50).extsize
		  col_count2=col_count2+node(Area(50).extnode(j)).np;
		  Area(50).Y(row_count1:row_count2,col_count1:col_count2)=...
		  Y(min(node(Area(50).extnode(i)).index):max(node(Area(50).extnode(i)).index),min(node(Area(50).extnode(j)).index):max(node(Area(50).extnode(j)).index));
		  col_count1=col_count1+node(Area(50).extnode(j)).np;
	 end
	 row_count1=row_count1+node(Area(50).extnode(i)).np;
	 col_count1=1;
	 col_count2=0;
end

%%%%%% Area(51) DATA %%%%%%
Area(51).node=[193,197,198];
Area(51).size=size(Area(51).node,2);
Area(51).extnode=[193,197,198,190];
Area(51).extsize=size(Area(51).extnode,2);

Area(51).N_of_phases=0;
for n=1:Area(51).size
	 Area(51).N_of_phases=Area(51).N_of_phases+node(Area(51).node(n)).np;
end


Area(51).N_of_phases_ext=0;
for n=1:Area(51).extsize
	 Area(51).N_of_phases_ext=Area(51).N_of_phases_ext+node(Area(51).extnode(n)).np;
end


Area(51).G_of_phases=0;
for n=1:Area(51).size
	 if node(Area(51).node(n)).g==1
	 Area(51).G_of_phases=Area(51).G_of_phases+node(Area(51).node(n)).np;
	 end
end

Area(51).X=sdpvar(2*Area(51).N_of_phases_ext,2*Area(51).N_of_phases_ext);


Area(51).cg=sdpvar(Area(51).G_of_phases,1);

Area(51).Y=zeros(Area(51).N_of_phases_ext,Area(51).N_of_phases_ext);
row_count1=1;
row_count2=0;
col_count1=1;
col_count2=0;
for i=1:Area(51).extsize
	 row_count2=row_count2+node(Area(51).extnode(i)).np;
	 for j=1:Area(51).extsize
		  col_count2=col_count2+node(Area(51).extnode(j)).np;
		  Area(51).Y(row_count1:row_count2,col_count1:col_count2)=...
		  Y(min(node(Area(51).extnode(i)).index):max(node(Area(51).extnode(i)).index),min(node(Area(51).extnode(j)).index):max(node(Area(51).extnode(j)).index));
		  col_count1=col_count1+node(Area(51).extnode(j)).np;
	 end
	 row_count1=row_count1+node(Area(51).extnode(i)).np;
	 col_count1=1;
	 col_count2=0;
end

%%%%%% Area(52) DATA %%%%%%
Area(52).node=[199,200,202,204,208];
Area(52).size=size(Area(52).node,2);
Area(52).extnode=[199,200,202,204,208,187];
Area(52).extsize=size(Area(52).extnode,2);

Area(52).N_of_phases=0;
for n=1:Area(52).size
	 Area(52).N_of_phases=Area(52).N_of_phases+node(Area(52).node(n)).np;
end


Area(52).N_of_phases_ext=0;
for n=1:Area(52).extsize
	 Area(52).N_of_phases_ext=Area(52).N_of_phases_ext+node(Area(52).extnode(n)).np;
end


Area(52).G_of_phases=0;
for n=1:Area(52).size
	 if node(Area(52).node(n)).g==1
	 Area(52).G_of_phases=Area(52).G_of_phases+node(Area(52).node(n)).np;
	 end
end

Area(52).X=sdpvar(2*Area(52).N_of_phases_ext,2*Area(52).N_of_phases_ext);


Area(52).cg=sdpvar(Area(52).G_of_phases,1);

Area(52).Y=zeros(Area(52).N_of_phases_ext,Area(52).N_of_phases_ext);
row_count1=1;
row_count2=0;
col_count1=1;
col_count2=0;
for i=1:Area(52).extsize
	 row_count2=row_count2+node(Area(52).extnode(i)).np;
	 for j=1:Area(52).extsize
		  col_count2=col_count2+node(Area(52).extnode(j)).np;
		  Area(52).Y(row_count1:row_count2,col_count1:col_count2)=...
		  Y(min(node(Area(52).extnode(i)).index):max(node(Area(52).extnode(i)).index),min(node(Area(52).extnode(j)).index):max(node(Area(52).extnode(j)).index));
		  col_count1=col_count1+node(Area(52).extnode(j)).np;
	 end
	 row_count1=row_count1+node(Area(52).extnode(i)).np;
	 col_count1=1;
	 col_count2=0;
end

%%%%%% Area(53) DATA %%%%%%
Area(53).node=[201,207,210,211];
Area(53).size=size(Area(53).node,2);
Area(53).extnode=[201,207,210,211,176];
Area(53).extsize=size(Area(53).extnode,2);

Area(53).N_of_phases=0;
for n=1:Area(53).size
	 Area(53).N_of_phases=Area(53).N_of_phases+node(Area(53).node(n)).np;
end


Area(53).N_of_phases_ext=0;
for n=1:Area(53).extsize
	 Area(53).N_of_phases_ext=Area(53).N_of_phases_ext+node(Area(53).extnode(n)).np;
end


Area(53).G_of_phases=0;
for n=1:Area(53).size
	 if node(Area(53).node(n)).g==1
	 Area(53).G_of_phases=Area(53).G_of_phases+node(Area(53).node(n)).np;
	 end
end

Area(53).X=sdpvar(2*Area(53).N_of_phases_ext,2*Area(53).N_of_phases_ext);


Area(53).cg=sdpvar(Area(53).G_of_phases,1);

Area(53).Y=zeros(Area(53).N_of_phases_ext,Area(53).N_of_phases_ext);
row_count1=1;
row_count2=0;
col_count1=1;
col_count2=0;
for i=1:Area(53).extsize
	 row_count2=row_count2+node(Area(53).extnode(i)).np;
	 for j=1:Area(53).extsize
		  col_count2=col_count2+node(Area(53).extnode(j)).np;
		  Area(53).Y(row_count1:row_count2,col_count1:col_count2)=...
		  Y(min(node(Area(53).extnode(i)).index):max(node(Area(53).extnode(i)).index),min(node(Area(53).extnode(j)).index):max(node(Area(53).extnode(j)).index));
		  col_count1=col_count1+node(Area(53).extnode(j)).np;
	 end
	 row_count1=row_count1+node(Area(53).extnode(i)).np;
	 col_count1=1;
	 col_count2=0;
end

%%%%%% Area(54) DATA %%%%%%
Area(54).node=[203,205,206,209];
Area(54).size=size(Area(54).node,2);
Area(54).extnode=[203,205,206,209,162];
Area(54).extsize=size(Area(54).extnode,2);

Area(54).N_of_phases=0;
for n=1:Area(54).size
	 Area(54).N_of_phases=Area(54).N_of_phases+node(Area(54).node(n)).np;
end


Area(54).N_of_phases_ext=0;
for n=1:Area(54).extsize
	 Area(54).N_of_phases_ext=Area(54).N_of_phases_ext+node(Area(54).extnode(n)).np;
end


Area(54).G_of_phases=0;
for n=1:Area(54).size
	 if node(Area(54).node(n)).g==1
	 Area(54).G_of_phases=Area(54).G_of_phases+node(Area(54).node(n)).np;
	 end
end

Area(54).X=sdpvar(2*Area(54).N_of_phases_ext,2*Area(54).N_of_phases_ext);


Area(54).cg=sdpvar(Area(54).G_of_phases,1);

Area(54).Y=zeros(Area(54).N_of_phases_ext,Area(54).N_of_phases_ext);
row_count1=1;
row_count2=0;
col_count1=1;
col_count2=0;
for i=1:Area(54).extsize
	 row_count2=row_count2+node(Area(54).extnode(i)).np;
	 for j=1:Area(54).extsize
		  col_count2=col_count2+node(Area(54).extnode(j)).np;
		  Area(54).Y(row_count1:row_count2,col_count1:col_count2)=...
		  Y(min(node(Area(54).extnode(i)).index):max(node(Area(54).extnode(i)).index),min(node(Area(54).extnode(j)).index):max(node(Area(54).extnode(j)).index));
		  col_count1=col_count1+node(Area(54).extnode(j)).np;
	 end
	 row_count1=row_count1+node(Area(54).extnode(i)).np;
	 col_count1=1;
	 col_count2=0;
end

%%%% Bounary data Area(1) %%%%
Area(1).nb=1;
Area(1).bnd{1}=[Area(1).X(7:9,7:9),Area(1).X(7:9,16:18),Area(1).X(7:9,25:27),Area(1).X(7:9,34:36);...
			 Area(1).X(16:18,7:9),Area(1).X(16:18,16:18),Area(1).X(16:18,25:27),Area(1).X(16:18,34:36);...
			 Area(1).X(25:27,7:9),Area(1).X(25:27,16:18),Area(1).X(25:27,25:27),Area(1).X(25:27,34:36);...
			 Area(1).X(34:36,7:9),Area(1).X(34:36,16:18),Area(1).X(34:36,25:27),Area(1).X(34:36,34:36)];

%%%% Bounary data Area(2) %%%%
Area(2).nb=2;
Area(2).bnd{1}=[Area(2).X(1:3,1:3),Area(2).X(1:3,16:18),Area(2).X(1:3,19:21),Area(2).X(1:3,34:36);...
			 Area(2).X(16:18,1:3),Area(2).X(16:18,16:18),Area(2).X(16:18,19:21),Area(2).X(16:18,34:36);...
			 Area(2).X(19:21,1:3),Area(2).X(19:21,16:18),Area(2).X(19:21,19:21),Area(2).X(19:21,34:36);...
			 Area(2).X(34:36,1:3),Area(2).X(34:36,16:18),Area(2).X(34:36,19:21),Area(2).X(34:36,34:36)];

Area(2).bnd{2}=[Area(2).X(13:15,13:15),Area(2).X(13:15,1:3),Area(2).X(13:15,31:33),Area(2).X(13:15,19:21);...
			 Area(2).X(1:3,13:15),Area(2).X(1:3,1:3),Area(2).X(1:3,31:33),Area(2).X(1:3,19:21);...
			 Area(2).X(31:33,13:15),Area(2).X(31:33,1:3),Area(2).X(31:33,31:33),Area(2).X(31:33,19:21);...
			 Area(2).X(19:21,13:15),Area(2).X(19:21,1:3),Area(2).X(19:21,31:33),Area(2).X(19:21,19:21)];

%%%% Bounary data Area(3) %%%%
Area(3).nb=2;
Area(3).bnd{1}=[Area(3).X(13:15,13:15),Area(3).X(13:15,1:3),Area(3).X(13:15,31:33),Area(3).X(13:15,19:21);...
			 Area(3).X(1:3,13:15),Area(3).X(1:3,1:3),Area(3).X(1:3,31:33),Area(3).X(1:3,19:21);...
			 Area(3).X(31:33,13:15),Area(3).X(31:33,1:3),Area(3).X(31:33,31:33),Area(3).X(31:33,19:21);...
			 Area(3).X(19:21,13:15),Area(3).X(19:21,1:3),Area(3).X(19:21,31:33),Area(3).X(19:21,19:21)];

Area(3).bnd{2}=[Area(3).X(1:3,1:3),Area(3).X(1:3,16:18),Area(3).X(1:3,19:21),Area(3).X(1:3,34:36);...
			 Area(3).X(16:18,1:3),Area(3).X(16:18,16:18),Area(3).X(16:18,19:21),Area(3).X(16:18,34:36);...
			 Area(3).X(19:21,1:3),Area(3).X(19:21,16:18),Area(3).X(19:21,19:21),Area(3).X(19:21,34:36);...
			 Area(3).X(34:36,1:3),Area(3).X(34:36,16:18),Area(3).X(34:36,19:21),Area(3).X(34:36,34:36)];

%%%% Bounary data Area(4) %%%%
Area(4).nb=3;
Area(4).bnd{1}=[Area(4).X(4:6,4:6),Area(4).X(4:6,13:15),Area(4).X(4:6,22:24),Area(4).X(4:6,31:33);...
			 Area(4).X(13:15,4:6),Area(4).X(13:15,13:15),Area(4).X(13:15,22:24),Area(4).X(13:15,31:33);...
			 Area(4).X(22:24,4:6),Area(4).X(22:24,13:15),Area(4).X(22:24,22:24),Area(4).X(22:24,31:33);...
			 Area(4).X(31:33,4:6),Area(4).X(31:33,13:15),Area(4).X(31:33,22:24),Area(4).X(31:33,31:33)];

Area(4).bnd{2}=[Area(4).X(10:12,10:12),Area(4).X(10:12,1:3),Area(4).X(10:12,28:30),Area(4).X(10:12,19:21);...
			 Area(4).X(1:3,10:12),Area(4).X(1:3,1:3),Area(4).X(1:3,28:30),Area(4).X(1:3,19:21);...
			 Area(4).X(28:30,10:12),Area(4).X(28:30,1:3),Area(4).X(28:30,28:30),Area(4).X(28:30,19:21);...
			 Area(4).X(19:21,10:12),Area(4).X(19:21,1:3),Area(4).X(19:21,28:30),Area(4).X(19:21,19:21)];

Area(4).bnd{3}=[Area(4).X(7:9,7:9),Area(4).X(7:9,16:18),Area(4).X(7:9,25:27),Area(4).X(7:9,34:36);...
			 Area(4).X(16:18,7:9),Area(4).X(16:18,16:18),Area(4).X(16:18,25:27),Area(4).X(16:18,34:36);...
			 Area(4).X(25:27,7:9),Area(4).X(25:27,16:18),Area(4).X(25:27,25:27),Area(4).X(25:27,34:36);...
			 Area(4).X(34:36,7:9),Area(4).X(34:36,16:18),Area(4).X(34:36,25:27),Area(4).X(34:36,34:36)];

%%%% Bounary data Area(5) %%%%
Area(5).nb=2;
Area(5).bnd{1}=[Area(5).X(13:15,13:15),Area(5).X(13:15,1:3),Area(5).X(13:15,31:33),Area(5).X(13:15,19:21);...
			 Area(5).X(1:3,13:15),Area(5).X(1:3,1:3),Area(5).X(1:3,31:33),Area(5).X(1:3,19:21);...
			 Area(5).X(31:33,13:15),Area(5).X(31:33,1:3),Area(5).X(31:33,31:33),Area(5).X(31:33,19:21);...
			 Area(5).X(19:21,13:15),Area(5).X(19:21,1:3),Area(5).X(19:21,31:33),Area(5).X(19:21,19:21)];

Area(5).bnd{2}=[Area(5).X(1:3,1:3),Area(5).X(1:3,16:18),Area(5).X(1:3,19:21),Area(5).X(1:3,34:36);...
			 Area(5).X(16:18,1:3),Area(5).X(16:18,16:18),Area(5).X(16:18,19:21),Area(5).X(16:18,34:36);...
			 Area(5).X(19:21,1:3),Area(5).X(19:21,16:18),Area(5).X(19:21,19:21),Area(5).X(19:21,34:36);...
			 Area(5).X(34:36,1:3),Area(5).X(34:36,16:18),Area(5).X(34:36,19:21),Area(5).X(34:36,34:36)];

%%%% Bounary data Area(6) %%%%
Area(6).nb=3;
Area(6).bnd{1}=[Area(6).X(1:3,1:3),Area(6).X(1:3,16:18),Area(6).X(1:3,22:24),Area(6).X(1:3,37:39);...
			 Area(6).X(16:18,1:3),Area(6).X(16:18,16:18),Area(6).X(16:18,22:24),Area(6).X(16:18,37:39);...
			 Area(6).X(22:24,1:3),Area(6).X(22:24,16:18),Area(6).X(22:24,22:24),Area(6).X(22:24,37:39);...
			 Area(6).X(37:39,1:3),Area(6).X(37:39,16:18),Area(6).X(37:39,22:24),Area(6).X(37:39,37:39)];

Area(6).bnd{2}=[Area(6).X(4:6,4:6),Area(6).X(4:6,19:21),Area(6).X(4:6,25:27),Area(6).X(4:6,40:42);...
			 Area(6).X(19:21,4:6),Area(6).X(19:21,19:21),Area(6).X(19:21,25:27),Area(6).X(19:21,40:42);...
			 Area(6).X(25:27,4:6),Area(6).X(25:27,19:21),Area(6).X(25:27,25:27),Area(6).X(25:27,40:42);...
			 Area(6).X(40:42,4:6),Area(6).X(40:42,19:21),Area(6).X(40:42,25:27),Area(6).X(40:42,40:42)];

Area(6).bnd{3}=[Area(6).X(13:15,13:15),Area(6).X(13:15,1:3),Area(6).X(13:15,34:36),Area(6).X(13:15,22:24);...
			 Area(6).X(1:3,13:15),Area(6).X(1:3,1:3),Area(6).X(1:3,34:36),Area(6).X(1:3,22:24);...
			 Area(6).X(34:36,13:15),Area(6).X(34:36,1:3),Area(6).X(34:36,34:36),Area(6).X(34:36,22:24);...
			 Area(6).X(22:24,13:15),Area(6).X(22:24,1:3),Area(6).X(22:24,34:36),Area(6).X(22:24,22:24)];

%%%% Bounary data Area(7) %%%%
Area(7).nb=1;
Area(7).bnd{1}=[Area(7).X(10:12,10:12),Area(7).X(10:12,1:3),Area(7).X(10:12,22:24),Area(7).X(10:12,13:15);...
			 Area(7).X(1:3,10:12),Area(7).X(1:3,1:3),Area(7).X(1:3,22:24),Area(7).X(1:3,13:15);...
			 Area(7).X(22:24,10:12),Area(7).X(22:24,1:3),Area(7).X(22:24,22:24),Area(7).X(22:24,13:15);...
			 Area(7).X(13:15,10:12),Area(7).X(13:15,1:3),Area(7).X(13:15,22:24),Area(7).X(13:15,13:15)];

%%%% Bounary data Area(8) %%%%
Area(8).nb=3;
Area(8).bnd{1}=[Area(8).X(10:12,10:12),Area(8).X(10:12,1:3),Area(8).X(10:12,28:30),Area(8).X(10:12,19:21);...
			 Area(8).X(1:3,10:12),Area(8).X(1:3,1:3),Area(8).X(1:3,28:30),Area(8).X(1:3,19:21);...
			 Area(8).X(28:30,10:12),Area(8).X(28:30,1:3),Area(8).X(28:30,28:30),Area(8).X(28:30,19:21);...
			 Area(8).X(19:21,10:12),Area(8).X(19:21,1:3),Area(8).X(19:21,28:30),Area(8).X(19:21,19:21)];

Area(8).bnd{2}=[Area(8).X(1:3,1:3),Area(8).X(1:3,13:15),Area(8).X(1:3,19:21),Area(8).X(1:3,31:33);...
			 Area(8).X(13:15,1:3),Area(8).X(13:15,13:15),Area(8).X(13:15,19:21),Area(8).X(13:15,31:33);...
			 Area(8).X(19:21,1:3),Area(8).X(19:21,13:15),Area(8).X(19:21,19:21),Area(8).X(19:21,31:33);...
			 Area(8).X(31:33,1:3),Area(8).X(31:33,13:15),Area(8).X(31:33,19:21),Area(8).X(31:33,31:33)];

Area(8).bnd{3}=[Area(8).X(7:9,7:9),Area(8).X(7:9,16:18),Area(8).X(7:9,25:27),Area(8).X(7:9,34:36);...
			 Area(8).X(16:18,7:9),Area(8).X(16:18,16:18),Area(8).X(16:18,25:27),Area(8).X(16:18,34:36);...
			 Area(8).X(25:27,7:9),Area(8).X(25:27,16:18),Area(8).X(25:27,25:27),Area(8).X(25:27,34:36);...
			 Area(8).X(34:36,7:9),Area(8).X(34:36,16:18),Area(8).X(34:36,25:27),Area(8).X(34:36,34:36)];

%%%% Bounary data Area(9) %%%%
Area(9).nb=2;
Area(9).bnd{1}=[Area(9).X(13:15,13:15),Area(9).X(13:15,1:3),Area(9).X(13:15,31:33),Area(9).X(13:15,19:21);...
			 Area(9).X(1:3,13:15),Area(9).X(1:3,1:3),Area(9).X(1:3,31:33),Area(9).X(1:3,19:21);...
			 Area(9).X(31:33,13:15),Area(9).X(31:33,1:3),Area(9).X(31:33,31:33),Area(9).X(31:33,19:21);...
			 Area(9).X(19:21,13:15),Area(9).X(19:21,1:3),Area(9).X(19:21,31:33),Area(9).X(19:21,19:21)];

Area(9).bnd{2}=[Area(9).X(1:3,1:3),Area(9).X(1:3,16:18),Area(9).X(1:3,19:21),Area(9).X(1:3,34:36);...
			 Area(9).X(16:18,1:3),Area(9).X(16:18,16:18),Area(9).X(16:18,19:21),Area(9).X(16:18,34:36);...
			 Area(9).X(19:21,1:3),Area(9).X(19:21,16:18),Area(9).X(19:21,19:21),Area(9).X(19:21,34:36);...
			 Area(9).X(34:36,1:3),Area(9).X(34:36,16:18),Area(9).X(34:36,19:21),Area(9).X(34:36,34:36)];

%%%% Bounary data Area(10) %%%%
Area(10).nb=2;
Area(10).bnd{1}=[Area(10).X(13:15,13:15),Area(10).X(13:15,1:3),Area(10).X(13:15,31:33),Area(10).X(13:15,19:21);...
			 Area(10).X(1:3,13:15),Area(10).X(1:3,1:3),Area(10).X(1:3,31:33),Area(10).X(1:3,19:21);...
			 Area(10).X(31:33,13:15),Area(10).X(31:33,1:3),Area(10).X(31:33,31:33),Area(10).X(31:33,19:21);...
			 Area(10).X(19:21,13:15),Area(10).X(19:21,1:3),Area(10).X(19:21,31:33),Area(10).X(19:21,19:21)];

Area(10).bnd{2}=[Area(10).X(1:3,1:3),Area(10).X(1:3,16:18),Area(10).X(1:3,19:21),Area(10).X(1:3,34:36);...
			 Area(10).X(16:18,1:3),Area(10).X(16:18,16:18),Area(10).X(16:18,19:21),Area(10).X(16:18,34:36);...
			 Area(10).X(19:21,1:3),Area(10).X(19:21,16:18),Area(10).X(19:21,19:21),Area(10).X(19:21,34:36);...
			 Area(10).X(34:36,1:3),Area(10).X(34:36,16:18),Area(10).X(34:36,19:21),Area(10).X(34:36,34:36)];

%%%% Bounary data Area(11) %%%%
Area(11).nb=1;
Area(11).bnd{1}=[Area(11).X(13:15,13:15),Area(11).X(13:15,1:3),Area(11).X(13:15,28:30),Area(11).X(13:15,16:18);...
			 Area(11).X(1:3,13:15),Area(11).X(1:3,1:3),Area(11).X(1:3,28:30),Area(11).X(1:3,16:18);...
			 Area(11).X(28:30,13:15),Area(11).X(28:30,1:3),Area(11).X(28:30,28:30),Area(11).X(28:30,16:18);...
			 Area(11).X(16:18,13:15),Area(11).X(16:18,1:3),Area(11).X(16:18,28:30),Area(11).X(16:18,16:18)];

%%%% Bounary data Area(12) %%%%
Area(12).nb=2;
Area(12).bnd{1}=[Area(12).X(16:18,16:18),Area(12).X(16:18,1:3),Area(12).X(16:18,37:39),Area(12).X(16:18,22:24);...
			 Area(12).X(1:3,16:18),Area(12).X(1:3,1:3),Area(12).X(1:3,37:39),Area(12).X(1:3,22:24);...
			 Area(12).X(37:39,16:18),Area(12).X(37:39,1:3),Area(12).X(37:39,37:39),Area(12).X(37:39,22:24);...
			 Area(12).X(22:24,16:18),Area(12).X(22:24,1:3),Area(12).X(22:24,37:39),Area(12).X(22:24,22:24)];

Area(12).bnd{2}=[Area(12).X(1:3,1:3),Area(12).X(1:3,19:21),Area(12).X(1:3,22:24),Area(12).X(1:3,40:42);...
			 Area(12).X(19:21,1:3),Area(12).X(19:21,19:21),Area(12).X(19:21,22:24),Area(12).X(19:21,40:42);...
			 Area(12).X(22:24,1:3),Area(12).X(22:24,19:21),Area(12).X(22:24,22:24),Area(12).X(22:24,40:42);...
			 Area(12).X(40:42,1:3),Area(12).X(40:42,19:21),Area(12).X(40:42,22:24),Area(12).X(40:42,40:42)];

%%%% Bounary data Area(13) %%%%
Area(13).nb=2;
Area(13).bnd{1}=[Area(13).X(13:15,13:15),Area(13).X(13:15,1:3),Area(13).X(13:15,31:33),Area(13).X(13:15,19:21);...
			 Area(13).X(1:3,13:15),Area(13).X(1:3,1:3),Area(13).X(1:3,31:33),Area(13).X(1:3,19:21);...
			 Area(13).X(31:33,13:15),Area(13).X(31:33,1:3),Area(13).X(31:33,31:33),Area(13).X(31:33,19:21);...
			 Area(13).X(19:21,13:15),Area(13).X(19:21,1:3),Area(13).X(19:21,31:33),Area(13).X(19:21,19:21)];

Area(13).bnd{2}=[Area(13).X(1:3,1:3),Area(13).X(1:3,16:18),Area(13).X(1:3,19:21),Area(13).X(1:3,34:36);...
			 Area(13).X(16:18,1:3),Area(13).X(16:18,16:18),Area(13).X(16:18,19:21),Area(13).X(16:18,34:36);...
			 Area(13).X(19:21,1:3),Area(13).X(19:21,16:18),Area(13).X(19:21,19:21),Area(13).X(19:21,34:36);...
			 Area(13).X(34:36,1:3),Area(13).X(34:36,16:18),Area(13).X(34:36,19:21),Area(13).X(34:36,34:36)];

%%%% Bounary data Area(14) %%%%
Area(14).nb=1;
Area(14).bnd{1}=[Area(14).X(13:15,13:15),Area(14).X(13:15,1:3),Area(14).X(13:15,28:30),Area(14).X(13:15,16:18);...
			 Area(14).X(1:3,13:15),Area(14).X(1:3,1:3),Area(14).X(1:3,28:30),Area(14).X(1:3,16:18);...
			 Area(14).X(28:30,13:15),Area(14).X(28:30,1:3),Area(14).X(28:30,28:30),Area(14).X(28:30,16:18);...
			 Area(14).X(16:18,13:15),Area(14).X(16:18,1:3),Area(14).X(16:18,28:30),Area(14).X(16:18,16:18)];

%%%% Bounary data Area(15) %%%%
Area(15).nb=2;
Area(15).bnd{1}=[Area(15).X(1:3,1:3),Area(15).X(1:3,16:18),Area(15).X(1:3,19:21),Area(15).X(1:3,34:36);...
			 Area(15).X(16:18,1:3),Area(15).X(16:18,16:18),Area(15).X(16:18,19:21),Area(15).X(16:18,34:36);...
			 Area(15).X(19:21,1:3),Area(15).X(19:21,16:18),Area(15).X(19:21,19:21),Area(15).X(19:21,34:36);...
			 Area(15).X(34:36,1:3),Area(15).X(34:36,16:18),Area(15).X(34:36,19:21),Area(15).X(34:36,34:36)];

Area(15).bnd{2}=[Area(15).X(13:15,13:15),Area(15).X(13:15,1:3),Area(15).X(13:15,31:33),Area(15).X(13:15,19:21);...
			 Area(15).X(1:3,13:15),Area(15).X(1:3,1:3),Area(15).X(1:3,31:33),Area(15).X(1:3,19:21);...
			 Area(15).X(31:33,13:15),Area(15).X(31:33,1:3),Area(15).X(31:33,31:33),Area(15).X(31:33,19:21);...
			 Area(15).X(19:21,13:15),Area(15).X(19:21,1:3),Area(15).X(19:21,31:33),Area(15).X(19:21,19:21)];

%%%% Bounary data Area(16) %%%%
Area(16).nb=2;
Area(16).bnd{1}=[Area(16).X(1:3,1:3),Area(16).X(1:3,16:18),Area(16).X(1:3,19:21),Area(16).X(1:3,34:36);...
			 Area(16).X(16:18,1:3),Area(16).X(16:18,16:18),Area(16).X(16:18,19:21),Area(16).X(16:18,34:36);...
			 Area(16).X(19:21,1:3),Area(16).X(19:21,16:18),Area(16).X(19:21,19:21),Area(16).X(19:21,34:36);...
			 Area(16).X(34:36,1:3),Area(16).X(34:36,16:18),Area(16).X(34:36,19:21),Area(16).X(34:36,34:36)];

Area(16).bnd{2}=[Area(16).X(13:15,13:15),Area(16).X(13:15,1:3),Area(16).X(13:15,31:33),Area(16).X(13:15,19:21);...
			 Area(16).X(1:3,13:15),Area(16).X(1:3,1:3),Area(16).X(1:3,31:33),Area(16).X(1:3,19:21);...
			 Area(16).X(31:33,13:15),Area(16).X(31:33,1:3),Area(16).X(31:33,31:33),Area(16).X(31:33,19:21);...
			 Area(16).X(19:21,13:15),Area(16).X(19:21,1:3),Area(16).X(19:21,31:33),Area(16).X(19:21,19:21)];

%%%% Bounary data Area(17) %%%%
Area(17).nb=4;
Area(17).bnd{1}=[Area(17).X(1:3,1:3),Area(17).X(1:3,25:27),Area(17).X(1:3,28:30),Area(17).X(1:3,52:54);...
			 Area(17).X(25:27,1:3),Area(17).X(25:27,25:27),Area(17).X(25:27,28:30),Area(17).X(25:27,52:54);...
			 Area(17).X(28:30,1:3),Area(17).X(28:30,25:27),Area(17).X(28:30,28:30),Area(17).X(28:30,52:54);...
			 Area(17).X(52:54,1:3),Area(17).X(52:54,25:27),Area(17).X(52:54,28:30),Area(17).X(52:54,52:54)];

Area(17).bnd{2}=[Area(17).X(16:18,16:18),Area(17).X(16:18,1:3),Area(17).X(16:18,43:45),Area(17).X(16:18,28:30);...
			 Area(17).X(1:3,16:18),Area(17).X(1:3,1:3),Area(17).X(1:3,43:45),Area(17).X(1:3,28:30);...
			 Area(17).X(43:45,16:18),Area(17).X(43:45,1:3),Area(17).X(43:45,43:45),Area(17).X(43:45,28:30);...
			 Area(17).X(28:30,16:18),Area(17).X(28:30,1:3),Area(17).X(28:30,43:45),Area(17).X(28:30,28:30)];

Area(17).bnd{3}=[Area(17).X(7:9,7:9),Area(17).X(7:9,19:21),Area(17).X(7:9,34:36),Area(17).X(7:9,46:48);...
			 Area(17).X(19:21,7:9),Area(17).X(19:21,19:21),Area(17).X(19:21,34:36),Area(17).X(19:21,46:48);...
			 Area(17).X(34:36,7:9),Area(17).X(34:36,19:21),Area(17).X(34:36,34:36),Area(17).X(34:36,46:48);...
			 Area(17).X(46:48,7:9),Area(17).X(46:48,19:21),Area(17).X(46:48,34:36),Area(17).X(46:48,46:48)];

Area(17).bnd{4}=[Area(17).X(4:6,4:6),Area(17).X(4:6,22:24),Area(17).X(4:6,31:33),Area(17).X(4:6,49:51);...
			 Area(17).X(22:24,4:6),Area(17).X(22:24,22:24),Area(17).X(22:24,31:33),Area(17).X(22:24,49:51);...
			 Area(17).X(31:33,4:6),Area(17).X(31:33,22:24),Area(17).X(31:33,31:33),Area(17).X(31:33,49:51);...
			 Area(17).X(49:51,4:6),Area(17).X(49:51,22:24),Area(17).X(49:51,31:33),Area(17).X(49:51,49:51)];

%%%% Bounary data Area(18) %%%%
Area(18).nb=3;
Area(18).bnd{1}=[Area(18).X(7:9,7:9),Area(18).X(7:9,19:21),Area(18).X(7:9,28:30),Area(18).X(7:9,40:42);...
			 Area(18).X(19:21,7:9),Area(18).X(19:21,19:21),Area(18).X(19:21,28:30),Area(18).X(19:21,40:42);...
			 Area(18).X(28:30,7:9),Area(18).X(28:30,19:21),Area(18).X(28:30,28:30),Area(18).X(28:30,40:42);...
			 Area(18).X(40:42,7:9),Area(18).X(40:42,19:21),Area(18).X(40:42,28:30),Area(18).X(40:42,40:42)];

Area(18).bnd{2}=[Area(18).X(13:15,13:15),Area(18).X(13:15,1:3),Area(18).X(13:15,34:36),Area(18).X(13:15,22:24);...
			 Area(18).X(1:3,13:15),Area(18).X(1:3,1:3),Area(18).X(1:3,34:36),Area(18).X(1:3,22:24);...
			 Area(18).X(34:36,13:15),Area(18).X(34:36,1:3),Area(18).X(34:36,34:36),Area(18).X(34:36,22:24);...
			 Area(18).X(22:24,13:15),Area(18).X(22:24,1:3),Area(18).X(22:24,34:36),Area(18).X(22:24,22:24)];

Area(18).bnd{3}=[Area(18).X(1:3,1:3),Area(18).X(1:3,16:18),Area(18).X(1:3,22:24),Area(18).X(1:3,37:39);...
			 Area(18).X(16:18,1:3),Area(18).X(16:18,16:18),Area(18).X(16:18,22:24),Area(18).X(16:18,37:39);...
			 Area(18).X(22:24,1:3),Area(18).X(22:24,16:18),Area(18).X(22:24,22:24),Area(18).X(22:24,37:39);...
			 Area(18).X(37:39,1:3),Area(18).X(37:39,16:18),Area(18).X(37:39,22:24),Area(18).X(37:39,37:39)];

%%%% Bounary data Area(19) %%%%
Area(19).nb=1;
Area(19).bnd{1}=[Area(19).X(13:15,13:15),Area(19).X(13:15,1:3),Area(19).X(13:15,28:30),Area(19).X(13:15,16:18);...
			 Area(19).X(1:3,13:15),Area(19).X(1:3,1:3),Area(19).X(1:3,28:30),Area(19).X(1:3,16:18);...
			 Area(19).X(28:30,13:15),Area(19).X(28:30,1:3),Area(19).X(28:30,28:30),Area(19).X(28:30,16:18);...
			 Area(19).X(16:18,13:15),Area(19).X(16:18,1:3),Area(19).X(16:18,28:30),Area(19).X(16:18,16:18)];

%%%% Bounary data Area(20) %%%%
Area(20).nb=1;
Area(20).bnd{1}=[Area(20).X(10:12,10:12),Area(20).X(10:12,1:3),Area(20).X(10:12,22:24),Area(20).X(10:12,13:15);...
			 Area(20).X(1:3,10:12),Area(20).X(1:3,1:3),Area(20).X(1:3,22:24),Area(20).X(1:3,13:15);...
			 Area(20).X(22:24,10:12),Area(20).X(22:24,1:3),Area(20).X(22:24,22:24),Area(20).X(22:24,13:15);...
			 Area(20).X(13:15,10:12),Area(20).X(13:15,1:3),Area(20).X(13:15,22:24),Area(20).X(13:15,13:15)];

%%%% Bounary data Area(21) %%%%
Area(21).nb=3;
Area(21).bnd{1}=[Area(21).X(16:18,16:18),Area(21).X(16:18,1:3),Area(21).X(16:18,40:42),Area(21).X(16:18,25:27);...
			 Area(21).X(1:3,16:18),Area(21).X(1:3,1:3),Area(21).X(1:3,40:42),Area(21).X(1:3,25:27);...
			 Area(21).X(40:42,16:18),Area(21).X(40:42,1:3),Area(21).X(40:42,40:42),Area(21).X(40:42,25:27);...
			 Area(21).X(25:27,16:18),Area(21).X(25:27,1:3),Area(21).X(25:27,40:42),Area(21).X(25:27,25:27)];

Area(21).bnd{2}=[Area(21).X(1:3,1:3),Area(21).X(1:3,19:21),Area(21).X(1:3,25:27),Area(21).X(1:3,43:45);...
			 Area(21).X(19:21,1:3),Area(21).X(19:21,19:21),Area(21).X(19:21,25:27),Area(21).X(19:21,43:45);...
			 Area(21).X(25:27,1:3),Area(21).X(25:27,19:21),Area(21).X(25:27,25:27),Area(21).X(25:27,43:45);...
			 Area(21).X(43:45,1:3),Area(21).X(43:45,19:21),Area(21).X(43:45,25:27),Area(21).X(43:45,43:45)];

Area(21).bnd{3}=[Area(21).X(4:6,4:6),Area(21).X(4:6,22:24),Area(21).X(4:6,28:30),Area(21).X(4:6,46:48);...
			 Area(21).X(22:24,4:6),Area(21).X(22:24,22:24),Area(21).X(22:24,28:30),Area(21).X(22:24,46:48);...
			 Area(21).X(28:30,4:6),Area(21).X(28:30,22:24),Area(21).X(28:30,28:30),Area(21).X(28:30,46:48);...
			 Area(21).X(46:48,4:6),Area(21).X(46:48,22:24),Area(21).X(46:48,28:30),Area(21).X(46:48,46:48)];

%%%% Bounary data Area(22) %%%%
Area(22).nb=3;
Area(22).bnd{1}=[Area(22).X(7:9,7:9),Area(22).X(7:9,1:3),Area(22).X(7:9,22:24),Area(22).X(7:9,16:18);...
			 Area(22).X(1:3,7:9),Area(22).X(1:3,1:3),Area(22).X(1:3,22:24),Area(22).X(1:3,16:18);...
			 Area(22).X(22:24,7:9),Area(22).X(22:24,1:3),Area(22).X(22:24,22:24),Area(22).X(22:24,16:18);...
			 Area(22).X(16:18,7:9),Area(22).X(16:18,1:3),Area(22).X(16:18,22:24),Area(22).X(16:18,16:18)];

Area(22).bnd{2}=[Area(22).X(4:6,4:6),Area(22).X(4:6,10:12),Area(22).X(4:6,19:21),Area(22).X(4:6,25:27);...
			 Area(22).X(10:12,4:6),Area(22).X(10:12,10:12),Area(22).X(10:12,19:21),Area(22).X(10:12,25:27);...
			 Area(22).X(19:21,4:6),Area(22).X(19:21,10:12),Area(22).X(19:21,19:21),Area(22).X(19:21,25:27);...
			 Area(22).X(25:27,4:6),Area(22).X(25:27,10:12),Area(22).X(25:27,19:21),Area(22).X(25:27,25:27)];

Area(22).bnd{3}=[Area(22).X(1:3,1:3),Area(22).X(1:3,13:15),Area(22).X(1:3,16:18),Area(22).X(1:3,28:30);...
			 Area(22).X(13:15,1:3),Area(22).X(13:15,13:15),Area(22).X(13:15,16:18),Area(22).X(13:15,28:30);...
			 Area(22).X(16:18,1:3),Area(22).X(16:18,13:15),Area(22).X(16:18,16:18),Area(22).X(16:18,28:30);...
			 Area(22).X(28:30,1:3),Area(22).X(28:30,13:15),Area(22).X(28:30,16:18),Area(22).X(28:30,28:30)];

%%%% Bounary data Area(23) %%%%
Area(23).nb=1;
Area(23).bnd{1}=[Area(23).X(13:15,13:15),Area(23).X(13:15,1:3),Area(23).X(13:15,28:30),Area(23).X(13:15,16:18);...
			 Area(23).X(1:3,13:15),Area(23).X(1:3,1:3),Area(23).X(1:3,28:30),Area(23).X(1:3,16:18);...
			 Area(23).X(28:30,13:15),Area(23).X(28:30,1:3),Area(23).X(28:30,28:30),Area(23).X(28:30,16:18);...
			 Area(23).X(16:18,13:15),Area(23).X(16:18,1:3),Area(23).X(16:18,28:30),Area(23).X(16:18,16:18)];

%%%% Bounary data Area(24) %%%%
Area(24).nb=2;
Area(24).bnd{1}=[Area(24).X(13:15,13:15),Area(24).X(13:15,1:3),Area(24).X(13:15,31:33),Area(24).X(13:15,19:21);...
			 Area(24).X(1:3,13:15),Area(24).X(1:3,1:3),Area(24).X(1:3,31:33),Area(24).X(1:3,19:21);...
			 Area(24).X(31:33,13:15),Area(24).X(31:33,1:3),Area(24).X(31:33,31:33),Area(24).X(31:33,19:21);...
			 Area(24).X(19:21,13:15),Area(24).X(19:21,1:3),Area(24).X(19:21,31:33),Area(24).X(19:21,19:21)];

Area(24).bnd{2}=[Area(24).X(4:6,4:6),Area(24).X(4:6,16:18),Area(24).X(4:6,22:24),Area(24).X(4:6,34:36);...
			 Area(24).X(16:18,4:6),Area(24).X(16:18,16:18),Area(24).X(16:18,22:24),Area(24).X(16:18,34:36);...
			 Area(24).X(22:24,4:6),Area(24).X(22:24,16:18),Area(24).X(22:24,22:24),Area(24).X(22:24,34:36);...
			 Area(24).X(34:36,4:6),Area(24).X(34:36,16:18),Area(24).X(34:36,22:24),Area(24).X(34:36,34:36)];

%%%% Bounary data Area(25) %%%%
Area(25).nb=2;
Area(25).bnd{1}=[Area(25).X(13:15,13:15),Area(25).X(13:15,1:3),Area(25).X(13:15,31:33),Area(25).X(13:15,19:21);...
			 Area(25).X(1:3,13:15),Area(25).X(1:3,1:3),Area(25).X(1:3,31:33),Area(25).X(1:3,19:21);...
			 Area(25).X(31:33,13:15),Area(25).X(31:33,1:3),Area(25).X(31:33,31:33),Area(25).X(31:33,19:21);...
			 Area(25).X(19:21,13:15),Area(25).X(19:21,1:3),Area(25).X(19:21,31:33),Area(25).X(19:21,19:21)];

Area(25).bnd{2}=[Area(25).X(4:6,4:6),Area(25).X(4:6,16:18),Area(25).X(4:6,22:24),Area(25).X(4:6,34:36);...
			 Area(25).X(16:18,4:6),Area(25).X(16:18,16:18),Area(25).X(16:18,22:24),Area(25).X(16:18,34:36);...
			 Area(25).X(22:24,4:6),Area(25).X(22:24,16:18),Area(25).X(22:24,22:24),Area(25).X(22:24,34:36);...
			 Area(25).X(34:36,4:6),Area(25).X(34:36,16:18),Area(25).X(34:36,22:24),Area(25).X(34:36,34:36)];

%%%% Bounary data Area(26) %%%%
Area(26).nb=2;
Area(26).bnd{1}=[Area(26).X(1:3,1:3),Area(26).X(1:3,19:21),Area(26).X(1:3,22:24),Area(26).X(1:3,40:42);...
			 Area(26).X(19:21,1:3),Area(26).X(19:21,19:21),Area(26).X(19:21,22:24),Area(26).X(19:21,40:42);...
			 Area(26).X(22:24,1:3),Area(26).X(22:24,19:21),Area(26).X(22:24,22:24),Area(26).X(22:24,40:42);...
			 Area(26).X(40:42,1:3),Area(26).X(40:42,19:21),Area(26).X(40:42,22:24),Area(26).X(40:42,40:42)];

Area(26).bnd{2}=[Area(26).X(16:18,16:18),Area(26).X(16:18,1:3),Area(26).X(16:18,37:39),Area(26).X(16:18,22:24);...
			 Area(26).X(1:3,16:18),Area(26).X(1:3,1:3),Area(26).X(1:3,37:39),Area(26).X(1:3,22:24);...
			 Area(26).X(37:39,16:18),Area(26).X(37:39,1:3),Area(26).X(37:39,37:39),Area(26).X(37:39,22:24);...
			 Area(26).X(22:24,16:18),Area(26).X(22:24,1:3),Area(26).X(22:24,37:39),Area(26).X(22:24,22:24)];

%%%% Bounary data Area(27) %%%%
Area(27).nb=2;
Area(27).bnd{1}=[Area(27).X(10:12,10:12),Area(27).X(10:12,1:3),Area(27).X(10:12,25:27),Area(27).X(10:12,16:18);...
			 Area(27).X(1:3,10:12),Area(27).X(1:3,1:3),Area(27).X(1:3,25:27),Area(27).X(1:3,16:18);...
			 Area(27).X(25:27,10:12),Area(27).X(25:27,1:3),Area(27).X(25:27,25:27),Area(27).X(25:27,16:18);...
			 Area(27).X(16:18,10:12),Area(27).X(16:18,1:3),Area(27).X(16:18,25:27),Area(27).X(16:18,16:18)];

Area(27).bnd{2}=[Area(27).X(4:6,4:6),Area(27).X(4:6,13:15),Area(27).X(4:6,19:21),Area(27).X(4:6,28:30);...
			 Area(27).X(13:15,4:6),Area(27).X(13:15,13:15),Area(27).X(13:15,19:21),Area(27).X(13:15,28:30);...
			 Area(27).X(19:21,4:6),Area(27).X(19:21,13:15),Area(27).X(19:21,19:21),Area(27).X(19:21,28:30);...
			 Area(27).X(28:30,4:6),Area(27).X(28:30,13:15),Area(27).X(28:30,19:21),Area(27).X(28:30,28:30)];

%%%% Bounary data Area(28) %%%%
Area(28).nb=2;
Area(28).bnd{1}=[Area(28).X(1:3,1:3),Area(28).X(1:3,19:21),Area(28).X(1:3,22:24),Area(28).X(1:3,40:42);...
			 Area(28).X(19:21,1:3),Area(28).X(19:21,19:21),Area(28).X(19:21,22:24),Area(28).X(19:21,40:42);...
			 Area(28).X(22:24,1:3),Area(28).X(22:24,19:21),Area(28).X(22:24,22:24),Area(28).X(22:24,40:42);...
			 Area(28).X(40:42,1:3),Area(28).X(40:42,19:21),Area(28).X(40:42,22:24),Area(28).X(40:42,40:42)];

Area(28).bnd{2}=[Area(28).X(16:18,16:18),Area(28).X(16:18,1:3),Area(28).X(16:18,37:39),Area(28).X(16:18,22:24);...
			 Area(28).X(1:3,16:18),Area(28).X(1:3,1:3),Area(28).X(1:3,37:39),Area(28).X(1:3,22:24);...
			 Area(28).X(37:39,16:18),Area(28).X(37:39,1:3),Area(28).X(37:39,37:39),Area(28).X(37:39,22:24);...
			 Area(28).X(22:24,16:18),Area(28).X(22:24,1:3),Area(28).X(22:24,37:39),Area(28).X(22:24,22:24)];

%%%% Bounary data Area(29) %%%%
Area(29).nb=2;
Area(29).bnd{1}=[Area(29).X(13:15,13:15),Area(29).X(13:15,1:3),Area(29).X(13:15,31:33),Area(29).X(13:15,19:21);...
			 Area(29).X(1:3,13:15),Area(29).X(1:3,1:3),Area(29).X(1:3,31:33),Area(29).X(1:3,19:21);...
			 Area(29).X(31:33,13:15),Area(29).X(31:33,1:3),Area(29).X(31:33,31:33),Area(29).X(31:33,19:21);...
			 Area(29).X(19:21,13:15),Area(29).X(19:21,1:3),Area(29).X(19:21,31:33),Area(29).X(19:21,19:21)];

Area(29).bnd{2}=[Area(29).X(4:6,4:6),Area(29).X(4:6,16:18),Area(29).X(4:6,22:24),Area(29).X(4:6,34:36);...
			 Area(29).X(16:18,4:6),Area(29).X(16:18,16:18),Area(29).X(16:18,22:24),Area(29).X(16:18,34:36);...
			 Area(29).X(22:24,4:6),Area(29).X(22:24,16:18),Area(29).X(22:24,22:24),Area(29).X(22:24,34:36);...
			 Area(29).X(34:36,4:6),Area(29).X(34:36,16:18),Area(29).X(34:36,22:24),Area(29).X(34:36,34:36)];

%%%% Bounary data Area(30) %%%%
Area(30).nb=2;
Area(30).bnd{1}=[Area(30).X(1:3,1:3),Area(30).X(1:3,16:18),Area(30).X(1:3,19:21),Area(30).X(1:3,34:36);...
			 Area(30).X(16:18,1:3),Area(30).X(16:18,16:18),Area(30).X(16:18,19:21),Area(30).X(16:18,34:36);...
			 Area(30).X(19:21,1:3),Area(30).X(19:21,16:18),Area(30).X(19:21,19:21),Area(30).X(19:21,34:36);...
			 Area(30).X(34:36,1:3),Area(30).X(34:36,16:18),Area(30).X(34:36,19:21),Area(30).X(34:36,34:36)];

Area(30).bnd{2}=[Area(30).X(13:15,13:15),Area(30).X(13:15,1:3),Area(30).X(13:15,31:33),Area(30).X(13:15,19:21);...
			 Area(30).X(1:3,13:15),Area(30).X(1:3,1:3),Area(30).X(1:3,31:33),Area(30).X(1:3,19:21);...
			 Area(30).X(31:33,13:15),Area(30).X(31:33,1:3),Area(30).X(31:33,31:33),Area(30).X(31:33,19:21);...
			 Area(30).X(19:21,13:15),Area(30).X(19:21,1:3),Area(30).X(19:21,31:33),Area(30).X(19:21,19:21)];

%%%% Bounary data Area(31) %%%%
Area(31).nb=2;
Area(31).bnd{1}=[Area(31).X(7:9,7:9),Area(31).X(7:9,19:21),Area(31).X(7:9,28:30),Area(31).X(7:9,40:42);...
			 Area(31).X(19:21,7:9),Area(31).X(19:21,19:21),Area(31).X(19:21,28:30),Area(31).X(19:21,40:42);...
			 Area(31).X(28:30,7:9),Area(31).X(28:30,19:21),Area(31).X(28:30,28:30),Area(31).X(28:30,40:42);...
			 Area(31).X(40:42,7:9),Area(31).X(40:42,19:21),Area(31).X(40:42,28:30),Area(31).X(40:42,40:42)];

Area(31).bnd{2}=[Area(31).X(16:18,16:18),Area(31).X(16:18,1:3),Area(31).X(16:18,37:39),Area(31).X(16:18,22:24);...
			 Area(31).X(1:3,16:18),Area(31).X(1:3,1:3),Area(31).X(1:3,37:39),Area(31).X(1:3,22:24);...
			 Area(31).X(37:39,16:18),Area(31).X(37:39,1:3),Area(31).X(37:39,37:39),Area(31).X(37:39,22:24);...
			 Area(31).X(22:24,16:18),Area(31).X(22:24,1:3),Area(31).X(22:24,37:39),Area(31).X(22:24,22:24)];

%%%% Bounary data Area(32) %%%%
Area(32).nb=1;
Area(32).bnd{1}=[Area(32).X(13:15,13:15),Area(32).X(13:15,1:3),Area(32).X(13:15,28:30),Area(32).X(13:15,16:18);...
			 Area(32).X(1:3,13:15),Area(32).X(1:3,1:3),Area(32).X(1:3,28:30),Area(32).X(1:3,16:18);...
			 Area(32).X(28:30,13:15),Area(32).X(28:30,1:3),Area(32).X(28:30,28:30),Area(32).X(28:30,16:18);...
			 Area(32).X(16:18,13:15),Area(32).X(16:18,1:3),Area(32).X(16:18,28:30),Area(32).X(16:18,16:18)];

%%%% Bounary data Area(33) %%%%
Area(33).nb=2;
Area(33).bnd{1}=[Area(33).X(13:15,13:15),Area(33).X(13:15,1:3),Area(33).X(13:15,31:33),Area(33).X(13:15,19:21);...
			 Area(33).X(1:3,13:15),Area(33).X(1:3,1:3),Area(33).X(1:3,31:33),Area(33).X(1:3,19:21);...
			 Area(33).X(31:33,13:15),Area(33).X(31:33,1:3),Area(33).X(31:33,31:33),Area(33).X(31:33,19:21);...
			 Area(33).X(19:21,13:15),Area(33).X(19:21,1:3),Area(33).X(19:21,31:33),Area(33).X(19:21,19:21)];

Area(33).bnd{2}=[Area(33).X(1:3,1:3),Area(33).X(1:3,16:18),Area(33).X(1:3,19:21),Area(33).X(1:3,34:36);...
			 Area(33).X(16:18,1:3),Area(33).X(16:18,16:18),Area(33).X(16:18,19:21),Area(33).X(16:18,34:36);...
			 Area(33).X(19:21,1:3),Area(33).X(19:21,16:18),Area(33).X(19:21,19:21),Area(33).X(19:21,34:36);...
			 Area(33).X(34:36,1:3),Area(33).X(34:36,16:18),Area(33).X(34:36,19:21),Area(33).X(34:36,34:36)];

%%%% Bounary data Area(34) %%%%
Area(34).nb=2;
Area(34).bnd{1}=[Area(34).X(1:3,1:3),Area(34).X(1:3,13:15),Area(34).X(1:3,16:18),Area(34).X(1:3,28:30);...
			 Area(34).X(13:15,1:3),Area(34).X(13:15,13:15),Area(34).X(13:15,16:18),Area(34).X(13:15,28:30);...
			 Area(34).X(16:18,1:3),Area(34).X(16:18,13:15),Area(34).X(16:18,16:18),Area(34).X(16:18,28:30);...
			 Area(34).X(28:30,1:3),Area(34).X(28:30,13:15),Area(34).X(28:30,16:18),Area(34).X(28:30,28:30)];

Area(34).bnd{2}=[Area(34).X(10:12,10:12),Area(34).X(10:12,1:3),Area(34).X(10:12,25:27),Area(34).X(10:12,16:18);...
			 Area(34).X(1:3,10:12),Area(34).X(1:3,1:3),Area(34).X(1:3,25:27),Area(34).X(1:3,16:18);...
			 Area(34).X(25:27,10:12),Area(34).X(25:27,1:3),Area(34).X(25:27,25:27),Area(34).X(25:27,16:18);...
			 Area(34).X(16:18,10:12),Area(34).X(16:18,1:3),Area(34).X(16:18,25:27),Area(34).X(16:18,16:18)];

%%%% Bounary data Area(35) %%%%
Area(35).nb=2;
Area(35).bnd{1}=[Area(35).X(4:6,4:6),Area(35).X(4:6,16:18),Area(35).X(4:6,22:24),Area(35).X(4:6,34:36);...
			 Area(35).X(16:18,4:6),Area(35).X(16:18,16:18),Area(35).X(16:18,22:24),Area(35).X(16:18,34:36);...
			 Area(35).X(22:24,4:6),Area(35).X(22:24,16:18),Area(35).X(22:24,22:24),Area(35).X(22:24,34:36);...
			 Area(35).X(34:36,4:6),Area(35).X(34:36,16:18),Area(35).X(34:36,22:24),Area(35).X(34:36,34:36)];

Area(35).bnd{2}=[Area(35).X(13:15,13:15),Area(35).X(13:15,1:3),Area(35).X(13:15,31:33),Area(35).X(13:15,19:21);...
			 Area(35).X(1:3,13:15),Area(35).X(1:3,1:3),Area(35).X(1:3,31:33),Area(35).X(1:3,19:21);...
			 Area(35).X(31:33,13:15),Area(35).X(31:33,1:3),Area(35).X(31:33,31:33),Area(35).X(31:33,19:21);...
			 Area(35).X(19:21,13:15),Area(35).X(19:21,1:3),Area(35).X(19:21,31:33),Area(35).X(19:21,19:21)];

%%%% Bounary data Area(36) %%%%
Area(36).nb=2;
Area(36).bnd{1}=[Area(36).X(10:12,10:12),Area(36).X(10:12,1:3),Area(36).X(10:12,25:27),Area(36).X(10:12,16:18);...
			 Area(36).X(1:3,10:12),Area(36).X(1:3,1:3),Area(36).X(1:3,25:27),Area(36).X(1:3,16:18);...
			 Area(36).X(25:27,10:12),Area(36).X(25:27,1:3),Area(36).X(25:27,25:27),Area(36).X(25:27,16:18);...
			 Area(36).X(16:18,10:12),Area(36).X(16:18,1:3),Area(36).X(16:18,25:27),Area(36).X(16:18,16:18)];

Area(36).bnd{2}=[Area(36).X(1:3,1:3),Area(36).X(1:3,13:15),Area(36).X(1:3,16:18),Area(36).X(1:3,28:30);...
			 Area(36).X(13:15,1:3),Area(36).X(13:15,13:15),Area(36).X(13:15,16:18),Area(36).X(13:15,28:30);...
			 Area(36).X(16:18,1:3),Area(36).X(16:18,13:15),Area(36).X(16:18,16:18),Area(36).X(16:18,28:30);...
			 Area(36).X(28:30,1:3),Area(36).X(28:30,13:15),Area(36).X(28:30,16:18),Area(36).X(28:30,28:30)];

%%%% Bounary data Area(37) %%%%
Area(37).nb=2;
Area(37).bnd{1}=[Area(37).X(10:12,10:12),Area(37).X(10:12,1:3),Area(37).X(10:12,25:27),Area(37).X(10:12,16:18);...
			 Area(37).X(1:3,10:12),Area(37).X(1:3,1:3),Area(37).X(1:3,25:27),Area(37).X(1:3,16:18);...
			 Area(37).X(25:27,10:12),Area(37).X(25:27,1:3),Area(37).X(25:27,25:27),Area(37).X(25:27,16:18);...
			 Area(37).X(16:18,10:12),Area(37).X(16:18,1:3),Area(37).X(16:18,25:27),Area(37).X(16:18,16:18)];

Area(37).bnd{2}=[Area(37).X(1:3,1:3),Area(37).X(1:3,13:15),Area(37).X(1:3,16:18),Area(37).X(1:3,28:30);...
			 Area(37).X(13:15,1:3),Area(37).X(13:15,13:15),Area(37).X(13:15,16:18),Area(37).X(13:15,28:30);...
			 Area(37).X(16:18,1:3),Area(37).X(16:18,13:15),Area(37).X(16:18,16:18),Area(37).X(16:18,28:30);...
			 Area(37).X(28:30,1:3),Area(37).X(28:30,13:15),Area(37).X(28:30,16:18),Area(37).X(28:30,28:30)];

%%%% Bounary data Area(38) %%%%
Area(38).nb=1;
Area(38).bnd{1}=[Area(38).X(16:18,16:18),Area(38).X(16:18,1:3),Area(38).X(16:18,34:36),Area(38).X(16:18,19:21);...
			 Area(38).X(1:3,16:18),Area(38).X(1:3,1:3),Area(38).X(1:3,34:36),Area(38).X(1:3,19:21);...
			 Area(38).X(34:36,16:18),Area(38).X(34:36,1:3),Area(38).X(34:36,34:36),Area(38).X(34:36,19:21);...
			 Area(38).X(19:21,16:18),Area(38).X(19:21,1:3),Area(38).X(19:21,34:36),Area(38).X(19:21,19:21)];

%%%% Bounary data Area(39) %%%%
Area(39).nb=2;
Area(39).bnd{1}=[Area(39).X(1:3,1:3),Area(39).X(1:3,16:18),Area(39).X(1:3,19:21),Area(39).X(1:3,34:36);...
			 Area(39).X(16:18,1:3),Area(39).X(16:18,16:18),Area(39).X(16:18,19:21),Area(39).X(16:18,34:36);...
			 Area(39).X(19:21,1:3),Area(39).X(19:21,16:18),Area(39).X(19:21,19:21),Area(39).X(19:21,34:36);...
			 Area(39).X(34:36,1:3),Area(39).X(34:36,16:18),Area(39).X(34:36,19:21),Area(39).X(34:36,34:36)];

Area(39).bnd{2}=[Area(39).X(13:15,13:15),Area(39).X(13:15,1:3),Area(39).X(13:15,31:33),Area(39).X(13:15,19:21);...
			 Area(39).X(1:3,13:15),Area(39).X(1:3,1:3),Area(39).X(1:3,31:33),Area(39).X(1:3,19:21);...
			 Area(39).X(31:33,13:15),Area(39).X(31:33,1:3),Area(39).X(31:33,31:33),Area(39).X(31:33,19:21);...
			 Area(39).X(19:21,13:15),Area(39).X(19:21,1:3),Area(39).X(19:21,31:33),Area(39).X(19:21,19:21)];

%%%% Bounary data Area(40) %%%%
Area(40).nb=3;
Area(40).bnd{1}=[Area(40).X(16:18,16:18),Area(40).X(16:18,1:3),Area(40).X(16:18,40:42),Area(40).X(16:18,25:27);...
			 Area(40).X(1:3,16:18),Area(40).X(1:3,1:3),Area(40).X(1:3,40:42),Area(40).X(1:3,25:27);...
			 Area(40).X(40:42,16:18),Area(40).X(40:42,1:3),Area(40).X(40:42,40:42),Area(40).X(40:42,25:27);...
			 Area(40).X(25:27,16:18),Area(40).X(25:27,1:3),Area(40).X(25:27,40:42),Area(40).X(25:27,25:27)];

Area(40).bnd{2}=[Area(40).X(1:3,1:3),Area(40).X(1:3,19:21),Area(40).X(1:3,25:27),Area(40).X(1:3,43:45);...
			 Area(40).X(19:21,1:3),Area(40).X(19:21,19:21),Area(40).X(19:21,25:27),Area(40).X(19:21,43:45);...
			 Area(40).X(25:27,1:3),Area(40).X(25:27,19:21),Area(40).X(25:27,25:27),Area(40).X(25:27,43:45);...
			 Area(40).X(43:45,1:3),Area(40).X(43:45,19:21),Area(40).X(43:45,25:27),Area(40).X(43:45,43:45)];

Area(40).bnd{3}=[Area(40).X(7:9,7:9),Area(40).X(7:9,22:24),Area(40).X(7:9,31:33),Area(40).X(7:9,46:48);...
			 Area(40).X(22:24,7:9),Area(40).X(22:24,22:24),Area(40).X(22:24,31:33),Area(40).X(22:24,46:48);...
			 Area(40).X(31:33,7:9),Area(40).X(31:33,22:24),Area(40).X(31:33,31:33),Area(40).X(31:33,46:48);...
			 Area(40).X(46:48,7:9),Area(40).X(46:48,22:24),Area(40).X(46:48,31:33),Area(40).X(46:48,46:48)];

%%%% Bounary data Area(41) %%%%
Area(41).nb=3;
Area(41).bnd{1}=[Area(41).X(4:6,4:6),Area(41).X(4:6,19:21),Area(41).X(4:6,25:27),Area(41).X(4:6,40:42);...
			 Area(41).X(19:21,4:6),Area(41).X(19:21,19:21),Area(41).X(19:21,25:27),Area(41).X(19:21,40:42);...
			 Area(41).X(25:27,4:6),Area(41).X(25:27,19:21),Area(41).X(25:27,25:27),Area(41).X(25:27,40:42);...
			 Area(41).X(40:42,4:6),Area(41).X(40:42,19:21),Area(41).X(40:42,25:27),Area(41).X(40:42,40:42)];

Area(41).bnd{2}=[Area(41).X(13:15,13:15),Area(41).X(13:15,1:3),Area(41).X(13:15,34:36),Area(41).X(13:15,22:24);...
			 Area(41).X(1:3,13:15),Area(41).X(1:3,1:3),Area(41).X(1:3,34:36),Area(41).X(1:3,22:24);...
			 Area(41).X(34:36,13:15),Area(41).X(34:36,1:3),Area(41).X(34:36,34:36),Area(41).X(34:36,22:24);...
			 Area(41).X(22:24,13:15),Area(41).X(22:24,1:3),Area(41).X(22:24,34:36),Area(41).X(22:24,22:24)];

Area(41).bnd{3}=[Area(41).X(1:3,1:3),Area(41).X(1:3,16:18),Area(41).X(1:3,22:24),Area(41).X(1:3,37:39);...
			 Area(41).X(16:18,1:3),Area(41).X(16:18,16:18),Area(41).X(16:18,22:24),Area(41).X(16:18,37:39);...
			 Area(41).X(22:24,1:3),Area(41).X(22:24,16:18),Area(41).X(22:24,22:24),Area(41).X(22:24,37:39);...
			 Area(41).X(37:39,1:3),Area(41).X(37:39,16:18),Area(41).X(37:39,22:24),Area(41).X(37:39,37:39)];

%%%% Bounary data Area(42) %%%%
Area(42).nb=1;
Area(42).bnd{1}=[Area(42).X(10:12,10:12),Area(42).X(10:12,1:3),Area(42).X(10:12,22:24),Area(42).X(10:12,13:15);...
			 Area(42).X(1:3,10:12),Area(42).X(1:3,1:3),Area(42).X(1:3,22:24),Area(42).X(1:3,13:15);...
			 Area(42).X(22:24,10:12),Area(42).X(22:24,1:3),Area(42).X(22:24,22:24),Area(42).X(22:24,13:15);...
			 Area(42).X(13:15,10:12),Area(42).X(13:15,1:3),Area(42).X(13:15,22:24),Area(42).X(13:15,13:15)];

%%%% Bounary data Area(43) %%%%
Area(43).nb=3;
Area(43).bnd{1}=[Area(43).X(10:12,10:12),Area(43).X(10:12,1:3),Area(43).X(10:12,28:30),Area(43).X(10:12,19:21);...
			 Area(43).X(1:3,10:12),Area(43).X(1:3,1:3),Area(43).X(1:3,28:30),Area(43).X(1:3,19:21);...
			 Area(43).X(28:30,10:12),Area(43).X(28:30,1:3),Area(43).X(28:30,28:30),Area(43).X(28:30,19:21);...
			 Area(43).X(19:21,10:12),Area(43).X(19:21,1:3),Area(43).X(19:21,28:30),Area(43).X(19:21,19:21)];

Area(43).bnd{2}=[Area(43).X(4:6,4:6),Area(43).X(4:6,13:15),Area(43).X(4:6,22:24),Area(43).X(4:6,31:33);...
			 Area(43).X(13:15,4:6),Area(43).X(13:15,13:15),Area(43).X(13:15,22:24),Area(43).X(13:15,31:33);...
			 Area(43).X(22:24,4:6),Area(43).X(22:24,13:15),Area(43).X(22:24,22:24),Area(43).X(22:24,31:33);...
			 Area(43).X(31:33,4:6),Area(43).X(31:33,13:15),Area(43).X(31:33,22:24),Area(43).X(31:33,31:33)];

Area(43).bnd{3}=[Area(43).X(4:6,4:6),Area(43).X(4:6,16:18),Area(43).X(4:6,22:24),Area(43).X(4:6,34:36);...
			 Area(43).X(16:18,4:6),Area(43).X(16:18,16:18),Area(43).X(16:18,22:24),Area(43).X(16:18,34:36);...
			 Area(43).X(22:24,4:6),Area(43).X(22:24,16:18),Area(43).X(22:24,22:24),Area(43).X(22:24,34:36);...
			 Area(43).X(34:36,4:6),Area(43).X(34:36,16:18),Area(43).X(34:36,22:24),Area(43).X(34:36,34:36)];

%%%% Bounary data Area(44) %%%%
Area(44).nb=2;
Area(44).bnd{1}=[Area(44).X(4:6,4:6),Area(44).X(4:6,19:21),Area(44).X(4:6,25:27),Area(44).X(4:6,40:42);...
			 Area(44).X(19:21,4:6),Area(44).X(19:21,19:21),Area(44).X(19:21,25:27),Area(44).X(19:21,40:42);...
			 Area(44).X(25:27,4:6),Area(44).X(25:27,19:21),Area(44).X(25:27,25:27),Area(44).X(25:27,40:42);...
			 Area(44).X(40:42,4:6),Area(44).X(40:42,19:21),Area(44).X(40:42,25:27),Area(44).X(40:42,40:42)];

Area(44).bnd{2}=[Area(44).X(16:18,16:18),Area(44).X(16:18,1:3),Area(44).X(16:18,37:39),Area(44).X(16:18,22:24);...
			 Area(44).X(1:3,16:18),Area(44).X(1:3,1:3),Area(44).X(1:3,37:39),Area(44).X(1:3,22:24);...
			 Area(44).X(37:39,16:18),Area(44).X(37:39,1:3),Area(44).X(37:39,37:39),Area(44).X(37:39,22:24);...
			 Area(44).X(22:24,16:18),Area(44).X(22:24,1:3),Area(44).X(22:24,37:39),Area(44).X(22:24,22:24)];

%%%% Bounary data Area(45) %%%%
Area(45).nb=2;
Area(45).bnd{1}=[Area(45).X(16:18,16:18),Area(45).X(16:18,1:3),Area(45).X(16:18,37:39),Area(45).X(16:18,22:24);...
			 Area(45).X(1:3,16:18),Area(45).X(1:3,1:3),Area(45).X(1:3,37:39),Area(45).X(1:3,22:24);...
			 Area(45).X(37:39,16:18),Area(45).X(37:39,1:3),Area(45).X(37:39,37:39),Area(45).X(37:39,22:24);...
			 Area(45).X(22:24,16:18),Area(45).X(22:24,1:3),Area(45).X(22:24,37:39),Area(45).X(22:24,22:24)];

Area(45).bnd{2}=[Area(45).X(4:6,4:6),Area(45).X(4:6,19:21),Area(45).X(4:6,25:27),Area(45).X(4:6,40:42);...
			 Area(45).X(19:21,4:6),Area(45).X(19:21,19:21),Area(45).X(19:21,25:27),Area(45).X(19:21,40:42);...
			 Area(45).X(25:27,4:6),Area(45).X(25:27,19:21),Area(45).X(25:27,25:27),Area(45).X(25:27,40:42);...
			 Area(45).X(40:42,4:6),Area(45).X(40:42,19:21),Area(45).X(40:42,25:27),Area(45).X(40:42,40:42)];

%%%% Bounary data Area(46) %%%%
Area(46).nb=3;
Area(46).bnd{1}=[Area(46).X(4:6,4:6),Area(46).X(4:6,10:12),Area(46).X(4:6,19:21),Area(46).X(4:6,25:27);...
			 Area(46).X(10:12,4:6),Area(46).X(10:12,10:12),Area(46).X(10:12,19:21),Area(46).X(10:12,25:27);...
			 Area(46).X(19:21,4:6),Area(46).X(19:21,10:12),Area(46).X(19:21,19:21),Area(46).X(19:21,25:27);...
			 Area(46).X(25:27,4:6),Area(46).X(25:27,10:12),Area(46).X(25:27,19:21),Area(46).X(25:27,25:27)];

Area(46).bnd{2}=[Area(46).X(7:9,7:9),Area(46).X(7:9,1:3),Area(46).X(7:9,22:24),Area(46).X(7:9,16:18);...
			 Area(46).X(1:3,7:9),Area(46).X(1:3,1:3),Area(46).X(1:3,22:24),Area(46).X(1:3,16:18);...
			 Area(46).X(22:24,7:9),Area(46).X(22:24,1:3),Area(46).X(22:24,22:24),Area(46).X(22:24,16:18);...
			 Area(46).X(16:18,7:9),Area(46).X(16:18,1:3),Area(46).X(16:18,22:24),Area(46).X(16:18,16:18)];

Area(46).bnd{3}=[Area(46).X(4:6,4:6),Area(46).X(4:6,13:15),Area(46).X(4:6,19:21),Area(46).X(4:6,28:30);...
			 Area(46).X(13:15,4:6),Area(46).X(13:15,13:15),Area(46).X(13:15,19:21),Area(46).X(13:15,28:30);...
			 Area(46).X(19:21,4:6),Area(46).X(19:21,13:15),Area(46).X(19:21,19:21),Area(46).X(19:21,28:30);...
			 Area(46).X(28:30,4:6),Area(46).X(28:30,13:15),Area(46).X(28:30,19:21),Area(46).X(28:30,28:30)];

%%%% Bounary data Area(47) %%%%
Area(47).nb=2;
Area(47).bnd{1}=[Area(47).X(16:18,16:18),Area(47).X(16:18,1:3),Area(47).X(16:18,37:39),Area(47).X(16:18,22:24);...
			 Area(47).X(1:3,16:18),Area(47).X(1:3,1:3),Area(47).X(1:3,37:39),Area(47).X(1:3,22:24);...
			 Area(47).X(37:39,16:18),Area(47).X(37:39,1:3),Area(47).X(37:39,37:39),Area(47).X(37:39,22:24);...
			 Area(47).X(22:24,16:18),Area(47).X(22:24,1:3),Area(47).X(22:24,37:39),Area(47).X(22:24,22:24)];

Area(47).bnd{2}=[Area(47).X(13:15,13:15),Area(47).X(13:15,19:21),Area(47).X(13:15,34:36),Area(47).X(13:15,40:42);...
			 Area(47).X(19:21,13:15),Area(47).X(19:21,19:21),Area(47).X(19:21,34:36),Area(47).X(19:21,40:42);...
			 Area(47).X(34:36,13:15),Area(47).X(34:36,19:21),Area(47).X(34:36,34:36),Area(47).X(34:36,40:42);...
			 Area(47).X(40:42,13:15),Area(47).X(40:42,19:21),Area(47).X(40:42,34:36),Area(47).X(40:42,40:42)];

%%%% Bounary data Area(48) %%%%
Area(48).nb=3;
Area(48).bnd{1}=[Area(48).X(1:3,1:3),Area(48).X(1:3,10:12),Area(48).X(1:3,16:18),Area(48).X(1:3,25:27);...
			 Area(48).X(10:12,1:3),Area(48).X(10:12,10:12),Area(48).X(10:12,16:18),Area(48).X(10:12,25:27);...
			 Area(48).X(16:18,1:3),Area(48).X(16:18,10:12),Area(48).X(16:18,16:18),Area(48).X(16:18,25:27);...
			 Area(48).X(25:27,1:3),Area(48).X(25:27,10:12),Area(48).X(25:27,16:18),Area(48).X(25:27,25:27)];

Area(48).bnd{2}=[Area(48).X(7:9,7:9),Area(48).X(7:9,1:3),Area(48).X(7:9,22:24),Area(48).X(7:9,16:18);...
			 Area(48).X(1:3,7:9),Area(48).X(1:3,1:3),Area(48).X(1:3,22:24),Area(48).X(1:3,16:18);...
			 Area(48).X(22:24,7:9),Area(48).X(22:24,1:3),Area(48).X(22:24,22:24),Area(48).X(22:24,16:18);...
			 Area(48).X(16:18,7:9),Area(48).X(16:18,1:3),Area(48).X(16:18,22:24),Area(48).X(16:18,16:18)];

Area(48).bnd{3}=[Area(48).X(1:3,1:3),Area(48).X(1:3,13:15),Area(48).X(1:3,16:18),Area(48).X(1:3,28:30);...
			 Area(48).X(13:15,1:3),Area(48).X(13:15,13:15),Area(48).X(13:15,16:18),Area(48).X(13:15,28:30);...
			 Area(48).X(16:18,1:3),Area(48).X(16:18,13:15),Area(48).X(16:18,16:18),Area(48).X(16:18,28:30);...
			 Area(48).X(28:30,1:3),Area(48).X(28:30,13:15),Area(48).X(28:30,16:18),Area(48).X(28:30,28:30)];

%%%% Bounary data Area(49) %%%%
Area(49).nb=2;
Area(49).bnd{1}=[Area(49).X(13:15,13:15),Area(49).X(13:15,1:3),Area(49).X(13:15,31:33),Area(49).X(13:15,19:21);...
			 Area(49).X(1:3,13:15),Area(49).X(1:3,1:3),Area(49).X(1:3,31:33),Area(49).X(1:3,19:21);...
			 Area(49).X(31:33,13:15),Area(49).X(31:33,1:3),Area(49).X(31:33,31:33),Area(49).X(31:33,19:21);...
			 Area(49).X(19:21,13:15),Area(49).X(19:21,1:3),Area(49).X(19:21,31:33),Area(49).X(19:21,19:21)];

Area(49).bnd{2}=[Area(49).X(4:6,4:6),Area(49).X(4:6,16:18),Area(49).X(4:6,22:24),Area(49).X(4:6,34:36);...
			 Area(49).X(16:18,4:6),Area(49).X(16:18,16:18),Area(49).X(16:18,22:24),Area(49).X(16:18,34:36);...
			 Area(49).X(22:24,4:6),Area(49).X(22:24,16:18),Area(49).X(22:24,22:24),Area(49).X(22:24,34:36);...
			 Area(49).X(34:36,4:6),Area(49).X(34:36,16:18),Area(49).X(34:36,22:24),Area(49).X(34:36,34:36)];

%%%% Bounary data Area(50) %%%%
Area(50).nb=1;
Area(50).bnd{1}=[Area(50).X(10:12,10:12),Area(50).X(10:12,1:3),Area(50).X(10:12,22:24),Area(50).X(10:12,13:15);...
			 Area(50).X(1:3,10:12),Area(50).X(1:3,1:3),Area(50).X(1:3,22:24),Area(50).X(1:3,13:15);...
			 Area(50).X(22:24,10:12),Area(50).X(22:24,1:3),Area(50).X(22:24,22:24),Area(50).X(22:24,13:15);...
			 Area(50).X(13:15,10:12),Area(50).X(13:15,1:3),Area(50).X(13:15,22:24),Area(50).X(13:15,13:15)];

%%%% Bounary data Area(51) %%%%
Area(51).nb=1;
Area(51).bnd{1}=[Area(51).X(10:12,10:12),Area(51).X(10:12,1:3),Area(51).X(10:12,22:24),Area(51).X(10:12,13:15);...
			 Area(51).X(1:3,10:12),Area(51).X(1:3,1:3),Area(51).X(1:3,22:24),Area(51).X(1:3,13:15);...
			 Area(51).X(22:24,10:12),Area(51).X(22:24,1:3),Area(51).X(22:24,22:24),Area(51).X(22:24,13:15);...
			 Area(51).X(13:15,10:12),Area(51).X(13:15,1:3),Area(51).X(13:15,22:24),Area(51).X(13:15,13:15)];

%%%% Bounary data Area(52) %%%%
Area(52).nb=1;
Area(52).bnd{1}=[Area(52).X(16:18,16:18),Area(52).X(16:18,1:3),Area(52).X(16:18,34:36),Area(52).X(16:18,19:21);...
			 Area(52).X(1:3,16:18),Area(52).X(1:3,1:3),Area(52).X(1:3,34:36),Area(52).X(1:3,19:21);...
			 Area(52).X(34:36,16:18),Area(52).X(34:36,1:3),Area(52).X(34:36,34:36),Area(52).X(34:36,19:21);...
			 Area(52).X(19:21,16:18),Area(52).X(19:21,1:3),Area(52).X(19:21,34:36),Area(52).X(19:21,19:21)];

%%%% Bounary data Area(53) %%%%
Area(53).nb=1;
Area(53).bnd{1}=[Area(53).X(13:15,13:15),Area(53).X(13:15,1:3),Area(53).X(13:15,28:30),Area(53).X(13:15,16:18);...
			 Area(53).X(1:3,13:15),Area(53).X(1:3,1:3),Area(53).X(1:3,28:30),Area(53).X(1:3,16:18);...
			 Area(53).X(28:30,13:15),Area(53).X(28:30,1:3),Area(53).X(28:30,28:30),Area(53).X(28:30,16:18);...
			 Area(53).X(16:18,13:15),Area(53).X(16:18,1:3),Area(53).X(16:18,28:30),Area(53).X(16:18,16:18)];

%%%% Bounary data Area(54) %%%%
Area(54).nb=1;
Area(54).bnd{1}=[Area(54).X(13:15,13:15),Area(54).X(13:15,1:3),Area(54).X(13:15,28:30),Area(54).X(13:15,16:18);...
			 Area(54).X(1:3,13:15),Area(54).X(1:3,1:3),Area(54).X(1:3,28:30),Area(54).X(1:3,16:18);...
			 Area(54).X(28:30,13:15),Area(54).X(28:30,1:3),Area(54).X(28:30,28:30),Area(54).X(28:30,16:18);...
			 Area(54).X(16:18,13:15),Area(54).X(16:18,1:3),Area(54).X(16:18,28:30),Area(54).X(16:18,16:18)];

%%%% Boundary index %%%%
Bnd_index=[ 17, 1, 21, 1;...
		    16, 1, 17, 2;...
		    41, 1, 43, 1;...
		    6, 1, 8, 1;...
		    28, 1, 29, 1;...
		    34, 1, 36, 1;...
		    46, 1, 47, 1;...
		    4, 1, 5, 1;...
		    8, 2, 9, 1;...
		    18, 1, 25, 1;...
		    31, 1, 33, 1;...
		    21, 2, 22, 1;...
		    39, 1, 40, 1;...
		    44, 1, 45, 1;...
		    48, 1, 49, 1;...
		    2, 1, 3, 1;...
		    6, 2, 12, 1;...
		    15, 1, 16, 2;...
		    9, 2, 10, 1;...
		    17, 3, 18, 2;...
		    26, 1, 27, 1;...
		    30, 1, 31, 2;...
		    35, 1, 37, 1;...
		    21, 3, 23, 1;...
		    22, 2, 24, 1;...
		    36, 2, 39, 2;...
		    40, 2, 41, 2;...
		    43, 2, 44, 2;...
		    45, 2, 46, 2;...
		    47, 2, 48, 2;...
		    49, 2, 51, 1;...
		    1, 1, 2, 2;...
		    3, 2, 4, 2;...
		    5, 2, 6, 3;...
		    12, 2, 13, 1;...
		    8, 3, 15, 2;...
		    10, 2, 11, 1;...
		    17, 4, 19, 1;...
		    18, 3, 20, 1;...
		    25, 2, 26, 2;...
		    27, 2, 28, 2;...
		    29, 2, 30, 2;...
		    33, 2, 35, 2;...
		    37, 2, 38, 1;...
		    22, 3, 32, 1;...
		    24, 2, 34, 2;...
		    40, 3, 50, 1;...
		    41, 3, 42, 1;...
		    43, 3, 54, 1;...
		    46, 3, 53, 1;...
		    48, 3, 52, 1;...
		    4, 3, 7, 1;...
		    13, 2, 14, 1];

tat=1;
%%finish%%