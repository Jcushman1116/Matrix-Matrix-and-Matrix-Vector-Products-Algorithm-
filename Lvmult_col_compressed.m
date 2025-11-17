%subroutine 2
function [z] = Lvmult_col_compressed(M,v,n)
z = zeros(n,1);
% p is used as counter variable that gets incremented
p = 1;
% l is the compressed elements of the L Unit Lower Triangular matrix
l=[];
%loop to store the elements - Made with Alex 
    for j = 1:n
        for i = j+1:n
        l = [l;M(i,j)];
        end 
    end 
%algorithm built with Jonathan to compute the product
    for j = 1:n   
        z(j) = z(j) + v(j);
        
        for i = j+1:n
            z(i) = z(i) + l(p) * v(j);
            p = p + 1;
        end
    end
end