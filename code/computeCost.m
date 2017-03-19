function J = computeCost(X, y, theta)
%COMPUTECOST Calcula o Custo da regress�o com o par�metro theta
%   J = COMPUTECOST(X, y, theta) computes the cost of using theta as the
%   parameter for linear regression to fit the data points in X and y

%
m = length(y); % N�mero de examplos de treinamento

h = (theta')*(X'); % Fun��o linear de custo (modelada como um vetor de dados)

% Voc� deve preencher a vari�vel J adequadamente
J = (1/(2*m))*sum((h' - y).*(h' - y));

%
% =========================================================================

end
