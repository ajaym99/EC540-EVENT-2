clc;
clear;
close all;
%Normalised gain
%G
 
G = tf([0 0 100],[1 12 100]);
disp(stepinfo(G));

figure;
subplot(121)
r=stepplot(G,'b');
grid on;
r.showCharacteristic('PeakResponse')
r.showCharacteristic('RiseTime')
r.showCharacteristic('SettlingTime');
r.showCharacteristic('SteadyState');
 
subplot(122)
pzplot(G,'r')
poleZeroMap = findobj(gca, 'Type', 'Line');
poleZeroMap(3).MarkerSize = 20;
grid on;
grid minor;
sgtitle('Response for Transfer function without additional Zero in it','FontWeight','Bold')

 
%G1
 
G1 = tf([100 600], [6 72 600]);
disp(stepinfo(G1));
figure;
subplot(121)
r=stepplot(G1,'b');
grid on;
r.showCharacteristic('PeakResponse')
r.showCharacteristic('RiseTime')
r.showCharacteristic('SettlingTime');
r.showCharacteristic('SteadyState');
 
subplot(122)
pzplot(G1,'r')
poleZeroMap = findobj(gca, 'Type', 'Line');
poleZeroMap(3).MarkerSize = 20;
grid on;
grid minor;
sgtitle('Response for Transfer function with additional Zero with a = ζωn = 6','FontWeight','Bold')

 
%G2
 
G2 = tf([100 1200],[12 144 1200]);
disp(stepinfo(G2));
figure;
subplot(121)
r=stepplot(G2,'b');
grid on;
r.showCharacteristic('PeakResponse')
r.showCharacteristic('RiseTime')
r.showCharacteristic('SettlingTime');
r.showCharacteristic('SteadyState');
 
subplot(122)
pzplot(G2,'r')
poleZeroMap = findobj(gca, 'Type', 'Line');
poleZeroMap(3).MarkerSize = 20;
grid on;
grid minor
sgtitle('Response for Transfer function with additional Zero with a = 2ζωn = 12','FontWeight','Bold')

 
%G3
 
G3 = tf([100 -600],[-6 -72 -600]);
disp(stepinfo(G3));
figure();
subplot(121)
r=stepplot(G3,'b');
grid on;
r.showCharacteristic('PeakResponse')
r.showCharacteristic('RiseTime')
r.showCharacteristic('SettlingTime');
r.showCharacteristic('SteadyState');
 
subplot(122)
pzplot(G3,'r')
poleZeroMap = findobj(gca, 'Type', 'Line');
poleZeroMap(3).MarkerSize = 20;
grid on;
grid minor;
sgtitle('Response for Transfer function with additional Zero with a = -ζωn = -6','FontWeight','Bold')

 
%G4
 
G4 = tf([100 6000],[60 720 6000]);
disp(stepinfo(G4));
figure();
subplot(121)
r=stepplot(G4,'b');
grid on;
r.showCharacteristic('PeakResponse')
r.showCharacteristic('RiseTime')
r.showCharacteristic('SettlingTime');
r.showCharacteristic('SteadyState');
 
subplot(122)
pzplot(G4 ,'r')
poleZeroMap = findobj(gca, 'Type', 'Line');
poleZeroMap(3).MarkerSize = 20;
grid on;
grid minor;
sgtitle('Response for Transfer function with additional Zero with a = 10ζωn = 60','FontWeight','Bold')