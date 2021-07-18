clear all; close all; clc;

% ask users how many images they want
prompt = 'How many images?';
images = input(prompt)

for i = 1:images;

    % ask user the number of dots on screen
    prompt = 'How many dots? ';
    numPoints = input(prompt)

    % make the figure full screen
    %FigH = figure('Position', get(0, 'Screensize'),'visible','off'); %remove 'visible','off'if you would like to display the figure
    FigH = figure('Position',[400 400 400 400],'visible','off');
    % generate dots
    x = rand(1, numPoints);
    y = rand(1, numPoints);
    sz =25; %MarkerSize
    % plot white dots
    plot(x, y, 'k.','MarkerSize',sz);
    pbaspect([1 1 1]) % control the ratio of the axis, it is square here
    
    % make plot background white
    set(gca,'Color','w')
    % remove axis in plot
    set(gca,'XColor','none','YColor','none','TickDir','out') 
    % make background white
    set(gcf,'color','w')

    % save images
        % name of the file
        word1 = num2str(numPoints);
        word3 = '.jpg';
        str = strcat(word1, word3);
        % specify the directory to save images
        imagepath = pwd; % <path to store image>
        baseFileName = sprintf(str);
        fullFileName = fullfile(imagepath, 'data', baseFileName);  
    F = getframe(FigH);
    imwrite(F.cdata,  fullFileName)
    
end;