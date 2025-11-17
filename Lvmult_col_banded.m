%subroutine 3 - helped build with vincent, and Alex 
function [z] = Lvmult_col_banded(M,v,n)
    z = zeros(n,1);
    band1 = zeros(n,1); 
    band2 = zeros(n,1); 

% Note we are only storing 2 Bands max
% If L is a unit lower triangular matrix with its other
% potentially nonzero locations restricted to its two subdiagonals

    %Storage for first subdiagonal 
    for i =2:n 
        band1(i) = M(i,i-1);
    end 
    
    %storage for second subdiagonal
    for i =3:n
        band2(i) = M(i,i-2);
    end

    %this for loops computes: 
    % z(i) = z(i) + band1(i)*v(i-1) + band2(i)*v(i-2)

    for i=1:n 
        z(i) = v(i);
        if i-1 >= 1
            z(i) = z(i) + band1(i)*v(i-1);
        end 

        if i-2 >=1 
            z(i) = z(i) + band2(i)*v(i-2);
        end
    end
end 
