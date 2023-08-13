% Read the RGB image
rgbImage = imread('img1.jpg'); % Replace with your image file name

% Convert RGB image to grayscale
grayImage = rgb2gray(rgbImage);

% Display the grayscale image
imshow(grayImage);

% Save the grayscale image
imwrite(grayImage, 'output_grayscale_image.jpg'); % Replace with desired output file name
