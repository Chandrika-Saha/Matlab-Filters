function colorToBinary

img = imread('face1.jpg');
imggray = rgb2gray(img);

minvalue = min(imggray(:));
maxvalue = max(imggray(:));
avg = (minvalue+maxvalue)/2;

[row col] = size(imggray);
for i=1:row
    for j=1:col
        if imggray(i,j) >= avg
            binaryimg(i,j) = 1;
        else
            binaryimg(i,j) = 0;
        end
    
    end
end
figure,
subplot(3,2,1);imshow(img)
subplot(3,2,2);imshow(imggray)
subplot(3,2,3);imshow(binaryimg)
subplot(3,2,4);
%subplot(2,1,1);
plot(imghist(img))
%subplot(2,1,2)
%subplot(3,2,5);
%imhist(imggray)


end