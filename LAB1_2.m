clc;close all;clear all;
C=imread('testimage.jpg');
imshow(C);
Gray=rgb2gray(C);
figure();
imshow(Gray);
figure();
imhist(C);
figure();
imhist(Gray);
figure();
histeq(Gray);
