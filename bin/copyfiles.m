function copyfiles(PathName)

D = dir(PathName);
Num = length(D(([D.isdir])));


mkdir(PathName,'Analyse0_results');

for i=1:Num
    
    copy=fullfile(PathName,sprintf('Frame_%0.0d',i),'Figure02.png');
    paste=fullfile(PathName,'Analyse0_results',sprintf('Frame_%0.0d',i));
    
    
    copyfile(copy,paste);
end
end