fc = 1E9;
fs = 4E9;
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
%[b,a] = cheby2(6,50,fc/(fs));
%freqz(b,a,[],fs)

%[b,a] = cheby2(6,50,fc/(fs/2));
%freqz(b,a,[],fs)

n = 6;
fc = 1;

[zb,pb,kb] = butter(n,2*pi*fc,"s");
[bb,ab] = zp2tf(zb,pb,kb);
[hb,wb] = freqs(bb,ab,4096);
%동일한 경계 주파수와 3dB의 통과대역 리플을 갖는 5차 체비쇼프 유형 I 필터를 설계합니다. 필터의 주파수 응답을 계산합니다.

[z1,p1,k1] = cheby1(n,3,2*pi*fc,"s");
[b1,a1] = zp2tf(z1,p1,k1);
[h1,w1] = freqs(b1,a1,4096);
%동일한 경계 주파수와 30dB의 저지대역 감쇠량을 갖는 5차 체비쇼프 유형 II 필터를 설계합니다. 필터의 주파수 응답을 계산합니다.

[z2,p2,k2] = cheby2(n,50,2*pi*fc,"s");
[b2,a2] = zp2tf(z2,p2,k2);
[h2,w2] = freqs(b2,a2,4096);
%동일한 경계 주파수, 3dB의 통과대역 리플, 30dB의 저지대역 감쇠량을 갖는 5차 타원 필터를 설계합니다. 필터의 주파수 응답을 계산합니다.

[ze,pe,ke] = ellip(n,3,50,2*pi*fc,"s");
[be,ae] = zp2tf(ze,pe,ke);
[he,we] = freqs(be,ae,4096);
%동일한 경계 주파수를 갖는 5차 베셀 필터를 설계합니다. 필터의 주파수 응답을 계산합니다.

[zf,pf,kf] = besself(n,2*pi*fc);
[bf,af] = zp2tf(zf,pf,kf);
[hf,wf] = freqs(bf,af,4096);
%감쇠량(단위: 데시벨)을 플로팅합니다. 주파수를 기가헤르츠 단위로 표현합니다. 필터를 비교합니다.

tiledlayout(2,1)

nexttile

plot([wb w1 w2 we wf]/(fc * 2*pi), ...
    mag2db(abs([hb h1 h2 he hf])))
axis([0 5 -45 5])

grid
xlabel("Frequency (Hz)")
ylabel("Attenuation (dB)")
legend(["butter" "cheby1" "cheby2" "ellip" "besself"])


nexttile
plot([wb w1 w2 we wf]/(fc * 2 *pi), ...
    angle([hb h1 h2 he hf]) .* 180 ./ pi)
axis([0 5 -360 360])
grid
xlabel("Frequency (Hz)")
ylabel("Phase (o)")
legend(["butter" "cheby1" "cheby2" "ellip" "besself"])
