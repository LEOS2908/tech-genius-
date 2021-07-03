function [times, val] = tenary (parmas, hidden, hidden1, X, y, Xval, yval)

c = [1, 2, 5, 10, 20, 30, 40, 50, 100, 150, 200];

times = zeros(length(c));
val = zeros(length(c));


for i = 1 : length(c)
    times(i) = c(i);
    val(i) = choosing_lambda(parmas, X, y, Xval, yval, hidden, hidden1, c(i));
    
end

endfunction
