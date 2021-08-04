function vyhodnoceni(t,c,por)
polomer = zeros (1000,1);
wr = zeros(999,1);
tw = zeros(999,1);
energie = zeros(999,1);
% polomer
for d=0:999
	filename = sprintf('%04i.dat',d);
	plasmid = dlmread(filename);
	[polomer(d+1,1),~,~] = ExactMinBoundSphere3D(plasmid);
end
polomer = 10*polomer;
zapis = sprintf('polomer_puc_%i_%i_%i.txt',t,c,por);
dlmwrite(zapis,polomer)
% energie
plasmid = dlmread('fort.787');
[n,~] = size(plasmid);
switch n
	case 999
		energie(:,1) = plasmid(:,1)+plasmid(:,4);
	case 1000
		energie(:,1) = plasmid(2:end,1)+plasmid(2:end,4);
	case 1001
		energie(:,1) = plasmid(2:end-1,1)+plasmid(2:end-1,4);
end 
zapis = sprintf('energie_puc_%i_%i_%i.txt',t,c,por);
dlmwrite(zapis,energie)
% topologie
plasmid = dlmread('fort.108');
wr(:,1) = [plasmid(100:100:end,2)];
tw(:,1) = [plasmid(100:100:end,4)];
lk = [wr tw wr+tw];
zapis = sprintf('topo_puc_%i_%i_%i.txt',t,c,por);
dlmwrite(zapis,lk)
