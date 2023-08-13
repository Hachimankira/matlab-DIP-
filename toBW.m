clc
clear all
a = imread('/MATLAB Drive/DIP/image1.jpg');
subplot(1,3,1)
imshow(a);
title('original image');

b = rgb2gray(a);
subplot(1,3,2)
imshow(b);
title('gray image');

c = im2bw(b);
subplot(1,3,3)
imshow(c);
title('BW image');
saveas(gcf, 'original_image.png'); % Saves the original image