% Implementacja wielomianu z zadania
function y = md_fun_2 (x)
  size1=size(x,2);
  y=zeros(1,size1);
  for i=1:size1;
    y(1,i)=1*power(x(1,i), 4) -7*power(x(1,i), 3)-4*power(x(1,i), 2)+2*x(1,i)+9;
  end 
end