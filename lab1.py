import cv2

# Load the image
image_path = 'img1.jpg'
image = cv2.imread(image_path)

# Convert the image to grayscale
gray_image = cv2.cvtColor(image, cv2.COLOR_BGR2GRAY)

cv2.imwrite('gray_image.jpg', gray_image)

# Display the binary image
cv2.imshow('Gray Image', gray_image)

# Set a threshold value
threshold_value = 128  # Adjust this value based on your preference

# Apply thresholding to create a binary image
ret, binary_image = cv2.threshold(gray_image, threshold_value, 255, cv2.THRESH_BINARY)

# Invert the binary image (if desired)
binary_image = cv2.bitwise_not(binary_image)

# Save the binary image
cv2.imwrite('binary_image.jpg', binary_image)

# Display the binary image
cv2.imshow('Binary Image', binary_image)
cv2.waitKey(0)
cv2.destroyAllWindows()

