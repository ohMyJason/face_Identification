%�������ͬKֵ��ѵ������
load data/threeFaceContain.mat
[pcaA V] = fastPCA(FaceContainer,100);

save data/k100PCA.mat pcaA V;