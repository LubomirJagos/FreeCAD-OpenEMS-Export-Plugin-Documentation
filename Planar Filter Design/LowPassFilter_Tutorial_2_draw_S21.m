close all
clear
clc

Sim_Path = "tmp";
CSX = InitCSX();

f0 = 2.5*1000000000.0;
fc = 2.0*1000000000.0;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% PORT - portIn - portIn
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
portStart = [0.02269999991345, -10.451732999999482, -1.5350000000000001];
portStop = [0.118473999913609, -10.027592999999445, 0.035];
portR = 50;
portUnits = 1;
portDirection = [0.0 0.0 1.0];
[CSX port{1}] = AddLumpedPort(CSX, 9600, 1, portR*portUnits, portStart, portStop, portDirection , true);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% PORT - portOut - portOut
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
portStart = [50.283337, -10.413620000000002, -1.5350000000000001];
portStop = [50.447102, -10.032825, 0.035];
portR = 50;
portUnits = 1;
portDirection = [0.0 0.0 1.0];
[CSX port{2}] = AddLumpedPort(CSX, 9700, 2, portR*portUnits, portStart, portStop, portDirection);
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
