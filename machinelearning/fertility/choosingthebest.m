function [layer1 layer2] = choosingthebest (X, y)

best_val = 0;

for i = 1 : 11
    for j = 1 : i
        Theta1 = randInitializeWeights(size(X, 2), i);
        Theta2 = randInitializeWeights(i, j);
        Theta3 = randInitializeWeights(j, 2);
        initial_nn_params = [Theta1(:) ; Theta2(:); Theta3(:)];
        temp = training(initial_nn_params, X, y, i, j, 0);
        val = nnCostFunction(temp, size(X, 2), i, j, 2, X, y, 0);
        if(best_val==0)
              best_val = val;
              layer1 = i;
              layer2 = j;
        else 
           if(best_val > val)
               best_val = val;
               layer1 = i;
               layer2 = j;
           end
        end
    end
end

endfunction
