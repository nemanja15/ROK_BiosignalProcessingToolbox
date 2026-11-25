function [activity,mobility,complexity] = HjorthParameters(x)
% New compatibility helper; variance-based Hjorth definitions.
x=x(:); activity=var(x); mobility=sqrt(var(diff(x))/activity);
complexity=sqrt(var(diff(x,2))/var(diff(x)))/mobility;
end
