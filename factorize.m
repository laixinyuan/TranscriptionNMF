function [ activeNotes ] = factorize( v, W, beta )
%FACTORIZE Summary of this function goes here
%   Detailed explanation goes here

%fftSize        = 2^12;
%downSampleRate = 2;
threshold = 0.01;
maxCount  = 100;
h         = ones(88, 1);
count     = 0;

while dbeta(beta, v, W*h)>threshold && count<maxCount
    h  = h .* ( ( W'*( (W*h).^(beta-2).*v) ) ./ ( W'*(W*h).^(beta-1)) );
    count = count +1;
end

activeNotes = h/max(h);

end

