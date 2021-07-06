%========================= UERJ - PPG-EM ==================================
% MODELAGEM E OTIMIZACAO DE UMA SUSPENSAO VEICULAR CONSIDERANDO
% SEGURANCA E CONFORTO DO USUARIO EM UMA ESTRADA IRREGULAR
%
%--------------- DEFINICAO DA ENTRADA PERFIL DE ESTRADA -------------------
%-------------------- CRIACAO DO ARQUIVO h2h.mat --------------------------
%
% AUTOR: JULIO BASILIO Ago/2019
%==========================================================================
%------------------DADOS DA ENTRADA PERFIL DE ESTRADA----------------------
% Comprimento do perfil da estrada (m)
L=250;
%Faixa de frequencia (m/s-)
dn=1/L;
%Frequencia Espacial (ciclos/m)
no=0.1;
%Frequencia Espacial Maxima (m/s-)
nmax=4;
%Numero de Pontos
N=nmax/dn;
%Intervalo de amostragem
B=L/N;
%Selecione o valor de classificacao de rugosidade ISO
K=2;%Classe A-B
%------------------MODELO DE PERFIL DE ESTRADA----------------------
x=0:B:L;
h=zeros(size(x));
fi=2*pi*rand(size(x));
for i=1:N
h=h+sqrt(dn)*(2^K)*(0.001)*no/(i*dn)*cos(2*pi*i*dn*x+fi(i));
end
save h2h.mat