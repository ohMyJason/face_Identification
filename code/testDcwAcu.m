% load data/net2.mat
% load data/v.mat    %k40
load data/testDcwFaceInfo.mat

load data/netK100.mat
load data/k100PCA.mat
for i=1:50
    
testpcaA=testFaceContainer(i,:);
testpcaA=testpcaA*V;
testpcaA=testpcaA';
%%�ж�
testAn=sim(net,testpcaA);
out=find(testAn==max(testAn));
outContainer(i)=out;

subplot(5,10,i);
img(:)=testFaceContainer(i,:);
img=reshape(img,112,92);
imshow(img,[])
if out==1
    title("����κ��")
end
if out==2
    title('���ǵ˳�ά')
end
if out==3
    title('�������ѕN')
end
end
tabulate(outContainer(:))
Acu=tabulate(outContainer(:));