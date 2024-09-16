clc;
clear;
close all;
I = imread('image reference.jpg');
hx = [-1 0 1; -1 0 1; -1 0 1];
hy = [-1 -1 -1; 0 0 0; 1 1 1];
figure 
imshow(I)
title('org')
xkernel = conv2(I,hx,'same');
figure
imshow(xkernel);
title('x')
ykernel = conv2(I,hy,'same');
figure
imshow(ykernel);
title('y')