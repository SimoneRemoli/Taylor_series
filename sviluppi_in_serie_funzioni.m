function sviluppi_in_serie()
clc;
clear;
% Mc Laurin
% Sviluppo della serie della funzione sen(x) = x-x^3/3!+x^5/5!-x^7/7!+...

k = 10;
pos = 1:4:(2*k+1);
neg = 3:4:(2*k+1);
ris = [];
rispos = [];
risneg = [];
x = input("Inserire angolo (espresso in gradi)  :");
rad = x/360*2*pi;
rispos = [sum((rad.^pos)./factorial(pos))];
risneg = [sum((rad.^neg)./factorial(neg))];
ris = rispos - risneg;
fprintf("il valore del seno(x) =  %.15f \n",ris);
fprintf("Il valore in radianti : %d\n",rad);

% Sviluppo della serie della funzione cosen(x) = 1-x^2/2!+x^4/4!-x^6/6!+...

pos1 = 4:4:(2*k+1);
neg1 = 2:4:(2*k+1);
ris1 = [];
rispos1 = [];
risneg1 = [];
rispos1 = [sum((rad.^pos1)./factorial(pos1))]+1;
risneg1 = [sum((rad.^neg1)./factorial(neg1))];
ris1 = rispos1 - risneg1;
fprintf("il valore del coseno(x) =  %.15f\n",ris1);

% Sviluppo della serie della funzione e^x = 1+x+x^2/2!+x^3/3!+x^4/4!+...
% In realtà si potrebbe anche sommare il valore del sen(x)+cos(x).

y = input(" e^ elevato a ?  :");
pos2 = 1:1:(2*k+1);
ris2 = [];
rispos2 = [];
rispos2 = [sum((y.^pos2)./factorial(pos2))]+1;
fprintf("il valore di e^x =  %.15f  \n",rispos2);

% Calcolo dell'errore [Valore calcolato in Octave/matlab - serie della funzione]
% di sen(pi/3) = 0.866025403784439-0.866025403784439 = 0;
% di cos(2*pi/3) =  -0.499999999999989 + 0.500000000000000 = 1.0991208e-14;
