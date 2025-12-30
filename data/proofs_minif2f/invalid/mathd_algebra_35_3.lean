import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_algebra_35
  (p q : ℝ → ℝ)
  (h₀ : ∀ x, p x = 2 - x^2)
  (h₁ : ∀ x ≠ 0, q x = 6 / x) :
  p (q 2) = -7 :=
begin

  simp [h₀, h₁, two_ne_zero],
  refl,

end
