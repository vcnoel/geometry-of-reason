import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_algebra_159
  (b : ℝ)
  (f : ℝ → ℝ)
  (h₀ : ∀ x, f x = 3 * x^4 - 7 * x^3 + 2 * x^2 - b * x + 1)
  (h₁ : f 1 = 1) :
  b = -2 :=
begin

  have h₂ := f 1 = 3 * (1^4) - 7 * (1^3) + 2 * (1^2) - b * 1 + 1,
  rw h₁ at h₂,
  rw h₀ 1 at h₂,
  rw h₂,
  have h₃ : b = 1,
  {
    have h₄ : 3 * (1^4) - 7 * (1^3) + 2 * (1^2) - b * 1 + 1 = 1,
    { rw h₁ },
    have h₅ : 3 * (1^4) - 7 * (1^3) + 2 * (1^2) - b * 1 + 1 = 3 - 7 + 2 - b + 1,
    { rw pow_zero 1 },
    have h₆ : 3 - 7 + 2 - b + 1 = -1 - b + 1,
    { rw sub_sub 7 3 },
    have h₇ : -1 - b + 1 = - b,
    { rw sub_add 1 (-1
end
