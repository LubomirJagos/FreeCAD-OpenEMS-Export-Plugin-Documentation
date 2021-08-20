close all
clear
clc

Sim_Path = "tmp";
CSX = InitCSX();

f0 = 1.1*1000000000.0;
fc = 1.05*1000000000.0;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% PORT - Et - electric field
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
CSX = AddDump( CSX, 'Et', 'DumpType', 0, 'DumpMode', 2);
dumpStart = [0.0, -1000.0, 91.63462099999998];
dumpStop = [537.9716799999999, 2.118626918345967e-14, 95.41447400000031];
CSX = AddBox( CSX, 'Et', 0, dumpStart, dumpStop );
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% PORT - port in - portIn
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
portStart = [-2.166569999999979, -1000.182892, 0.3524291247465783];
portStop = [537.420959, -993.3952029999998, 200.3524291247466];
portR = 50;
portUnits = 1;
portDirection = [0.0 0.0 1.0];
[CSX port{1}] = AddLumpedPort(CSX, 9900, 1, portR*portUnits, portStart, portStop, portDirection , true);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% PORT - port out - portOut
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
portStart = [-1.4776809999999614, 0.3670010000000005, 0.35242912474615196];
portStop = [539.537537, 2.8350560000002223, 200.35242912474615];
portR = 50;
portUnits = 1;
portDirection = [0.0 0.0 1.0];
[CSX port{2}] = AddLumpedPort(CSX, 10000, 2, portR*portUnits, portStart, portStop, portDirection);
%% postprocessing & do the plots
freq = linspace( max([1e9,f0-fc]), f0+fc, 501 );

port = calcPort( port, Sim_Path, freq);
 
s11 = port{1}.uf.ref./ port{1}.uf.inc;
s21 = port{2}.uf.ref./ port{1}.uf.inc;
 
plot(freq/1e9,20*log10(abs(s11)),'k-','LineWidth',2);
hold on;
grid on;
plot(freq/1e9,20*log10(abs(s21)),'r--','LineWidth',2);
legend('S_{11}','S_{21}');
ylabel('S-Parameter (dB)','FontSize',12);
xlabel('frequency (GHz) \rightarrow','FontSize',12);
ylim([-40 2]);
