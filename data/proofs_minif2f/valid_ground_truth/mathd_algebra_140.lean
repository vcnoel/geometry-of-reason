import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_algebra_140
  (a b c : ℝ)
  (h₀ : 0 < a ∧ 0 < b ∧ 0 < c)
  (h₁ : ∀ x, 24 * x^2 - 19 * x - 35 = (((a * x) - 5) * ((2 * (b * x)) + c))) :
  a * b - 3 * c = -9 :=
begin
  have h₂ := h₁ 0,
  have h₂ := h₁ 1,
  have h₃ := h₁ (-1),
  linarith,
end