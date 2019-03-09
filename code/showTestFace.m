load data/threefaceInfo.mat
for i=1:20
subplot(4,5,i);
img=reshape(FaceContainer(i*40,:),112,92);
imshow(img);

end