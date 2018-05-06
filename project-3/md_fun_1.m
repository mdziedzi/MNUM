%funkcja matemtyczna podana w zadaniu 1
function [y, dy] = md_fun_1 (x)
  size1=size(x,2);
  y=zeros(1,size1);
  dy=zeros(1,size1);
  for i=1:size1
    y(1,i)=0.7*x(1,i)*cos(x(1,i))-log(x(1,i)+1);
    dy(1,i)=-1/(1 + x(1,i) + 0.7 * cos(x(1,i)) - 0.7 * x * sin(x(1,i)));
  end
end