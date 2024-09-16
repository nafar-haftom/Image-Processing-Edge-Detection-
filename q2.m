clc;
clear;
close all;
h = fspecial('gaussian',3,5)
I = imread('image reference.jpg');
subplot(1,2,1)
imshow(I);
title('orginal')
MotionBlur = imfilter(I,h,'replicate');
subplot(1,2,2)
imshow(MotionBlur);
title('filtered')
