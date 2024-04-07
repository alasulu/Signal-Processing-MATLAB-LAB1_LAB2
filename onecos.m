function [xx0,tt0] = onecos(f,amp,dur,tstart)
w = 2*pi*f;
tt0 = linspace(tstart,tstart+dur,32*dur*f);
xx0 = real(amp)*cos(w*tt0) - imag(amp)*sin(w*tt0);
plot(tt0,xx0)
end