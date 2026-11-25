function Output = EnvelopeFunction(Input)
Output = abs(hilbert(Input-mean(Input)));
end