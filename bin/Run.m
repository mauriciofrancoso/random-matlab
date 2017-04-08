function Run( PathName, )
%UNTITLED6 Summary of this function goes here
%   Detailed explanation goes here
%At this function we will put the pathname of the local that have the
%both folders:
%-'disparityImg6' folder that have all frames of disparity.
%-'leftImg6' folder that have all frames of left image.
%

%It will get how many jpg frames you have inside the folder 'disparityImg5'
%and will assume we have the same numbers for the 'leftImg5', once the both
%come from the same video.

D = dir(fullfile(PathName,'disparityImg1','/*.jpg'));
Num = length(D(not([D.isdir])));


%It will create a folder to store all the jpg result images

mkdir(PathName,'Analyse_2');
analyse=strcat(PathName,'Analyse_2');

%It will run trhough each pair 'disparityImg5' 'leftImg5' and will run
%Mohini's algorithm findSteam with verbose or not and will save all
%generated pictures

for i=1:Num
    filename_disparity = [sprintf('disparityImg2_%0.0d',i) '.jpg'];
    depthImg1=fullfile(PathName,'disparityImg2',filename_disparity);


    filename_left = [sprintf('leftImg2_%0.0d',i) '.jpg'];
    lightImg1=fullfile(PathName,'leftImg2',filename_left);
    
    close all
    
    
    findStem(depthImg1,lightImg1, false);
    
    folder=sprintf('Frame_%0.0d',i);
    
    mkdir(analyse,folder);
    
    
    
    % To save all results
    
    for f = 1:2
        fig = figure (f);
        %Output the figure
        filename = sprintf('Figure%02d.png', f);
        
        fullname= fullfile(analyse,folder,filename);
        print(fig, '-dpng', fullname);

    end

end

