%subroutine 1
function [z]=Lvmult_col(M,v,n)
% Initialize the output vector z
  z=zeros(n,1);  

  for i = 1:n
    z(i) = z(i) + v(i);

    if i < n 
        z(i+1:n) = z(i+1:n) + M(i+1:n,i) * v(i);
    end 
  end
  return

