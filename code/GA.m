% Optimizing a function  using Simple Genetic Algorithm wit================


%��ʼ������
T=150;%�������

N=20;% Ⱥ���ģ

pm=0.05;pc=0.8;%����������

umax=1;umin=0;%����ȡֵ��Χ

L=10;%���������ִ����ȣ��ܱ��볤��Dim*L
Dim=3300;%Dimά�ռ�����

bval=round(rand(N,Dim*L));%��ʼ��Ⱥ��round����Ϊ��������

bestv=-inf;%������Ӧ�ȳ�ֵ
% funlabel=2;       %ѡ����Ż��ĺ�����1ΪRastrigin,2ΪSchaffer,3ΪGriewank
% Drawfunc(funlabel);%�������Ż��ĺ�����ֻ������ά�����Ϊ���ӻ����

%������ʼ

for ii=1:T

%���룬������Ӧ��

    for i=1:N  %��ÿһ���ĵ�i������
        for k=1:Dim
            y(k)=0;
            for qqq=1:1:L  %��1��L��ÿ�μ���1

               y(k)=y(k)+bval(i,k*L-qqq+1)*2^(qqq-1);%�ѵ�i������ת��Ϊʮ���Ƶ�ֵ������y1�ǵ�һά

            end 
            x(k)=(umax-umin)*y(k)/(2^L-1)+umin;%ת��Ϊʵ�ʵ�x1
        end

%       obj(i)=100*(x1*x1-x2).^2+(1-x1).^2; %Ŀ�꺯�� 

     zzz=exchang(x); %
     
     
      obj(i)=GAtotalAcu(zzz);  %��������ɵ����Ȩֵ�ŵ������п���׼ȷ��
      xx(i,:)=x;

    end

    func=obj;%Ŀ�꺯��ת��Ϊ��Ӧ�Ⱥ���

    p=func./sum(func);

    q=cumsum(p);%�ۼ�

    [fmax,indmax]=max(func);%�󵱴���Ѹ���

   if fmax>=bestv

      bestv=fmax;%��ĿǰΪֹ������Ӧ��ֵ

      bvalxx=bval(indmax,:);%��ĿǰΪֹ���λ��

      optxx=xx(indmax,:);%��ĿǰΪֹ���Ų���

   end   

   Bfit1(ii)=bestv; % �洢ÿ����������Ӧ��

%%%%�Ŵ�������ʼ

%���̶�ѡ��

 for i=1:(N-1)

    r=rand;

    tmp=find(r<=q);

    newbval(i,:)=bval(tmp(1),:);

 end

  newbval(N,:)=bvalxx;%���ű���

  bval=newbval;

%���㽻��

    for i=1:2:(N-1)

       cc=rand;

       if cc<pc

           point=ceil(rand*(2*L-1));%ȡ��һ��1��2L-1������

           ch=bval(i,:);

           bval(i,point+1:2*L)=bval(i+1,point+1:2*L);

           bval(i+1,point+1:2*L)=ch(1,point+1:2*L);

        end

    end   

    bval(N,:)=bvalxx;%���ű���

    %λ�����

    mm=rand(N,Dim*L)<pm;%N��

    mm(N,:)=zeros(1,Dim*L);%���һ���Ǿ�Ӣ�����죬ǿ�Ƹ�0

    bval(mm)=1-bval(mm); 
    ii=ii

end

%���
figure;

plot(-Bfit1);% ����������Ӧ�Ƚ�������

bestv;   %���������Ӧ��ֵ

optxx;    %������Ų���



w=exchang(optxx); %�����Ŵ��㷨����ɸѡ���Ȩֵ

save w.mat w;
