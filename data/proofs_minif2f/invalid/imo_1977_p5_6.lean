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

  have h₃ : q^2 + r = 1977,
  { assumption },
  have h₄ : r < a + b,
  { assumption },
  have h₅ : a^2 + b^2 = (a + b) * q + r,
  { assumption },
  have h₆ : a + b > 0,
  { linarith },
  have h₇ : r ≠ 0,
  { linarith },
  have h₈ : q ≠ 0,
  { linarith },
  have h₉ : (a + b) * q + r = a^2 + b^2,
  { assumption },
  have h₁₀ : q^2 + r = 1977,
  { assumption },
  have h₁₁ : a^2 + b^2 = (a + b) * q + r,
  { assumption },
  have h₁₂ : q^2 + r = 1977,
  { assumption },
  have h₁₃ : r < a + b,
  { assumption },
  have h₁₄ : a^2 + b^2 = (a + b) * q + r,
  { assumption },
  have
end
