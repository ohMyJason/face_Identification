load data/netK100.mat
load data/k100PCA.mat
load data/threeFaceContain.mat
% load data/threefaceInfo.mat  %k40
% load data/v.mat %k40
for i=1:300
    
testpcaA=FaceContainer(i,:);
testpcaA=testpcaA*V;
testpcaA=testpcaA';
%%�ж�
testAn=sim(net,testpcaA);
out=find(testAn==max(testAn));
outContainer(i)=out;
% subplot(5,10,i);
% img(:)=FaceContainer(i,:);
% img=reshape(img,112,92);
% imshow(img,[])
% if out==1
%     title("����κ��")
% end
% if out==2
%     title('���ǵ˳�ά')
% end
% if out==3
%     title('�������ѕN')
% end
end
tabulate(outContainer(:))
Acu=tabulate(outContainer(:));