syms s;
L1 = 5E-7
R1 = 107
C1 = 100E-9

Z0 = 50
Z1= 0
Z2 = (1/(C1*s))
Z3 = L1*s + R1

A = 1 + Z1/Z3
B = Z1 + Z2 + Z1*Z2/Z3
C = 1/Z3
D = 1 + Z2/Z3

S11_(s) = (A+B/Z0-C*Z0-D)/(A+B/Z0+C*Z0+D)
S12_(s) = 2*(A*D-B*C)/(A+B/Z0+C*Z0+D)
S21_(s) = 2/(A+B/Z0+C*Z0+D)
S22_(s) = (-A+B/Z0-C*Z0+D)/(A+B/Z0+C*Z0+D)

freq = (50E6:1E6:2E10)';
S11 = zeros(size(freq,1),1);
S12 = zeros(size(freq,1),1);
S21 = zeros(size(freq,1),1);
S22 = zeros(size(freq,1),1);
S = zeros(2,2,size(freq,1));

for i = 1:1:size(freq,1)
    i
    S11(i) = S11_(freq(i)*j);
    S12(i) = S12_(freq(i)*j);
    S21(i) = S21_(freq(i)*j);
    S22(i) = S22_(freq(i)*j);

    S(1,1,i) = S11(i);
    S(1,2,i) = S12(i);
    S(2,1,i) = S21(i);
    S(2,2,i) = S22(i);
end

s2p_data = sparameters(S,freq)
rfwrite(s2p_data, 'AMP_out_ckt.s2p')