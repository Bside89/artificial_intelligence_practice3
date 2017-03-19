function [theta, J_history] = gradientDescent(X, y, theta, alpha, num_iters)
% GRADIENTDESCENT Implementa o método de descido do gradiente para aprender
% os parâmetros theta.
%   theta = GRADIENTDESENT(X, y, theta, alpha, num_iters) updates theta by
%   taking num_iters gradient steps with learning rate alpha

m = length(y); % Número de exemplos de treinamento

J_history = zeros(num_iters, 1); % Histórico

hyp = @(theta, x) theta(1) + (theta(2)*x); % Função hipótese

% Vetor gradiente: derivadas parciais de J com relação à theta
grad = @(x, y, h, m) (1/m)*[sum(h - y) ; sum(x.*(h - y))];

for iter = 1:num_iters
    
    % ====================== COLOQUE SEU CÓDIGO AQUI ======================
    % Instruções: Calcule apenas um passo do algoritmo
    %
    
    x = X(:,2);
    h = hyp(theta, x);
    
    theta = theta - alpha*grad(x, y, h, m);
    
    % ============================================================
    
    % Salva o custo calculado em cada iteração
    J_history(iter) = computeCost(X, y, theta);
    
    % Descomente esta linha para ver o custo calculado
    % disp(J_history(iter));
end

disp(min(J_history));

end
