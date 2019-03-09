FaceContainer=zeros(900,10304);
%∂¡wl’’∆¨    
for i=1:300
    if i<=100
    strPath=('Data_3/S1/IMG_20181224_223854_BURST');
    j=mat2str(i);
    end
    if  i>100 && i<=200 
    strPath=('Data_3/S1/IMG_20181224_223905_BURST');       
    j=mat2str(i-100);
    end
    if i>200 && i<=300 
    strPath=('Data_3/S1/IMG_20181224_223920_BURST');
    j=mat2str(i-200);
    end
    
    strPath=strcat(strPath,j);
    strPath=strcat(strPath,'.jpg');
    img=imread(strPath);  
    img=rgb2gray(img);      
    img=img';
    img=imresize(img,[112,92]);
    img=im2double(img);
%     imshow(img);
    FaceContainer(i,:)=img(:);
end
%∂¡dcwµƒ’’∆¨
for i=1:300
    if i<=100
    strPath=('Data_3/S2/IMG_20181224_224131_BURST');
    j=mat2str(i);
    end
    if  i>100 && i<=200 
    strPath=('Data_3/S2/IMG_20181224_224142_BURST');       
    j=mat2str(i-100);
    end
    if i>200 && i<=300 
    strPath=('Data_3/S2/IMG_20181224_224154_BURST');
    j=mat2str(i-200);
    end
    
    strPath=strcat(strPath,j);
    strPath=strcat(strPath,'.jpg');
    img=imread(strPath);  
    img=rgb2gray(img);      
    img=img';
    img=imresize(img,[112,92]);
    img=im2double(img);
%     imshow(img);
    FaceContainer((300+i),:)=img(:);
end
%∂¡ljsµƒ’’∆¨
for i=1:300
    
    strPath=('Data_3/S3/ljs (');
    j=mat2str(i);
    strPath=strcat(strPath,j);
    strPath=strcat(strPath,').jpg');
    img=imread(strPath);  
    img=rgb2gray(img);      
    img=img';
    img=imresize(img,[112,92]);
    img=im2double(img);
%     imshow(img);
    FaceContainer((600+i),:)=img(:);
end

lable=zeros(3,900);
for j=1:300;
    lable(1,j)=1;
end
for j=301:600;
    lable(2,j)=1;
end
for j=601:900;
    lable(3,j)=1;
end
[pcaA V] = fastPCA(FaceContainer,40);
% pcaA=pcaA';

save threefaceInfo.mat lable FaceContainer pcaA V;
