load data/testWlFaceInfo.mat
load data/netK100.mat
load data/k100PCA.mat
% load data/net2.mat  %k40
% load data/v.mat %k40
for i=1:50
testpcaA=testFaceContainer(i,:);
testpcaA=testpcaA*V;
testpcaA=testpcaA';
%%еп╤о
testAn=sim(net,testpcaA);
out=find(testAn==max(testAn));
outContainer(i)=out;
end
tabulate(outContainer(:))
Acu=tabulate(outContainer(:));
AcuSum=Acu(1,3);


load data/testDcwFaceInfo.mat
for i=1:50
testpcaA=testFaceContainer(i,:);
testpcaA=testpcaA*V;
testpcaA=testpcaA';
%%еп╤о
testAn=sim(net,testpcaA);
out=find(testAn==max(testAn));
outContainer(i)=out;
end
tabulate(outContainer(:))
Acu=tabulate(outContainer(:));
AcuSum=AcuSum+0;


load data/testLjsFaceInfo.mat
for i=1:50
testpcaA=testFaceContainer(i,:);
testpcaA=testpcaA*V;
testpcaA=testpcaA';
%%еп╤о
testAn=sim(net,testpcaA);
out=find(testAn==max(testAn));
outContainer(i)=out;
end
tabulate(outContainer(:))
Acu=tabulate(outContainer(:));
AcuSum=AcuSum+0;
totalAcu=AcuSum/3