function [val] = choosingthebest(X, y, Xval, yval, opt)

l = 0; r = 5;
for i = 1 : opt
    mid1 = l + (r - l) / 3;
    mid2 = r - (r - l) / 3;
    theta1 = training(X, y, mid1);
    theta2 = training(X, y, mid2);
    f1 = nnCostFunction(theta1, size(X, 2), 8, 4, 2, Xval, yval, 0);
    f2 = nnCostFunction(theta2, size(X, 2), 8, 4, 2, Xval, yval, 0);
    if(f1 <= f2)
        val = mid2;
        r = mid2;
    else
        val = mid1;
        l = mid1;
    end
end

