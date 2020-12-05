function AvgColorFilter

imgf = imread('col.jpg');
[h w] = size(imgf);
imgr = imgf(:,:,1);
imgg = imgf(:,:,2);
imgb = imgf(:,:,3);

imgr = double(imgr);
imgg = double(imgg);
imgb = double(imgb);

avg_img(:,:,1) = AvgFilter(imgr);
avg_img(:,:,2) = AvgFilter(imgg);
avg_img(:,:,3) = AvgFilter(imgb);
avg_img = uint8(avg_img);
subplot(1,2,1);
imshow(imgf);
subplot(1,2,2);
imshow(avg_img);

end