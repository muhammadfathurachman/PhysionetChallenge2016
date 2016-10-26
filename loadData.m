function spectro = loadData(dirA)
main = dirA;
file = '*.wav';
%dirA = 'H:\\THESIS\\DATA\\training-a\';
%dira = 'H:\\THESIS\\DATA\\training-a\\';
namaFile = readData(strcat(main,file));
%clear dirA;

% Read Audio File in matlab
[r c] = size(namaFile);
spectro = {};
duration = 10;

for i = 1:c
    info = audioinfo(strcat(dirA,namaFile{i}));
    time = info.Duration;
    sample =[1,2*info.SampleRate];
    [x fs] =  audioread(strcat(main,namaFile{i}),sample); 
    spectro{i} = spectrogram(x,512);
end
clear x fs sample time info i duration r c namaFile;
end


