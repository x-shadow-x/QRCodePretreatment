function [bot_img] = ShadowRecovery(imgfile)
original_img=imread(imgfile);

[x,y,d]=size(original_img);
if d >=3
    gray_img = rgb2gray(original_img);
else
    gray_img = original_img;
end
figure,imshow(gray_img);
title('原图像');
se=strel('disk',64);%产生圆盘型结构元素imbothat
bot_img=imbothat(gray_img,se);%使用底帽变换 imtophat
% bot_img=imbothat(bot_img,se);
figure,imshow(bot_img);
title('使用底帽变换后的图像');
bot_img = histeq(bot_img);%直方图均衡化
bot_img=imbothat(bot_img,se);
figure,imshow(bot_img);
title('灰度级调整');