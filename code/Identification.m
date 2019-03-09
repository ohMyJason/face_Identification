function [ansImg,ans]=Identification(imgdata)
% load data/net2.mat   %k40
% load data/v.mat
load data/netK50.mat
load data/k50PCA.mat
imgdata=rgb2gray(imgdata);      
imgdata=imgdata';
imgdata=imresize(imgdata,[112,92]);
imgdata=im2double(imgdata);
imgdata=imgdata(:);
imgdata=imgdata';
imgdata=imgdata*V;
imgdata=imgdata';
%%ÅĞ¶Ï
testAn=sim(net,imgdata);
out=find(testAn==max(testAn));
if out==1
    ansImg=imread('answl.jpg');
    ans='ÎºÀÚ';
end
if out==2
    ansImg=imread('ansdcw.jpg');
    ans='µË³ÌÎ¬';
end
if out==3
   ansImg=imread('ansljs.jpg');
   ans='Áõ¼Ñ•N';
end
end
