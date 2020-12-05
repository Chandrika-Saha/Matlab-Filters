function min_img=minFilter(img)

[h w] = size(img);
p_img = padarray(img,[1 1],0,'both');
p_img = double(p_img);

for i=2:h+1
    for j=2:w+1
        img_arr = [p_img(i-1,j-1),p_img(i-1,j),p_img(i-1,j+1),p_img(i,j-1),p_img(i,j),p_img(i,j+1),p_img(i+1,j-1),p_img(i+1,j),p_img(i+1,j+1)];
        minn = min(img_arr);
        min_img(i-1,j-1) = minn;
    end
end


end