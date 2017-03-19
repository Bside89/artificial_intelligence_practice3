function J = computeCost(X, y, theta)
%COMPUTECOST Calcula o Custo da regressão com o parâmetro theta
%   J = COMPUTECOST(X, y, theta) computes the cost of using theta as the
%   parameter for linear regression to fit the data points in X and y

% 
m = length(y); % Número de examplos de treinamento 

h = (theta')*(X'); % Função linear de custo (modelada como um vetor de dados)

% Você deve preencher a variável J adequadamente
J = (1/(2*m))*sum((h' - y).*(h' - y));

%
% =========================================================================

end
