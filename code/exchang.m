 
function zzz=exchang(x)
     zzz=zeros(55,60);   %�����1*350�����ݱ�Ϊ 10*35������
     for qq=1:55
        for qqq=1:60
         zzz(qq,qqq)=x(qq*qqq);
        end
     end  