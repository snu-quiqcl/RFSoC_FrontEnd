%% Read Three Port S parameter
ckt1 = read(rfckt.passive,'TCM2-33X+.s3p');
freq = (50E6:1E6:4E9);
a1 = analyze(ckt1,freq);
s3pA = sparameters(a1);

ckt2 = read(rfckt.passive,'HMC349ALP4CE_RF1sel_Vctl=5V_EN=0V_De-embedded.s3p');
freq = (50E6:1E6:4E9);
a2 = analyze(ckt2,freq);
sparams_3p2 = sparameters(a2);
s2pG = snp2smp(sparams_3p2,[1 2 3]); % reorder port 

%% Read Two Port Sparameter
s2pA0 = sparameters('Pi_pad_ckt.s2p');
s2pF = sparameters('AMP_out_ckt.s2p');
s2pC = sparameters('ERA-3SM+___42mA___Plus25degC.s2p');
s2pB = sparameters('LFCG-1000+_Plus25degC.s2p');
s2p_cap = sparameters('cap_pad_ckt.s2p');
common_freq = (50E6:1E6:2E10)'; % Hz
% Interpolate S-parameters for A, B, and C to the common frequency range
s2pC_interp = interpolateSParameters(s2pC, common_freq);
s2pB_interp = interpolateSParameters(s2pB, common_freq);
s2pF_interp = interpolateSParameters(s2pF, common_freq);
s2pA_interp = interpolateSParameters3(s3pA, common_freq,'D');
s2pA0_interp = interpolateSParameters(s2pA0, common_freq);
s2pG_interp = interpolateSParameters(s2pG, common_freq);
s2p_cap_interp = interpolateSParameters(s2p_cap, common_freq);


s_cascade = cascadesparams(s2pA0_interp,s2p_cap_interp,s2pA_interp, s2pB_interp,s2p_cap_interp, s2pC_interp,s2pF_interp,s2p_cap_interp,s2pG_interp,s2p_cap_interp);

%% Analyze the cascaded network (example: plot S21)
freq = s_cascade.Frequencies;

s11 = rfparam(s_cascade, 1, 1);
s21 = rfparam(s_cascade, 2, 1);
s12 = rfparam(s_cascade, 1, 2);
s22 = rfparam(s_cascade, 2, 2);
figure;

tiledlayout(2,4)

%% S11

nexttile
plot(freq, 20*log10(abs(s11)),LineWidth=0.8, Color='b');
title('S11 magnitude');
xlabel('Frequency (Hz)');
ylabel('Magnitude (dB)');

nexttile
plot(freq, unwrap(angle(s11)).*180./pi,LineWidth=0.8, Color='r');
title('S11 phase');
xlabel('Frequency (Hz)');
ylabel('Degree (^{o})');
%% S21
nexttile
plot(freq, 20*log10(abs(s21)),LineWidth=0.8, Color='b');
title('S21 magnitude');
xlabel('Frequency (Hz)');
ylabel('Magnitude (dB)');

nexttile
plot(freq, unwrap(angle(s21)).*180./pi,LineWidth=0.8, Color='r');
title('S21 phase');
xlabel('Frequency (Hz)');
ylabel('Degree (^{o})');

%% S12
nexttile
plot(freq, 20*log10(abs(s12)),LineWidth=0.8, Color='b');
title('S12 magnitude');
xlabel('Frequency (Hz)');
ylabel('Magnitude (dB)');

nexttile
plot(freq, unwrap(angle(s12)).*180./pi,LineWidth=0.8, Color='r');
title('S12 phase');
xlabel('Frequency (Hz)');
ylabel('Degree (^{o})');
%% S22
nexttile
plot(freq, 20*log10(abs(s22)),LineWidth=0.8, Color='b');
title('S22 magnitude');
xlabel('Frequency (Hz)');
ylabel('Magnitude (dB)');

nexttile
plot(freq, unwrap(angle(s22)).*180./pi,LineWidth=0.8, Color='r');
title('S22 phase');
xlabel('Frequency (Hz)');
ylabel('');
%%
hold off
%% Function to interpolate S-parameters
function s2p_interp = interpolateSParameters(s2p, freq)
    F = s2p.Frequencies;
    S11 = zeros(size(s2p.Parameters(1,1,:),3),1);
    S12 = zeros(size(s2p.Parameters(1,1,:),3),1);
    S21 = zeros(size(s2p.Parameters(1,1,:),3),1);
    S22 = zeros(size(s2p.Parameters(1,1,:),3),1);
    for i = 1:size(s2p.Parameters(1,1,:),3)
        S11(i) = s2p.Parameters(1,1,i);
    end
    for i = 1:size(s2p.Parameters(1,1,:),3)
        S12(i) = s2p.Parameters(1,2,i);
    end
    for i = 1:size(s2p.Parameters(1,1,:),3)
        S21(i) = s2p.Parameters(2,1,i);
    end
    for i = 1:size(s2p.Parameters(1,1,:),3)
        S22(i) = s2p.Parameters(2,2,i);
    end
    S = zeros(2,2,size(freq,1));
    S11 = interp1(s2p.Frequencies, S11,freq);
    S12 = interp1(s2p.Frequencies, S12,freq);
    S21 = interp1(s2p.Frequencies, S21,freq);
    S22 = interp1(s2p.Frequencies, S22,freq);

    for i = 1:size(freq,1)
        S(1,1,i) = S11(i);
        S(1,2,i) = S12(i);
        S(2,1,i) = S21(i);
        S(2,2,i) = S22(i);
    end
    s2p_interp = sparameters(S, freq);
end

function s3p_interp = interpolateSParameters3(s3p, freq, mode)
    F = s3p.Frequencies;
    S_11 = zeros(size(s3p.Parameters(1,1,:),3),1);
    S_1D = zeros(size(s3p.Parameters(1,1,:),3),1);
    S_1C = zeros(size(s3p.Parameters(1,1,:),3),1);
    S_C1 = zeros(size(s3p.Parameters(1,1,:),3),1);
    S_DD = zeros(size(s3p.Parameters(1,1,:),3),1);
    S_DC = zeros(size(s3p.Parameters(1,1,:),3),1);
    S_D1 = zeros(size(s3p.Parameters(1,1,:),3),1);
    S_CD = zeros(size(s3p.Parameters(1,1,:),3),1);
    S_CC = zeros(size(s3p.Parameters(1,1,:),3),1);

    S11 = zeros(size(s3p.Parameters(1,1,:),3),1);
    S12 = zeros(size(s3p.Parameters(1,1,:),3),1);
    S21 = zeros(size(s3p.Parameters(1,1,:),3),1);
    S22 = zeros(size(s3p.Parameters(1,1,:),3),1);
    for i = 1:size(s3p.Parameters(1,1,:),3)
        S_11(i) = s3p.Parameters(1,1,i);
    end
    for i = 1:size(s3p.Parameters(1,1,:),3)
        S_1D(i) = (s3p.Parameters(1,2,i)-s3p.Parameters(1,3,i))./sqrt(2);
    end
    for i = 1:size(s3p.Parameters(1,1,:),3)
        S_D1(i) = (s3p.Parameters(2,1,i)-s3p.Parameters(3,1,i))./sqrt(2);
    end
    for i = 1:size(s3p.Parameters(1,1,:),3)
        S_1C(i) = (s3p.Parameters(1,2,i)+s3p.Parameters(1,3,i))./sqrt(2);
    end
    for i = 1:size(s3p.Parameters(1,1,:),3)
        S_C1(i) = (s3p.Parameters(2,1,i)+s3p.Parameters(3,1,i))./sqrt(2);
    end
    for i = 1:size(s3p.Parameters(1,1,:),3)
        S_DD(i) = (s3p.Parameters(2,2,i)-s3p.Parameters(2,3,i)-s3p.Parameters(3,2,i)+s3p.Parameters(3,3,i))./2;
    end
    for i = 1:size(s3p.Parameters(1,1,:),3)
        S_DC(i) = (s3p.Parameters(2,2,i)+s3p.Parameters(2,3,i)-s3p.Parameters(3,2,i)-s3p.Parameters(3,3,i))./2;
    end
    for i = 1:size(s3p.Parameters(1,1,:),3)
        S_CC(i) = (s3p.Parameters(2,2,i)+s3p.Parameters(2,3,i)+s3p.Parameters(3,2,i)+s3p.Parameters(3,3,i))./2;
    end
    for i = 1:size(s3p.Parameters(1,1,:),3)
        S_CD(i) = (s3p.Parameters(2,2,i)-s3p.Parameters(2,3,i)+s3p.Parameters(3,2,i)-s3p.Parameters(3,3,i))./2;
    end
    S = zeros(2,2,size(freq,1));
    if mode == 'D' %Differential
        S11 = interp1(s3p.Frequencies, S_DD,freq);
        S12 = interp1(s3p.Frequencies, S_D1,freq);
        S21 = interp1(s3p.Frequencies, S_1D,freq);
        S22 = interp1(s3p.Frequencies, S_11,freq);
    else mode == 'C' %Common Mode
        S11 = interp1(s3p.Frequencies, S_CC,freq);
        S12 = interp1(s3p.Frequencies, S_C1,freq);
        S21 = interp1(s3p.Frequencies, S_1C,freq);
        S22 = interp1(s3p.Frequencies, S_11,freq);
    end

    for i = 1:size(freq,1)
        S(1,1,i) = S11(i);
        S(1,2,i) = S12(i);
        S(2,1,i) = S21(i);
        S(2,2,i) = S22(i);
    end
    s3p_interp = sparameters(S, freq);
end