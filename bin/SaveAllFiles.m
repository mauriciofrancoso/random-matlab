mkdir(PathName,'Analyse_0');

for f = 1:11
      fig = figure (f);
      % Output the figure
      filename = sprintf('Figure%02d.jpg', f);
      
      fullname= fullfile(PathName,'Analyse_0',filename);
      imwrite(img_gray,fullname)    % Write out to a JPEG file (img1.jpg, img2.jpg, etc.)

end