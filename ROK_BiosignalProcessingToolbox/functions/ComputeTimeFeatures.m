function AllFeatures = ComputeTimeFeatures(Input)
AllFeatures = [];
AllFeatures(1) = skewness(Input);
AllFeatures(2) = kurtosis(Input);
[activity, mobility, complexity] = HjorthParameters(Input);
AllFeatures(3:5) = [activity, mobility, complexity];
AllFeatures(6) = mean(Input);
AllFeatures(7) = std(Input);
AllFeatures(8) = trapz(Input);
AllFeatures(9) = mean(abs(Input));
AllFeatures(10) = rms(Input);

dt = diff((1:length(Input))); 
dx = diff(Input) ; 
slope = dx./dt' ; 
AllFeatures(11) = mean(slope); 
AllFeatures(12) = std(slope); 

end