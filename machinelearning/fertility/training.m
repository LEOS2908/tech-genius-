function nn_params = training (initial_nn_params, X, y, hidden_layer, hidden_layer_1, lambda)



% Training%

costFunction = @(p) nnCostFunction(p,size(X, 2), hidden_layer, hidden_layer_1,
                                   2, X, y, lambda);
                                   
options = optimset('MaxIter', 50);

[nn_params, cost] = fmincg(costFunction, initial_nn_params, options);

% end training %
endfunction
