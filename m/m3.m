img = imread("../logo.jpg");
fli = flipper(img);
subplot(2,2,[1,2])
imshow(img)
title("Original Image")
subplot(2,2,[3,4])
imshow(fli)
title("Flipped Image")

function [flipped] = flipper(image)
flipped = fliplr(image);
end
