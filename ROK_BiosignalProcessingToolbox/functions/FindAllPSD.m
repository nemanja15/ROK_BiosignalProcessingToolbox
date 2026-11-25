function AllPSD = FindAllPSD(Input,n_fft,fs)
n_channels = size(Input,1);
AllPSD = [];
for n=1:n_channels
    PSDNow = pwelch(Input(n,:),hamming(n_fft),[],n_fft,fs);
    AllPSD(n,:) = PSDNow;
end
end