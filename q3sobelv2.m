clc;
clear;
close all;
hx = [-1 0 1; -2 0 2; -1 0 1];
hy = [-1 -2 -1; 0 0 0; 1 2 1];
I = imread('image reference.jpg');
MotionBlur1 = conv2(I,hx,'same');
figure 
imshow(I)
title('org')
figure
imshow(MotionBlur1);
title('xsobel')
MotionBlur2 = conv2(I,hy,'same');
figure
imshow(MotionBlur2);
title('ysobel')
figure
final = sqrt(MotionBlur1.^2 + MotionBlur2.^2);
imshow(final,[])
title('final')

