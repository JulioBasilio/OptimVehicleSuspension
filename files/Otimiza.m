%========================= UERJ - PPG-EM ==================================
% MODELAGEM E OTIMIZACAO DE UMA SUSPENSAO VEICULAR CONSIDERANDO
% SEGURANCA E CONFORTO DO USUARIO EM UMA ESTRADA IRREGULAR
%
%
%------------------- OTIMIZACAO ALGORITMO GENETICO ------------------------
%------------------ EXECUCAO DA FUNCAO "gamultiobj" -----------------------
%
% AUTOR: JULIO BASILIO Ago/2019
%==========================================================================
clear all;
%---------------- EXEXUCAO DA FUNCTION Funcoes_Objetivo ------------------
fun=@(x)Funcoes_Objetivo(x(1),x(2));
%------------------ DEFINICAO DOS LIMITES (RESTRICOES) --------------------
% Limite Inferior das variaveis de projeto
lb=[1 0.1];
% Limite Superior das variaveis de projeto
ub=[4 0.9];
%-------------------- EXECUCAO DA FUNCAO gamultiobj -----------------------
options = optimoptions('gamultiobj','PopulationSize',60,'PlotFcn',@gaplotpareto);
[x,fval] = gamultiobj(fun,2,[],[],[],[],lb,ub,options);
% Retirar o simbolo % naquela function que contem as respostas dinamicas
% a serem otimizadas.
[as,f]=Calcula_Respostas(x(1),x(2));
%[as,ds]=Calcula_Respostas(x(1),x(2));
%[f,ds]=Calcula_Respostas(x(1),x(2));
[F]=Funcoes_Objetivo(x(1),x(2));