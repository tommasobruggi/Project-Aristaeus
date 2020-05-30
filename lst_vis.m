import matlab.io.hdf4.*
sdID = sd.start('data/testdatatemp.hdf','read');
[ndatasets,ngatts] = sd.fileInfo(sdID);
idx = sd.nameToIndex(sdID,'LST_Day_1km');
sdsID = sd.select(sdID,idx);
[name,dims,datatype,nattrs] = sd.getInfo(sdsID);
[label,unit,format,coordsys] = sd.getDataStrs(sdsID);
data = sd.readData(sdsID);
sd.endAccess(sdsID);
sd.close(sdID);
data = double(data);
data = data.*0.02; %scale factor
data = data'; %transpose to get correct orientation of the map
h = heatmap(data); %create a heatmap
h.Colormap = parula;
grid off %remove the grid so you can actually save the data
csvwrite('csv_files/testdata.csv', data); %export to a csv file
savefig('maps/lst');