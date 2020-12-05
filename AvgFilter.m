function avg_img=AvgFilter(img)

[h w] = size(img);
padded_img = padarray(img,[1 1],0,'both');
padded_img = double(padded_img);

for i=2:h+1
    for j=2:w+1
        tot = 0;
        for k=i-1:i+1
            for l = j-1:j+1
                tot = tot + padded_img(k,l);
            end
        end
        avg_img(i-1,j-1) = tot/9.0;
    end
end

%imshow([imggray avg_img]);

%avg_img = uint8(avg_img);
%subplot(1,2,1);
%imshow(imggray);
%subplot(1,2,2);
%imshow(avg_img);

end