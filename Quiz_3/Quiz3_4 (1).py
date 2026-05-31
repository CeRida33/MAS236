from math import sqrt, pi

print("\n............")
# --- known variables ---
d = 20     #mm
preload = 0.75  # preload i %
C = 0.1746
P = 67 * 1e3

# --- ↓↓ Variabler man må finner fra tabeller i boka ↓↓ ---
# Se side 926 i boka etter riktig minimum proof strength verdi, f.eks grade 8.8 er 600MPa
S_p = 970

# Se side 909 i boka etter riktig tensile stress area, f.eks M16 -> A_t = 156.67mm^2
A_t = 244.79


# --- Utregning ---
P_b = C * P
F_i = preload * S_p * A_t


# --- Resultat ---
F_b = F_i + P_b
print("Maximum force in bolt is: ", F_b, "N")
print("\n")