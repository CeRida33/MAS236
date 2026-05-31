def lerp(x0, x1, y0, y1, x):
    """
    Lineær interpolasjon mellom (x0, y0) og (x1, y1).
    """
    return y0 + (y1 - y0) * ((x - x0) / (x1 - x0))


# Inputverdier
d = 10       # bolt diameter, mm
l1 = 60      # mm
l2 = 14      # mm
E_bolt = 210 # Modulus for bolt
E_material = 210 # Modulus for materials

# Beregninger
l_tot = l1 + l2
r = E_material / E_bolt
j = d / l_tot
print("Polar second moment of area j = : ", j)

# Tabellverdier for interpolasjon (side 941 i boka)
j_low = 0.1
j_high = 0.20

p_0_low, p_0_high = 0.4389, 0.6118
p_1_low, p_1_high = -0.9197, -1.1715
p_2_low, p_2_high = 0.8901, 1.0875
p_3_low, p_3_high = -0.3187, -0.3806

# Interpolerte koeffisienter
p_0 = lerp(j_low, j_high, p_0_low, p_0_high, j)
p_1 = lerp(j_low, j_high, p_1_low, p_1_high, j)
p_2 = lerp(j_low, j_high, p_2_low, p_2_high, j)
p_3 = lerp(j_low, j_high, p_3_low, p_3_high, j)

# Beregn C
C = p_0 + p_1 * r + p_2 * r**2 + p_3 * r**3

print("\nInterpolerte verdier:")
print(f"p_0 = {p_0:.4f}")
print(f"p_1 = {p_1:.4f}")
print(f"p_2 = {p_2:.4f}")
print(f"p_3 = {p_3:.4f}")
print(f"C   = {C:.4f}")
