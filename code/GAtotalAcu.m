function totalAcu = GAtotalAcu (w)
load data/k50PCA.mat
load data/threeFaceContain.mat
load data/lable.mat
pcaA=pcaA';
net=newff(pcaA,lable,{55});
net.iw{1,1}=w;
net.trainParam.epochs=900;%训练的次数
net.trainParam.lr=0.1;%梯度下降参数
net.trainParam.goal=0.001;%
net.trainFcn='trainrp';

for i=1:300
testpcaA=FaceContainer(i,:);
testpcaA=testpcaA*V;
testpcaA=testpcaA';
%%判断
testAn=sim(net,testpcaA);
out=find(testAn==max(testAn));
outContainer(i)=out;
end
N=numel(outContainer,outContainer(:)==1);
SumN=N;




for i=301:600
    
testpcaA=FaceContainer(i,:);
testpcaA=testpcaA*V;
testpcaA=testpcaA';
%%判断
testAn=sim(net,testpcaA);
out=find(testAn==max(testAn));
outContainer(i-300)=out;
end
N=numel(outContainer,outContainer(:)==2);
SumN=SumN+N;




for i=601:900
    
testpcaA=FaceContainer(i,:);
testpcaA=testpcaA*V;
testpcaA=testpcaA';
%%判断
testAn=sim(net,testpcaA);
out=find(testAn==max(testAn));
outContainer(i-600)=out;
end
N=numel(outContainer,outContainer(:)==2);
SumN=SumN+N;
totalAcu=SumN/900;

end

