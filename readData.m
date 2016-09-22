function recordName = readData(dirA)

%% Read Directory
%dirA = 'H:\\THESIS\\DATA\\training-a\*.wav';
dataA = dir(dirA);
[r c] = size(dataA);
clear c dirA dirB dirC dirD dirE dirF;
recordName = {};
for i = 1:r
    recordName{i}= dataA(i).name;
end
clear i r;

end

