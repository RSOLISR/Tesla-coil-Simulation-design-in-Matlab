


#Find the Resonanance point by bode plot in Matlab.


% resonance point at different value of capacitance

R=1;               // Resistance   

L=19.22e-6;        // Inductance 

C=0.023e-6;        // Capacitance 

G=tf([1 0],[1 R/L 1/(L*C)]);          // Transfer function of the LC circuit.  
C1=4*C; C2=2*C;C3=C/2;C4=C/4;         // plotting at various Capacitance input. 
G1=tf([1 0],[1 R/L 1/(L*C1)]);
G2=tf([1 0],[1 R/L 1/(L*C2)]);
G3=tf([1 0],[1 R/L 1/(L*C3)]);
G4=tf([1 0],[1 R/L 1/(L*C4)]);
bode(G,G1,G2,G3,G4),grid
