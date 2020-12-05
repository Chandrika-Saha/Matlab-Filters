function MedianImg

imgf = imread('b.jpg');
[h w] = size(imgf);
imgr = imgf(:,:,1);
imgg = imgf(:,:,2);
imgb = imgf(:,:,3);

imgr = double(imgr);
imgg = double(imgg);
imgb = double(imgb);

med_img(:,:,1) = MedianFilter(imgr);
med_img(:,:,2) = MedianFilter(imgg);
med_img(:,:,3) = MedianFilter(imgb);
med_img = uint8(med_img);
%subplot(1,2,1);
imshow([imgf med_img]);
%subplot(1,2,2);
%imshow(avg_img);

end