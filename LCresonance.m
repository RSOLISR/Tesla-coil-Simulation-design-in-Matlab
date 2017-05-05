% resonance point at different value of capacitance
R=1; L=19.22e-6; C=0.023e-6;
G=tf([1 0],[1 R/L 1/(L*C)]);
C1=4*C; C2=2*C;C3=C/2;C4=C/4;
G1=tf([1 0],[1 R/L 1/(L*C1)]);
G2=tf([1 0],[1 R/L 1/(L*C2)]);
G3=tf([1 0],[1 R/L 1/(L*C3)]);
G4=tf([1 0],[1 R/L 1/(L*C4)]);
bode(G,G1,G2,G3,G4),grid
