clear all;
clc;close all;
image= imread('testimage.jpg');   %read the image
I = image(:,:,1);
[m,n]= size(I);         % get the dimensions of image
z = zeros(m,n,8);           % pre allocate a variable to store 8 bit planes of the image
for k = 1:8
    for i = 1:m
        for j = 1:n
            z(i,j,k) = bitget(I(i,j),k);    %get kth bit binary value from each pixel 
        end
     end
    
end
figure,imshow(uint8(I));title('Original Image');    %display original image
figure;                                                 %display all the 8 bit planes
    subplot(3,3,1);imshow(z(:,:,8));title('8th(MSB)Plane');
    subplot(3,3,2);imshow(z(:,:,7));title('7th Plane');
    subplot(3,3,3);imshow(z(:,:,6));title('6th Plane');
    subplot(3,3,4);imshow(z(:,:,5));title('5th Plane');
    subplot(3,3,5);imshow(z(:,:,4));title('4th Plane');
    subplot(3,3,6);imshow(z(:,:,3));title('3th Plane');
    subplot(3,3,7);imshow(z(:,:,2));title('2nd Plane');
    subplot(3,3,8);imshow(z(:,:,1));title('1st(LSB)Plane')
   