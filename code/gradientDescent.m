function [theta, J_history] = gradientDescent(X, y, theta, alpha, num_iters)
% GRADIENTDESCENT Implementa o m�todo de descido do gradiente para aprender
% os par�metros theta.
%   theta = GRADIENTDESENT(X, y, theta, alpha, num_iters) updates theta by
%   taking num_iters gradient steps with learning rate alpha

m = length(y); % N�mero de exemplos de treinamento

J_history = zeros(num_iters, 1); % Hist�rico

hyp = @(theta, x) theta(1) + (theta(2)*x); % Fun��o hip�tese

% Vetor gradiente: derivadas parciais de J com rela��o � theta
grad = @(x, y, h, m) (1/m)*[sum(h - y) ; sum(x.*(h - y))];

for iter = 1:num_iters
    
    % ====================== COLOQUE SEU C�DIGO AQUI ======================
    % Instru��es: Calcule apenas um passo do algoritmo
    %
    
    x = X(:,2);
    h = hyp(theta, x);
    
    theta = theta - alpha*grad(x, y, h, m);
    
    % ============================================================
    
    % Salva o custo calculado em cada itera��o
    J_history(iter) = computeCost(X, y, theta);
    
    % Descomente esta linha para ver o custo calculado
    % disp(J_history(iter));
end

disp(min(J_history));

end
