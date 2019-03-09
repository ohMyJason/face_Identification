testFaceContainer=zeros(50,10304);
for i=1:50
    
    strPath=('dcw/dcw (');
    j=mat2str(i);
    strPath=strcat(strPath,j);
    strPath=strcat(strPath,').jpg');
    img=imread(strPath);  
    img=rgb2gray(img);      
    img=img';
    img=imresize(img,[112,92]);
    img=im2double(img);
%   imshow(img);
    testFaceContainer(i,:)=img(:);
end

save data/testDcwFaceInfo.mat testFaceContainer;