% test MSS-Estimators

clear; clc;
clean=audioread('clean.wav');

noisy=audioread('noisy.wav');
map=audioread('map_op.wav');
spzc=audioread('mmse_op.wav');
ssvad=audioread('Enhanced-Speech-Data ssvad.wav');


figure(1)
subplot(5,1,1);
plot(clean);
xlabel('Time in seconds');
ylabel('Amplitude');
title('Clean speech signal');



subplot(5,1,2);
plot(noisy);
xlabel('Time in seconds');
ylabel('Amplitude');
title('Noisy speech signal');

subplot(5,1,3);
plot(map);
xlabel('Time in seconds');
ylabel('Amplitude');
title('Enhanced speech signal from MAP method');

subplot(5,1,4);
plot(spzc);
xlabel('Time in seconds');
ylabel('Amplitude');
title('Enhanced speech signal from MMSE-SPZC method');

subplot(5,1,5);
plot(ssvad);
xlabel('Time in seconds');
ylabel('Amplitude');
title('Enhanced speech signal from SSVAD method');

