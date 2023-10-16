function F = wlc(x,P,T,L0)
% Worm-like chain force
% Input:
%  x: Extension of molecule (nm)
%  P: Persistence length (nm)
%  T: Temperature (K)
%  L0: Contour length (Molecule length at maximun extension) (nm)
% Output: 
%  F: Force (pN)
% Ref:
%   https://en.wikipedia.org/wiki/Worm-like_chain
%   Uses the more accurate approximation for the force-extension behavior 
%   with about 0.01% relative error

% Are Mjaavatten, Septemer 2011

kB_SI = 1.380649e-23; % J/K
% When f is in pN and P in nm:
kB = kB_SI*1e21;  % zJ/K = pN*nm/K

z = x/L0;
% Simple fit:
f0 = 1./(4*(1-z).^2)-1/4+z;

% Improved fit:
alpha = [0,0,-0.5164228,-2.737418,16.07497,-38.87607,39.49944,-14.17718];
f = f0 + polyval(fliplr(alpha),z);
F = kB*T/P*f;


