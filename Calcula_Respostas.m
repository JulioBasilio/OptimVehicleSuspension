%========================= UERJ - PPG-EM ==================================
% MODELAGEM E OTIMIZACAO DE UMA SUSPENSAO VEICULAR CONSIDERANDO
% SEGURANCA E CONFORTO DO USUARIO EM UMA ESTRADA IRREGULAR
%
%
%------------------- CALCULO DAS RESPOSTAS DINAMICAS ----------------------
%----------- CRIACAO DA "FUNCTION" Calcula_Respostas(fn,si) ---------------
%
% AUTOR: JULIO BASILIO Ago/2019
%==========================================================================
% Retirar o simbolo % naquela function que contem as respostas dinamicas
% a serem otimizadas.
function [as,f]=Calcula_Respostas(fn,si)
%function [as,ds]=Calcula_Respostas(fn,si)
%function [f,ds]=Calcula_Respostas(fn,si)
%------------------DADOS DA ENTRADA PERFIL DE ESTRADA----------------------
load h2h.mat
%------------------------- DEMAIS DADOS DE ENTRADA ------------------------
% Velocidade de percurso (m/s)
v=30;
% Tempo de percurso observado (s)
t=x/v;
%----------------- DADOS DO MODELO DE 1/4 DO VEICULO ----------------------
% Massa suspensa (kg)
ms=250;
% Massa nao suspensa (kg)
mp=40;
% Rigidez do pneu (N/m)
kp=200000;
% Rigidez da suspensao (N/m) e Coef. de amortecimento suspensao (Ns/m)
% Atraves das variaveis de projeto a seguir.

%--------------- MODELO MATEMATICO DE 1/4 DO VEICULO ----------------------
%--------------- Calculo da Rigidez da suspensao --------------------------
ks=(2*pi*fn)^2*ms;
%--------------- Calculo do Coef. do amortecimento ------------------------
bs=2*si*sqrt(ks*ms);
%--------------- Modelo na forma de Eq. de Estado -------------------------
A=[0 1 0 0;-(kp+ks)/mp -bs/mp ks/mp bs/mp;0 0 0 1;ks/ms bs/ms -ks/ms -bs/ms];
B=[0;kp/mp;0;0];
C=[ks/ms bs/ms -ks/ms -bs/ms;1 0 -1 0;-kp 0 0 0];
D=[0;0;kp];
%---------- Calculo da solucao com a Entrada Perfil de Estrada ------------
sys=ss(A,B,C,D);
y=lsim(sys,h,t);
%------------- RESULTADO DAS RESPOSTAS DINAMICAS (SAIDAS) -----------------
%Incluir o simbolo % naquela resposta que nao sera otimizada.
% Aceleracao vertical do chassi (m/s) %
as=rms(y(N/2+1:N,1));
% Deflexao da suspensao (m) %
%ds=rms(y(N/2+1:N,2));
% Forca dinamica da roda (N) %
f=rms(y(N/2+1:N,3));
end