% load data/net2.mat
load data/testLjsFaceInfo.mat
% load data/v.mat
load data/netK50.mat
load data/k50PCA.mat
for i=1:50
    
testpcaA=testFaceContainer(i,:);
testpcaA=testpcaA*V;
testpcaA=testpcaA';
%%判断
testAn=sim(net,testpcaA);
out=find(testAn==max(testAn));
outContainer(i)=out;

subplot(5,10,i);
img(:)=testFaceContainer(i,:);
img=reshape(img,112,92);
imshow(img,[])
if out==1
    title("他是魏磊")
end
if out==2
    title('他是邓程维')
end
if out==3
    title('他是刘佳昇')
end
end
tabulate(outContainer(:))
Acu=tabulate(outContainer(:));