function [bot_img] = ShadowRecovery(imgfile)
original_img=imread(imgfile);

[x,y,d]=size(original_img);
if d >=3
    gray_img = rgb2gray(original_img);
else
    gray_img = original_img;
end
figure,imshow(gray_img);
title('ԭͼ��');
se=strel('disk',64);%����Բ���ͽṹԪ��imbothat
bot_img=imbothat(gray_img,se);%ʹ�õ�ñ�任 imtophat
% bot_img=imbothat(bot_img,se);
figure,imshow(bot_img);
title('ʹ�õ�ñ�任���ͼ��');
bot_img = histeq(bot_img);%ֱ��ͼ���⻯
bot_img=imbothat(bot_img,se);
figure,imshow(bot_img);
title('�Ҷȼ�����');