function [] = Program()
clc; 
clear all; 
close all;
[filename pathname filter] = uigetfile('*.jpg','Ñ¡ÔñÍ¼Æ¬ÎÄ¼þ');
if filter == 0
return
end
str = fullfile(pathname,filename);
I = imread(str); 
if strcmp(str(end-4),'1')
    figure,imshow(I);
    title('Ô­Í¼Ïñ');
    img = SimpleRecovery(str);
elseif strcmp(str(end-4),'2')
    figure,imshow(I);
    title('Ô­Í¼Ïñ');
    img = ComplexRecovery(str);
elseif strcmp(str(end-4),'3')
    figure,imshow(I);
    title('Ô­Í¼Ïñ');
    img = ComplexRecovery(str);
elseif strcmp(str(end-4),'4')
    img = ShadowRecovery(str);
elseif strcmp(str(end-4),'5')
    figure,imshow(I);
    title('Ô­Í¼Ïñ');
    img = ComplexRecovery2(str);
elseif strcmp(str(end-4),'6')
    figure,imshow(I);
    title('Ô­Í¼Ïñ');
    img = ComplexRecovery3(str);
else
    figure,imshow(I);
    title('Ô­Í¼Ïñ');
    img = ComplexRecovery(str);
end