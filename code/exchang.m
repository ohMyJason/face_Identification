 
function zzz=exchang(x)
     zzz=zeros(55,60);   %这里把1*350的数据变为 10*35的数据
     for qq=1:55
        for qqq=1:60
         zzz(qq,qqq)=x(qq*qqq);
        end
     end  