% Synthetic biosignal processing example.
addpath(fullfile(fileparts(mfilename('fullpath')), 'functions'));
rng(7);
fs = 1000;
x = randn(2,4000);
x = RemoveDC(x);
env = EnvelopeFunction(x(1,:));
z = NormalizeSignal(x);
p = FindAllPSD(x,256,fs);
features = ComputeTimeFeatures(x(1,:)');
disp(features);
assert(all(abs(mean(z,2)-1)<1e-10));
f = (0:size(p,2)-1)*fs/256;
figure;
plot(f,p'); xlabel('Frequency (Hz)'); ylabel('PSD');
