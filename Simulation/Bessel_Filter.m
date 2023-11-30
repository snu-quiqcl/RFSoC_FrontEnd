fc = 2E9;
fs = 3E9;
% Bessel -> too low attenuation
%[b,a] = besself(6,2E9);
%freqs(b,a)

% Cheb
% [b,a] = cheby1(6,3,fc/(fs));
% freqz(b,a,[],fs)

% Eliptic
%[b,a] = ellip(6,1,50,fc/(fs));
%freqz(b,a,[],fs)

%second Cheb
[b,a] = cheby2(6,50,fc/(fs));
freqz(b,a,[],fs)