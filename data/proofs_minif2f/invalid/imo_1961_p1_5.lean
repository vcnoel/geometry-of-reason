import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem imo_1961_p1
  (x y z a b : ℝ)
  (h₀ : 0 < x ∧ 0 < y ∧ 0 < z)
  (h₁ : x ≠ y)
  (h₂ : y ≠ z)
  (h₃ : z ≠ x)
  (h₄ : x + y + z = a)
  (h₅ : x^2 + y^2 + z^2 = b^2)
  (h₆ : x * y = z^2) :
  0 < a ∧ b^2 < a^2 ∧ a^2 < 3 * b^2 :=
begin

  -- Assume WLOG that x ≤ y ≤ z
  cases h₀ with hx₀ hy₀ hz₀,
  cases h₁,
  cases h₂,
  cases h₃,

  -- We have that x^2 + y^2 + z^2 = b^2, so x^2 + y^2 ≤ b^2
  have h₇ : x^2 + y^2 ≤ b^2,
    by linarith,

  -- Since x^2 + y^2 + z^2 = b^2, we have z^2 ≤ b^2
  have h₈ : z^2 ≤ b^2,
    by linarith,

  -- Since x * y = z^2, we have x * y ≤ z^2
  have h₉ : x * y ≤ z^2,
    by linarith,

  -- We have that x^2 + y^2 + z^2 = b^2, so x^2 + y^2 ≤ b^2
  have h₁₀ : x^2 + y^2 ≤ b^2,
    by linarith,

  -- Since x^2 + y^2 ≤ b^2
end
