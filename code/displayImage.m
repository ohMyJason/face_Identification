function displayImage(v,row,col)
% ���� v Ϊһ��ͼ���д洢�õ��������������� displayImage(...) v ת����ԭʼ�� row * col ͼ�񣬲���ʾ֮
%
% ���룺v --- һ��ͼ���д洢�õ���������
%      row --- ԭʼͼ�������
%      col --- ԭʼͼ�������

[m n] = size(v);


if m ~= 1
   error('v����Ϊ������');
end;
if  row*col ~= n
   error('ͼ��ߴ����������� v ��ά������');
end;

% ԭʼͼ��I
I=zeros(row,col);
I(:)=v(:);


figure;
imagesc(I);
colormap(gray);
axis image;