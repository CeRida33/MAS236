from math import pi, sqrt

print("\n..........")
# Sett inn verdier fra oppgaven
d = 5  # mm
is_galvanized = True  # True eller False
coarse_threads = True  # True = grove gjenger, False = fine
N = 300000000  # Antall sykluser

# Se på hvilken reliability du får i oppgaven, f.eks. 99.999%. 
# Gå til tabell 2-2 på side 41 i boka.
c_reliab = 0.814

# Beregning av se
s_e_at_50_percent = (150 / d) + 45
s_e = s_e_at_50_percent * c_reliab

if is_galvanized:
    s_e *= 0.8

if not coarse_threads:
    s_e *= 0.7

# Beregning av sf
if N > 10**6:
    s_f = s_e
else:
    s_f = s_e * ((2 * 10**6) / N) ** (1/3)

print("Fatigue strength, s_f =", s_f, "MPa")
