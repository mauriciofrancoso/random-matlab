function [ depthMovie_filtered] = FinalFilter( depthMovie )

[row,col,depth]=size(depthMovie);

for i=1:depth
    [ ~, pixel_labels, ~] = FilterSky( depthMovie(:,:,i));
    a(:,:,i)=pixel_labels;
    for j=1:col
        for i=1:row
            if a(
            end
        end
        

