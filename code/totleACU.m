% load data/netK50.mat
load data/GAnetK50.mat
load data/k50PCA.mat
load data/threeFaceContain.mat
% load data/threefaceInfo.mat  %k40
% load data/net2.mat  %k40
% load data/v.mat %k40
for i=1:300
    
testpcaA=FaceContainer(i,:);
 testpcaA=testpcaA*V;
testpcaA=testpcaA';
%%�ж�
testAn=sim(net,testpcaA);
out=find(testAn==max(testAn));
outContainer(i)=out;
end
tabulate(outContainer(:))
Acu=tabulate(outContainer(:));
AcuSum=Acu(1,3);


for i=301:600
    
testpcaA=FaceContainer(i,:);
testpcaA=testpcaA*V;
testpcaA=testpcaA';
%%�ж�
testAn=sim(net,testpcaA);
out=find(testAn==max(testAn));
outContainer(i-300)=out;
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
AcuSum=AcuSum+Acu(2,3);


for i=601:900
    
testpcaA=FaceContainer(i,:);
testpcaA=testpcaA*V;
testpcaA=testpcaA';
%%�ж�
testAn=sim(net,testpcaA);
out=find(testAn==max(testAn));
outContainer(i-600)=out;
end
tabulate(outContainer(:))
Acu=tabulate(outContainer(:));
AcuSum=AcuSum+Acu(3,3);
totalAcu=AcuSum/3


