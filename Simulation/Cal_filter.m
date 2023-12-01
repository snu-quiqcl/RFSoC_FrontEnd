syms C1 L2 C3 L4 C5 L6 s
syms Z1 Z2 Z3

Z1 = L6*(1/C5)/(L6 * s + (1/(C5*s)))
Z2 = (L4 * s + Z1)*(1/(C3*s))/((L4 * s + Z1) + (1/(C3*s)))
Z3 = (L2 * s + Z2)*(1/(C1*s))/((L2 * s + Z2) + (1/(C1*s)))

[N, D] = numden(Z3)
NC = coeffs(N,s,'All')
DC = coeffs(D,s,'All')
NC = [0 NC]

[z2,p2,k2] = cheby2(6,50,2*pi,"s");
[b2,a2] = zp2tf(z2,p2,k2);

eqns1 = b2 == NC
eqns2 = a2 == DC
eqns = [eqns1, eqns2]
vars = [C1,L2,C3,L4,C5,L6]
S = vpasolve(eqns,vars)
