%Run in ~/caffe

testData = load('~/caffe/data/cifar100/cifar-100-matlab/test.mat');
trainData = load('~/caffe/data/cifar100/cifar-100-matlab/train.mat');

test = testData.data;
train = trainData.data;

testLabels = testData.fine_labels;
trainLabels = trainData.fine_labels;

trainlen = length(train);
testlen = length(test);

%Save images to images/test and images/train
%Writing to text files
disp('Creating test and training images');
disp('Writing to data/test.txt and data/train.txt');

trainID = fopen('~/caffe/data/train.txt','w');
testID = fopen('~/caffe/data/test.txt','w');

for i = 1:testlen
  im = permute(reshape(test(i,:),32,32,3),[2,1,3]);
  imwrite(im, strcat('~/caffe/images/test/image_',int2str(i),'.png'));
  fprintf(testID, 'images/test/image_%d.png %d\n', i, testLabels(i));
end

for i = 1:trainlen
  im = permute(reshape(train(i,:),32,32,3),[2,1,3]);
  imwrite(im, strcat('~/caffe/images/train/image_',int2str(i),'.png'));
  fprintf(trainID, 'images/train/image_%d.png %d\n', i, trainLabels(i));
end
