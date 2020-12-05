function minImg

imgf = imread('face1.jpg');
[h w] = size(imgf);
imgr = imgf(:,:,1);
imgg = imgf(:,:,2);
imgb = imgf(:,:,3);

imgr = double(imgr);
imgg = double(imgg);
imgb = double(imgb);

min_img(:,:,1) = minFilter(imgr);
min_img(:,:,2) = minFilter(imgg);
min_img(:,:,3) = minFilter(imgb);
min_img = uint8(min_img);
%subplot(1,2,1);
imshow([imgf min_img]);
%subplot(1,2,2);
%imshow(avg_img);

end