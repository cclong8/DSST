clear,clc
obj = VideoReader('D:\Matlab_codes\DSST-main\video\IMG_6823.MOV');%输入视频位置
numFrames = obj.NumFrames;% 帧的总数

for i=1:numFrames
   matrixRGB = read(obj,i);% 读取第几帧
   matrixGray = rgb2gray(matrixRGB);
   matrix = imresize(matrixGray,1/12);
   if i<10
   imwrite(uint8(matrix),strcat('D:\Matlab_codes\DSST-main\sequences\IMG_6823\imgs\img0000',int2str(i),'.jpg'));
   end
   if i>=10&&i<100
   imwrite(uint8(matrix),strcat('D:\Matlab_codes\DSST-main\sequences\IMG_6823\imgs\img000',int2str(i),'.jpg'));
   end
   if i>=100&&i<1000
   imwrite(uint8(matrix),strcat('D:\Matlab_codes\DSST-main\sequences\IMG_6823\imgs\img00',int2str(i),'.jpg'));
   end
   if i>=1000&&i<10000
   imwrite(uint8(matrix),strcat('D:\Matlab_codes\DSST-main\sequences\IMG_6823\imgs\img0',int2str(i),'.jpg'));
   end
   if i>=10000&&i<100000
   imwrite(uint8(matrix),strcat('D:\Matlab_codes\DSST-main\sequences\IMG_6823\imgs\img',int2str(i),'.jpg'));
   end
end

