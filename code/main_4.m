% load('data/threefaceInfo.mat')  %k=40��ʱ�����������
load data/threeFaceContain.mat
load data/k50PCA.mat
load data/lable.mat
load w.mat
pcaA=pcaA';
% for i=1:10
net=network_train(pcaA,lable,w);
%%�������ͼ��
testFace=imread('wl/wl (1).jpg'); 
testFace=rgb2gray(testFace);      
testFace=testFace';
testFace=imresize(testFace,[112,92]);
% imshow(testFace);
testFace=im2double(testFace);
testFace=testFace(:);
testpcaA=testFace'*V;
testpcaA=testpcaA';
%%�ж�
testAn=sim(net,testpcaA)
out=find(testAn==max(testAn))
% resultFace=FaceContainer(200-out,:);
% displayImage(resultFace,112,92);
% resultCon(i)=out;
% end
% d=mean(resultCon);

%���������
% for i=1:5:300
%     displayImage(FaceContainer(i,:),112,92)
% end
save data/GAnetK50.mat net