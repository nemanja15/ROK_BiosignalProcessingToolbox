function Normalized = NormalizeSignal(Input)
    Normalized = [];
    for m=1:size(Input,1)
        SignalNow = Input(m,:);
        Envelope = abs(hilbert(SignalNow)); 
        Normalized(m,:) = Envelope/mean(Envelope);
    end
    
end