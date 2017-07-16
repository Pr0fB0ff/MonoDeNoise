function [out] = Proscessor(RawStereo)
    %Generates matrixes to work with
    L = RawStereo(:,1);
    R = RawStereo(:,2);
    Li = -L;
    Ri = -R;
    Mono = (L + R) / 2;
    
    %computes unique noise in each channel
    RNoise = Li + Mono;
    LNoise = Ri + Mono;
    
    %uses knowledge of noise to remove it and makes a mono output
    out = Mono - RNoise - LNoise;
end

