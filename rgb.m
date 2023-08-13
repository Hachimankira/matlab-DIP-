clc
clear all
a = imread('/MATLAB Drive/DIP/image1.jpg');

% Display the original image
subplot(2,2,1)
imshow(a);
title('Original image');

% Create separate color channels for the original image
redImage = a;
redImage(:, :, 2:3) = 0; % Set green and blue channels to 0
subplot(2,2,2)
imshow(redImage);
title("Red image")

greenImage = a;
greenImage(:, :, [1, 3]) = 0; % Set red and blue channels to 0
subplot(2,2,3)
imshow(greenImage);
title("Green image")

blueImage = a;
blueImage(:, :, 1:2) = 0; % Set red and green channels to 0
subplot(2,2,4)
imshow(blueImage);
title("Blue image")

% Save each image
saveas(gcf, 'original_image.png'); % Saves the original image

