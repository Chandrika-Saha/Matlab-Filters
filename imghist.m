function h=imghist(img)

%histimg = imread('face.jpg');
grayimg = rgb2gray(img);
reshapedimg = reshape(grayimg,[],1);
reshapedimg = double(reshapedimg);
%subplot(1,2,2);
h = hist(reshapedimg,0:255);
%subplot(1,2,1);imshow(histimg)


end