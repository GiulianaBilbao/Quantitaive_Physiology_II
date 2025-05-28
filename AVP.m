

DAVP = 6*10^-11;

D = 2*10^-11;

q = 5*10^-14;

l = (0:.0001:.0015);

for i= 1:length(l)
    C1_D(i) = 1000*exp(l(i)*(-D/q));
    C1_DV(i) = 1000*exp(l(i)*(-DAVP/q));
end


for i= 1:length(l)
    C2_D(i) = 301.2*exp((l(i))*(D/q));
    C2_DV(i) = 92.72*exp((l(i))*(DAVP/q));
end

figure(1);
    plot(l*1000,C2_D);
    title('Descending with and without AVP')
    xlabel('Length (mm)')
    ylabel('Concentration (mM)')

    hold on;
    plot(l*1000,C2_DV);
    legend('Without AVP', 'With AVP')
    hold off;

figure(2);
    plot(l*1000,C1_DV);
    title('Ascending Duct');
    xlabel('Length (mm)');
    ylabel('Concentration (mM)');