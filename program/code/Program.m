function [] = Program()
clc; 
clear all; 
close all;
[filename pathname filter] = uigetfile('*.jpg','ѡ��ͼƬ�ļ�');
if filter == 0
return
end
str = fullfile(pathname,filename);
I = imread(str); 
if strcmp(str(end-4),'1')
    figure,imshow(I);
    title('ԭͼ��');
    img = SimpleRecovery(str);
elseif strcmp(str(end-4),'2')
    figure,imshow(I);
    title('ԭͼ��');
    img = ComplexRecovery(str);
elseif strcmp(str(end-4),'3')
    figure,imshow(I);
    title('ԭͼ��');
    img = ComplexRecovery(str);
elseif strcmp(str(end-4),'4')
    img = ShadowRecovery(str);
elseif strcmp(str(end-4),'5')
    figure,imshow(I);
    title('ԭͼ��');
    img = ComplexRecovery2(str);
elseif strcmp(str(end-4),'6')
    figure,imshow(I);
    title('ԭͼ��');
    img = ComplexRecovery3(str);
else
    figure,imshow(I);
    title('ԭͼ��');
    img = ComplexRecovery(str);
end