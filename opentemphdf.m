import matlab.io.hdf4.*
sdID = sd.start('MOD11A1.A2020001.h17v03.006.2020003010405.hdf','read');
[ndatasets,ngatts] = sd.fileInfo(sdID);

%[name,dims,datatype,nattrs] = sd.getInfo(sdsID)
%[label,unit,format,coordsys] = sd.getDataStrs(sdsID)
idx = sd.nameToIndex(sdID,'LST_Day_1km');
sdsID = sd.select(sdID,idx);
data = sd.readData(sdsID);
sd.endAccess(sdsID);
sd.close(sdID);

data = double(data);
data = data.*0.02;
data = data';

heatmap(data);
grid off

csvwrite('testdata.csv', data);

