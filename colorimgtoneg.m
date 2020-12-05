function colorimgtoneg

img = imread('face1.jpg');
img = double(img);
img_neg(:,:,1) = 255 - img(:,:,1);
img_neg(:,:,2) = 255 - img(:,:,2);
img_neg(:,:,3) = 255 - img(:,:,3);
img_neg = uint8(img_neg);
img = uint8(img);
imshow([img img_neg]);


end