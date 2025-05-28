%% Homework 3 QP II

%%Parameters
Pa = 120
Pe = 25
Ra = .2
q= .005
Re = [0.0: .02 : 0.5]

%%RPF Plot

RPF = (Pa-Pe)./(Ra+Re);

P_GC = (Ra.*Pe)+(Re.*Pa)./(Re+Ra);

GFR = q.*RPF.*P_GC;

figure(1);
plot(Re, RPF,'LineWidth', 2 , 'Color', 'Green');
title("RPF with changing Re");
xlabel('Efferent Arteriole Resistance (mmHg*min/mL)');
ylabel('Renal Plasma Flow (mL/min)');

figure(2);
plot(Re, P_GC, 'LineWidth', 2, 'Color', 'Red');
title("P_GC with changing Re");
xlabel('Efferent Arteriole Resistance (mmHg*min/mL)');
ylabel('Hydrostatic Glomerular Pressure (mmHg)');

figure(3);
plot(Re, GFR, 'LineWidth', 2, 'Color', 'Blue');
title("GFR with changing Re");
xlabel('Efferent Arteriole Resistance (mmHg*min/mL)');
ylabel('Glomerular Filtration Rate (mL/min)');








