%subroutine number 4

function [A] = LUmult(M,n)

    % Initialize result
    A = zeros(n,n);

    % Loop over the "middle index" k
    for k = 1:n

        % For rows i >= k
        for i = k:n
            if i == k
                L(i,k) = 1;     
               % L(k,k) = 1 on the unit diagonal
            else
                L(i,k) = M(i,k); 
                % Nonzero elements of L stored below diagonal
            end

            % For cols j >= k
            %index starts at K because this is inside another for loop,
            %thus k will start at 1
            for j = k:n
                %store the nonzero elements of U, aka when j >= k by math
                U(k,j) = M(k,j); 
              
                %Summation of L*U, this is included here because i and j
                %are both following the condition i,j <= k 
                A(i,j) = A(i,j) + L(i,k) * U(k,j);
            end
        end
    end
end

