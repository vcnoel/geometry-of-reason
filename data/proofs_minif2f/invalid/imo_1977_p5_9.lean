import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem imo_1977_p5
  (a b q r : ℕ)
  (h₀ : r < a + b)
  (h₁ : a^2 + b^2 = (a + b) * q + r)
  (h₂ : q^2 + r = 1977) :
  (abs ((a:ℤ) - 22) = 15 ∧ abs ((b:ℤ) - 22) = 28) ∨ (abs ((a:ℤ) - 22) = 28 ∧ abs ((b:ℤ) - 22) = 15) :=
begin

  have h₃ : 1977 = 1977 * 1, by refl,
  have h₄ : q * 1977 + r = q * (q * 1977 + r), by ring,
  have h₅ : (q^2 * 1977 + q * r) + r = q * (q^2 * 1977 + q * r), by ring,
  have h₆ : (q^2 + 1) * 1977 + q * r + r = q * ((q^2 + 1) * 1977 + q * r), by ring,
  have h₇ : (q^2 + 1) * 1977 + (q + 1) * r = q * ((q^2 + 1) * 1977 + (q + 1) * r), by ring,
  have h₈ : q * (q^2 + 1) * 1977 + (q + 1) * r = q * ((q^2 + 1) * 1977 + (q + 1) * r), by ring,
  have h₉ : q * 197
end
