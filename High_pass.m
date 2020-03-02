clc;clear;close all;
a=imread('leena.jfif');
figure
imshow(a);
% %creates a 1x3 array which stores the size of image
imageSize = size(a); 
h=.1*ones(1,10);
g=rgb2gray(a); %grayscale image
o=[];          % an empty array
%each row of the new matrix o is created due to their previous values and convolution between h and each row of grayscale image
h=[2.5 -2.5];
g=rgb2gray(a);
o=[];
for b=1:225
    o=[o;conv(g(b,:),h)];
end
figure
%Showing the final image after filtering.
imshow(mat2gray(o))
       
