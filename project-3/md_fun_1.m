%funkcja matemtyczna podana w zadaniu 1
function y = md_fun_1 (x)
  size1=size(x,2);
  y=zeros(1,size1);
  for i=1:size1
    y(1,i)=0.7*x(1,i)*cos(x(1,i))-log(x(1,i)+1);
  end
end