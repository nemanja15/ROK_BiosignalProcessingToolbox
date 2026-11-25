function FilteredChannels1 = RemoveDC(Filtered)
n_channels = size(Filtered,1);
FilteredChannels1 = [];
for c=1:n_channels
    FilteredChannels1(c,:) = Filtered(c,:)-mean(Filtered(c,:));
end
end
