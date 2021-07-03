function [val] = choosing_lambda(params, X, y, Xval, yval, hidden, hidden1, opt)

l = 0; r = 10;
for i = 1 : opt
    mid1 = l + (r - l) / 3;
    mid2 = r - (r - l) / 3;
    theta1 = training(params, X, y, hidden, hidden1, mid1);
    theta2 = training(params, X, y, hidden, hidden1, mid2);
    f1 = nnCostFunction(theta1, size(Xval,2), hidden, hidden1, 2, Xval, yval, 0);
    f2 = nnCostFunction(theta2, size(Xval,2), hidden, hidden1, 2, Xval, yval, 0);
    if(f1 <= f2)
        r = mid2;
    else
        l = mid1;
    end
end

val = l
