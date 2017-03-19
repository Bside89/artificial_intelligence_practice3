function plotData(x, y)
%PLOTDATA Mostra os pontos dos dados em uma nova figura 
%   PLOTDATA(x,y) cria uma figura com os dados de populacao e lucro de em varias  
%   cidades.

% ====================== YOUR CODE HERE ======================
% InstruÃ§Ãµes: Mostre os dados de treinamento em uma figura usando 
%               os comandos "figure" e "plot". DefinaSet the axes labels using
%               the "xlabel" and "ylabel" commands. Assume the 
%               population and revenue data have been passed in
%               as the x and y arguments of this function.
%
% Dica: You can use the 'rx' option with plot to have the markers
%       appear as red crosses. Furthermore, you can make the
%       markers larger by using plot(..., 'rx', 'MarkerSize', 10);


    figure; % open a new figure window

    plot(x, y, 'ro', 'MarkerSize', 3);
    xlabel('População');
    ylabel('Lucro');

% ============================================================

end
