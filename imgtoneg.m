function colorToNeg

img = imread('face1.jpg');
imggray = rgb2gray(img);
imggray = double(imggray);
negimg = 255-imggray;
negimg = uint8(negimg);
imggray = uint8(imggray);
imshow([imggray negimg]);


end