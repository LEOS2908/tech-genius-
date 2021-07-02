function nn_params = training (X, y, lambda)


% begin preparing theta %

Theta1 = randInitializeWeights(size(X, 2), 8);
Theta2 = randInitializeWeights(8, 4);
Theta3 = randInitializeWeights(4, 2);
initial_nn_params = [Theta1(:) ; Theta2(:); Theta3(:)];

% finish preparing theta %


% Training%

costFunction = @(p) nnCostFunction(p,size(X, 2), 8, 4,
                                   2, X, y, lambda);
                                   
options = optimset('MaxIter', 50);

[nn_params, cost] = fmincg(costFunction, initial_nn_params, options);

% end training %
endfunction
