clear;
clear all;
clc;

...base de données...

    ...Capacité calorifique massique à pression constante de l'air sec...
    Cp_as=1004,4
    
    ...Capacité calorifique massique à pression constante de la vapeur d'cau...
    Cp_vap = 1862,3
    
    ...Humidité relative...
    h_r=eho_vap/eho_vs
    
    ...Humidité absolue...
    h_abs=0.622*p_vap/(p-p_vap)
    
    ...Masse volumique de l'air humide...
    eho=p_as/(287*T) + p_vap/(462*T)
    
    ...Coefficient de diffusion moléculaire de la vapeur d'eau...
    Dv=0.083*(T/273)^1.81
    
    ...Fraction massique de la va peur...
    Cv=0.622*p_vap/(p-0.378*p_vap) 
    
    
    
    
......................code ChOROK..........................................
...............................les données..................................
mA=1  ;  %débit massique d'air asséchant entrant
cpA=1  ;      % chaleur spécifique de l'air asséchant
hvar=1 ;     % coefficient d'échange convectif entre l'air et l'arraw
hvp=1 ;    % coefficient d'échange convectif entre l'air et la paroi interne du cylindre
Sar=1;      % Surface d'échange de J'arraw
Sp=1;       % Surface d'échange de la paroi interne du cylindre
Tar=9;      %température de I'arraw
Tp=16;      %température de la paroi interne
Tt=1;
Ti=5;
...............................l'equation..................................
mA=(Sar*hvar*(Ti-Tar)+ Sp*hvp*(Ti-Tp))/(cpA*(Tt-Ti))
    
