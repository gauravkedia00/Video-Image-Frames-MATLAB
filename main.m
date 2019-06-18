%Initial Video Reading & conversion into images with respect to frames
vid = VideoReader('C:\Users\ORANE\Downloads\Magic\magic.mp4');
lastFrame = read(vid, inf);
n = vid.NumberOfFrames;

%Iterative processing of each image being created
folder = 'C:\Users\Orane\Downloads\Magic';

for x = 1:1:n        % i = initial value : iteration value(iteration count) : end value
   frames = read(vid,x);
   imwrite(frames,fullfile(folder, sprintf('%06d.jpg', x)));
end

FileList = dir(fullfile(folder, '*.jpg'));
for iFile = 1:length(FileList)
  aFile = fullfile(folder, FileList(iFile).name);
  img   = imread(aFile);
end







