function analyza_puc(a,b)
x = shodapuc(a,b);
n = length(x);
polomer = zeros(n,1000);
energie = zeros(n,999);
wr = zeros(n,999);
tw = zeros(n,999);
d = 1;
for c=x
    f = sprintf('polomer_puc_%i_%i_%i.txt',a,b,c);
    polomer(d,:) = dlmread(f);
    f = sprintf('energie_puc_%i_%i_%i.txt',a,b,c);
    energie(d,:) = dlmread(f);
    f = sprintf('topo_puc_%i_%i_%i.txt',a,b,c);
    topo = dlmread(f);
    wr(d,:) = topo(:,1);
    tw(d,:) = topo(:,2);
    d = d+1;
end
polo = [mean(polomer); std(polomer)];
zapis = sprintf('m_polo_%i_%i.txt',a,b);
dlmwrite(zapis,polo)
en = [mean(energie); std(energie)];
zapis = sprintf('m_energie_%i_%i.txt',a,b);
dlmwrite(zapis,en)
topo = [mean(wr); std(wr); mean(tw); std(tw)];
zapis = sprintf('m_topo_%i_%i.txt',a,b);
dlmwrite(zapis,topo)