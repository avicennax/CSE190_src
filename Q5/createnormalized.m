%Run in ~/caffe
trainID = fopen('~/caffe/data/trainnorm.txt','w');
testID = fopen('~/caffe/data/testnorm.txt','w');

testsource = fopen('~/caffe/data/test.txt','r');
trainsource = fopen('~/caffe/data/train.txt','r');
imgcount = 0;

line = fgetl(testsource);
while ischar(line)
  f = strsplit(line, ' ');
  fname = char(f(1:1));
  X = imread(fname);
  a = min(X(:));
  b = max(X(:));
  X = (X-a) .* (255/(b-a));
  label = char(f(2:2));
  imwrite(X, strcat('~/caffe/images/norm/test/image_', int2str(imgcount), '.png'));
  fprintf(testID, 'images/norm/test/image_%d.png %s\n', imgcount, label);
  imgcount = imgcount + 1;
  line = fgetl(testsource);
end

imgcount = 0;
line = fgetl(trainsource);
while ischar(line)
  f = strsplit(line, ' ');
  fname = char(f(1:1));
  X = imread(fname);
  a = min(X(:));
  b = max(X(:));
  X = (X-a) .* (255/(b-a));
  label = char(f(2:2));
  imwrite(X, strcat('~/caffe/images/norm/train/image_', int2str(imgcount), '.png'));
  fprintf(trainID, 'images/norm/train/image_%d.png %s\n', imgcount, label);
  imgcount = imgcount + 1;
  line = fgetl(trainsource);
end
