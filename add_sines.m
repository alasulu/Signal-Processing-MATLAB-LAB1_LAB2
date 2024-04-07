function [xx0, tt0] = add_sines(freqs, Camps, dur, start)
    fs = 1000;
    tt0 = start:1/fs:(start+dur);
    N = length(freqs);
    xx0 = zeros(size(tt0));    
    for p = 1:N
        xx0 = xx0 + real(Camps(p) * exp(1j*2*pi*freqs(p)*tt0));
    end
    plot(tt0, xx0);
    xlabel('Time');
    ylabel('Amplitude');
    title('Waveform (Time vs. Amplitude)');
    grid on;
end


