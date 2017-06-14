function createChannelMapFile(fpath)
%createChannelMapFile  Create a chanMap file for a KiloSort simulation.

Nchannels   = 64;
connected   = true(Nchannels, 1);
chanMap     = 1:Nchannels;
chanMap0ind = chanMap - 1;
xcoords     = ones(1,Nchannels); % all channels in same x-coord
ycoords     = ones(1,Nchannels); % all channels in same y-coord
kcoords     = ones(1,Nchannels); % grouping of channels (i.e. tetrode groups)

fs = 24414; % sampling frequency

save(fullfile(fpath, 'chanMap.mat'), ...
    'chanMap','connected', 'xcoords', 'ycoords', 'kcoords', 'chanMap0ind','fs')
end
