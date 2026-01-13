function [bm, patch] = Image_Vector(X)
% patch 60x80
%Converts image into a single column for each band from 1 to max band number
dim_image = size(X);
%bm=ones(dim_image(1)*dim_image(2),dim_image(3));    % ones of  size
for i=1:dim_image(3)                                % from 1 to 220
    temp = X(:,:,i);                                  % extracting image in each band
    patch1 = X(1:60,1:80,i);
    patch1 = patch1(:);
    temp = temp(:);                                   % arranging everything into one column for each band 21025*1 size 
    bm(:,i)= temp;                                   % Each column of bm(of 1's) replaced by previously update columns=temp, 
    patch(:,i) = patch1;
end
bm = bm(:);
patch = patch(:);
end