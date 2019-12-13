
% Copyright 2019 The University of Texas at Austin
%
% For licensing information see
%                http://www.cs.utexas.edu/users/flame/license.html 
%                                                                                 
% Programmed by: Name of author
%                Email of author

function [ A_out ] = invMatrixSpark( A )

  [ m, n ] = size(A);
  
  A = [ A eye(m) ];
  [ ATL, ATR, ...
    ABL, ABR ] = FLA_Part_2x2( A, ...
                               0, 0, 'FLA_TL' );

  while ( size( ATL, 1 ) < size( A, 1 ) )

    [ A00,  a01,     A02,  ...
      a10t, alpha11, a12t, ...
      A20,  a21,     A22 ] = FLA_Repart_2x2_to_3x3( ATL, ATR, ...
                                                    ABL, ABR, ...
                                                    1, 1, 'FLA_BR' );

    %------------------------------------------------------------%
    if alpha11 == 0
        tmp = a10t;
        a10t = A20(1,:);
        A20(1,:) = tmp;
            
        tmp = alpha11;
        alpha11 = a21(1,:);
        a21(1,:) = tmp;
            
        tmp = a12t;
        a12t = A22(1,:);
        A22(1,:) = tmp;
    end
    
    a21 = a21 / alpha11;
    A22 = A22 - (a21 * a12t);
    a01 = a01 / alpha11;
    A02 = A02 - (a01 * a12t);
    a01 = zeros(size(a01));
    a21 = zeros(size(a21));
    
    %                       update line 1                        %
    %                             :                              %
    %                       update line n                        %

    %------------------------------------------------------------%

    [ ATL, ATR, ...
      ABL, ABR ] = FLA_Cont_with_3x3_to_2x2( A00,  a01,     A02,  ...
                                             a10t, alpha11, a12t, ...
                                             A20,  a21,     A22, ...
                                             'FLA_TL' );

  end

  A_out = [ ATL, ATR
            ABL, ABR ];
  A_out = A_out(:,m+1:m*2);

return
