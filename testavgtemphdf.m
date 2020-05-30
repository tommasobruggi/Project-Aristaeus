import matlab.io.hdf4.*

filename = {'MOD11A1.A2020122.h18v03.006.2020126011159.hdf'
'MOD11A1.A2020123.h18v03.006.2020126024121.hdf'
'MOD11A1.A2020124.h18v03.006.2020126203559.hdf'
'MOD11A1.A2020125.h18v03.006.2020126204035.hdf'
'MOD11A1.A2020126.h18v03.006.2020127084633.hdf'
'MOD11A1.A2020127.h18v03.006.2020128085124.hdf'
'MOD11A1.A2020128.h18v03.006.2020129085356.hdf'
'MOD11A1.A2020129.h18v03.006.2020130085042.hdf'
'MOD11A1.A2020130.h18v03.006.2020131084434.hdf'
'MOD11A1.A2020131.h18v03.006.2020132091216.hdf'
'MOD11A1.A2020132.h18v03.006.2020133084626.hdf'
'MOD11A1.A2020133.h18v03.006.2020134090219.hdf'
'MOD11A1.A2020134.h18v03.006.2020135085103.hdf'
'MOD11A1.A2020135.h18v03.006.2020136084654.hdf'
'MOD11A1.A2020136.h18v03.006.2020139053747.hdf'
'MOD11A1.A2020137.h18v03.006.2020139055637.hdf'
'MOD11A1.A2020138.h18v03.006.2020139121844.hdf'
'MOD11A1.A2020139.h18v03.006.2020140085331.hdf'
'MOD11A1.A2020140.h18v03.006.2020141091943.hdf'
'MOD11A1.A2020141.h18v03.006.2020142093453.hdf'
'MOD11A1.A2020142.h18v03.006.2020143090712.hdf'
'MOD11A1.A2020143.h18v03.006.2020144085126.hdf'
'MOD11A1.A2020144.h18v03.006.2020145083943.hdf'
'MOD11A1.A2020145.h18v03.006.2020146084416.hdf'
'MOD11A1.A2020146.h18v03.006.2020148034957.hdf'
'MOD11A1.A2020147.h18v03.006.2020148092019.hdf'
'MOD11A1.A2020148.h18v03.006.2020149085059.hdf'
};

m = length(filename);

data = [];
datasets = NaN([1200,1200,m]);

for ii = 1:m
sdID = sd.start(filename{ii},'read');
[ndatasets,ngatts] = sd.fileInfo(sdID);
idx = sd.nameToIndex(sdID,'LST_Night_1km'); %change this to night if required
sdsID = sd.select(sdID,idx);
rawdata = sd.readData(sdsID);
sd.endAccess(sdsID);
sd.close(sdID);
rawdata = double(rawdata);
rawdata = rawdata';
rawdata = rawdata.*0.02;
datasets(:,:,ii) = rawdata;

end


avg_temp = NaN(1200);
  for ii = 1:1200
       for jj = 1:1200
           if any(datasets(ii,jj,:) ~= 0)
               casetest = datasets(ii,jj,:);
               c = casetest(casetest > 0);
               cx = mean(c,'omitnan');
               avg_temp(ii,jj) = cx;
           end   
            if ~isnan(avg_temp(ii,jj))
                avg_temp(ii,jj) = avg_temp(ii,jj) - 273.15;
            end
       end
  end

  
 %heatmap(avg_temp);
 %grid off
 
 csvwrite('EastMay_nighttimetemp_avg.csv', avg_temp); %change file name


