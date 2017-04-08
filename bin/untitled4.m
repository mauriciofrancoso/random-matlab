PathName='/Users/mauriciofrancoso/Desktop/Universidade/Wayne State University/Wayne State University - USA/AT/Signetron/Job/ARIZONA_DUO/Set1/';
folder = 'Track Test 0';
mkdir(PathName,folder);
save=strcat(PathName,folder);
SaveFile=sprintf('TrackTest_%0.1d',0);
Result= fullfile(save,[sprintf('%s_%0.1d',SaveFile,i) '.jpg']);
fig = figure (i);
%Output the figure
print(fig, '-dpng', Result);