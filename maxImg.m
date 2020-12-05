function maxImg

imgf = imread('face1.jpg');
[h w] = size(imgf);
imgr = imgf(:,:,1);
imgg = imgf(:,:,2);
imgb = imgf(:,:,3);

imgr = double(imgr);
imgg = double(imgg);
imgb = double(imgb);

max_img(:,:,1) = maxFilter(imgr);
max_img(:,:,2) = maxFilter(imgg);
max_img(:,:,3) = maxFilter(imgb);
max_img = uint8(max_img);
%subplot(1,2,1);
imshow([imgf max_img]);
%subplot(1,2,2);
%imshow(avg_img);

end