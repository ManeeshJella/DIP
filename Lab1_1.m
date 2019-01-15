clc;close all;clear all;
C=imread('testimage.jpg');
imshow(C);
Gray=rgb2gray(C);
figure();
imshow(Gray);
r=C(:,:,1);
g=C(:,:,2);
b=C(:,:,3);
z = zeros(size(C),class(C));
redimage=z;greenimage=z;blueimage=z;
redimage(:,:,1)=r;
blueimage(:,:,2)=b;
greenimage(:,:,3)=g;
figure();
imshow(redimage);
figure();
imshow(blueimage);
figure();
imshow(greenimage);


