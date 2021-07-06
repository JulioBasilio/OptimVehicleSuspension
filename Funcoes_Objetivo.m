%========================= UERJ - PPG-EM ==================================
% MODELAGEM E OTIMIZACAO DE UMA SUSPENSAO VEICULAR CONSIDERANDO
% SEGURANCA E CONFORTO DO USUARIO EM UMA ESTRADA IRREGULAR
%
%------------------- DEFINICAO DAS FUNCOES OBJETIVOS ----------------------
%------------ CRIACAO DA "FUNCTION" Funcoes_Objetivo(fn,si) ---------------
%
% AUTOR: JULIO BASILIO Ago/2019
%==========================================================================
%-------------------- ACELERACAO vs FORCA DINAMICA ------------------------
% Para otimizacao pelo metodo de Algoritmo Genetico entre a aceleracao e a
% forca dinamica , criar um arquivo com o nome "Funcoes_Objetivo.m" e com
% somente os comandos abaixo ativados (sem o simbolo %).
function [F]=Funcoes_Objetivo(fn,si)
[as,f]=Calcula_Respostas(fn,si);
F(1)=as; F(2)=f;
end
%----------------- ACELERACAO vs DEFLEXAO DA SUSPENSAO --------------------
% Para otimizacao pelo metodo de Algoritmo Genetico entre a aceleracao e a
% deflexao da suspensao, criar um arquivo com o nome "Funcoes_Objetivo.m"
% e com somente os comandos abaixo ativados (sem o simbolo %).
%function [F]=Funcoes_Objetivo(fn,si)
%[as,ds]=Calcula_Respostas(fn,si);
%F(1)=as; %F(2)=ds;
%end
%--------------- FORCA DINAMICA vs DEFLEXAO DA SUSPENSAO ------------------
% Para otimizacao pelo metodo de Algoritmo Genetico entre a forca dinamica
% e a deflexao, criar um arquivo com o nome "Funcoes_Objetivo.m" e com
% somente os comandos abaixo ativados (sem o simbolo %).
%function [F]=Funcoes_Objetivo(fn,si)
%[f,ds]=Calcula_Respostas(fn,si);
%F(1)=f; F(2)=ds;
%end