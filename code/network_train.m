function net = network_train(train_data,train_label,w )
% ���룺ѵ��ͼ��������label�������ѵ���õ�������

% BP����ѵ��
% ��ʼ������ṹ
% layer=80;%��������25����Ԫ
net=newff(train_data,train_label,{55});
net.iw{1,1}=w;
net.trainParam.epochs=900;%ѵ���Ĵ���
net.trainParam.lr=0.1;%�ݶ��½�����
net.trainParam.goal=0.001;%
net.trainFcn='trainrp';
% ����ѵ��
net=train(net,train_data,train_label);
end

