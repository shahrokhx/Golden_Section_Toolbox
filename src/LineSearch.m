%%  SDO - LineSearch 
%   SHAHROKH SHAHI  -- 903164987
%   shahi@gatech.edu
%
%   Georgia Institute of Technology
%   Spring 2018

%% Function Definition
function [x,intervals,alpha,q] = LineSearch(func,delta,maxq,tol,maxit)

    if nargin < 5; maxit= 10 ; end
    if nargin < 4; tol = 1e-5; end
    if nargin < 3; maxq= 10  ; end
    if nargin < 2; delta=0.01; end
    
%% Hard Coded Data
    golden = 1.618;
%% Preparation for Line Search Procedure 
    fprintf('\n\n---------------LINE SEARCH PROCEDURE---------------\n')
    
    alpha = zeros(1,maxq+1);

    for q = 1 : maxq+1
        for j = 0 : q-1
            alpha(q) = alpha(q) + golden.^j;
        end
        alpha(q) = alpha(q)*delta;
        fprintf ('q=%2d  .....   alpha(%2d)=%6.3f \n',q-1,q-1,alpha(q))
    end

%% Phase I: Initial Bracketing
    
    fprintf('\n\nPhase I: Initial Bracketing:\n')
    fprintf('---------------------------------------\n')
    for q = 3  : length(alpha) 

        fprintf('q=%2d |   f(a(q-2))=%8.3f     f(a(q-1))=%8.3f     f(a(q))=%8.3f\n',q-1,func(alpha(q-2)),func(alpha(q-1)),func(alpha(q)))

        if (func(alpha(q-1)) <  func(alpha(q-2))) && (func(alpha(q-1)) < func(alpha(q)))
            q_bracket = q;
            break
        end

    end
    fprintf ('\n[q=%2d] ---> Initial Bracketing Result = [a(q-2) , a(q)] = [%5.3f , %5.3f] \n',q-1,alpha(q-2),alpha(q))

%% Plotting the Initial Bracket
%     figure(1); cla; 
%     plot(alpha,func(alpha),'b-O')
%     grid on
%     hold on
%     plot([alpha(q-2) alpha(q-2)],[0, func(alpha(q-2))],'r-.*')
%     plot([alpha(q) alpha(q)],[0, func(alpha(q))],'r--*')
%     title ('LineSearch Initial Intrval')
%     legend('Phase I \alpha_q','Lower Bound','Upper Bound')
    

%% Phase II
    fprintf('\n\n\nPhase II: Reducing the Interval:\n')
    fprintf('---------------------------------------\n')
    xL = alpha(q-2);
    xU = alpha(q  );
    
%     i = 0;
%     while abs(xU-xL)>tol
    
    for i = 1 : maxit
        if abs(xU-xL)<tol; break;end
%         i = i + 1;
        intervals(i,:)=[xL,xU];
        fprintf ('\nIteration=%2d  --> Intrval=[%5.3f,%5.3f] \n',i,xL,xU)
        x1 = xL + (golden - 1)*(xU - xL);
        x2 = xU - (golden - 1)*(xU - xL);
        f1 = func(x1);
        f2 = func(x2);

        fprintf ('x1=%6.4f, f(x1)=%6.4f \nx2=%6.4f, f(x2)=%6.4f\n',x1,f1,x2,f2)

        if f1 > f2 
            xU = x1;
        else
            xL = x2;
        end
    end
    x = (xL+xU)/2;
    
end
