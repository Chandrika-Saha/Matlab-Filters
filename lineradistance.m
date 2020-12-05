
im1 = imread('face1.jpg');
im2 = imread('b.jpg');
normal1 = imghist(im1)/numel(im1);
normal2 = imghist(im2)/numel(im2);
subplot(2,1,1);plot(normal1)
subplot(2,1,2);plot(normal2)
l = sum(abs(normal1-normal2));


