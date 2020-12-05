function m_img=MedianFilter(img)

[h w] = size(img);
p_img = padarray(img,[1 1],0,'both');
p_img = double(p_img);

for i=2:h+1
    for j=2:w+1
        img_arr = [p_img(i-1,j-1),p_img(i-1,j),p_img(i-1,j+1),p_img(i,j-1),p_img(i,j),p_img(i,j+1),p_img(i+1,j-1),p_img(i+1,j),p_img(i+1,j+1)];
        sorted = sort(img_arr);
        m_img(i-1,j-1) = sorted(5);
    end
end


end