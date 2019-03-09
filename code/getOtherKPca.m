%创造出不同K值的训练数据
load data/threeFaceContain.mat
[pcaA V] = fastPCA(FaceContainer,100);

save data/k100PCA.mat pcaA V;