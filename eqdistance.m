
im1 = imread('face.jpg');
im2 = imread('off.png');
normal1 = imghist(im1)/numel(im1);
normal2 = imghist(im2)/numel(im2);
subplot(2,1,1);plot(normal1)
subplot(2,1,2);plot(normal2)
e = sum(sqrt(abs(normal1-normal2).^2));


