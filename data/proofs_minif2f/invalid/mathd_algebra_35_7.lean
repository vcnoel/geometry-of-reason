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

  calc
  p (q 2) = 2 - (q 2)^2 : by rw h₀
 ... = 2 - (6/2)^2 : by rw h₁
 ... = 2 - 9/4 : by ring
 ... = -7/4 : by ring
 ... = -7 : by ring


end
