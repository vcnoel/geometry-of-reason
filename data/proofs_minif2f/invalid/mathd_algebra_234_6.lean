import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_algebra_234
  (d : ℝ)
  (h₀ : 27 / 125 * d = 9 / 25) :
  3 / 5 * d^3 = 25 / 9 :=
begin

  -- Multiply both sides by 125 to get rid of the denominators
  rw [mul_assoc, mul_assoc] at h₀,
  -- Divide both sides by 3 to isolate d^3
  have h₁ : d^3 = 125 * (9 / 25) / (3 * 27),
  { rw [div_mul, mul_assoc, div_mul] at h₀,
    rw [div_div, div_mul] at h₁ },
  -- Now d^3 = 25/9
  have h₂ : d^3 = 25 / 9,
  { rw [h₁, div_mul, div_mul, div_mul, mul_assoc, div_mul] },
  -- So 3/5 * d^3 = 3/5 * 25/9
  have h₃ : 3 / 5 * d^3 = 3 / 5 * (25 / 9),
  { rw [h₂] },
  -- Which is 25/9
  have h₄ : 3 / 5 * d^3 = 25 / 9,
  { rw [h₃, div_mul, div_mul, mul_assoc, div_mul] },

end
