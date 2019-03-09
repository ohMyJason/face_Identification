function net = network_train(train_data,train_label,w )
% 输入：训练图像特征和label。输出：训练好的神经网络

% BP网络训练
% 初始化网络结构
% layer=80;%隐含层有25个神经元
net=newff(train_data,train_label,{55});
net.iw{1,1}=w;
net.trainParam.epochs=900;%训练的次数
net.trainParam.lr=0.1;%梯度下降参数
net.trainParam.goal=0.001;%
net.trainFcn='trainrp';
% 网络训练
net=train(net,train_data,train_label);
end

