I1=imread('/Users/mauriciofrancoso/Desktop/Universidade/Wayne State University/Wayne State University - USA/AT/Signetron/Job/ARIZONA_DUO/Set1/leftImg0/leftImg0_1.jpg');
I2=imread('/Users/mauriciofrancoso/Desktop/Universidade/Wayne State University/Wayne State University - USA/AT/Signetron/Job/ARIZONA_DUO/Set1/rightImg0/rightImg0_1.jpg');
disparityMap=disparity(I1,I2);

marker_idx = (disparityMap == -realmax('single'));
disparityMap(marker_idx) = min(disparityMap(~marker_idx));
disparityMap=mat2gray(disparityMap);
imshow(disparityMap)
% % [J1_full, J2_full] = rectifyStereoImages(I1, I2,'OutputView', 'full');