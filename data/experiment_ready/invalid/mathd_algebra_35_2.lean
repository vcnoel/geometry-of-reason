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

  simp at h₀,
  simp at h₁,
  calc
  p (q 2) = p (6/2) : by {rw h₁, refl}
 ... = 2 - (6/2)^2 : by {rw h₀, refl}
 ... = 2 - 36/4 : by {simp, refl}
 ... = 2 - 9 : by {simp, refl}
 ... = -7 : by {simp, refl}

end
