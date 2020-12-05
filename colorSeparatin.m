img = imread('fff.jpg');
imgr = img(:,:,1);
imgg = img(:,:,2);
imgb = img(:,:,3);

subplot(2,2,1)
imshow(img);
subplot(2,2,2)
imshow(imgr);
subplot(2,2,3)
imshow(imgg);
subplot(2,2,4)
imshow(imgb);