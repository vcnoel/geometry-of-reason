import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem aime_1991_p1
  (x y : ℕ)
  (h₀ : 0 < x ∧ 0 < y)
  (h₁ : x * y + (x + y) = 71)
  (h₂ : x^2 * y + x * y^2 = 880) :
  x^2 + y^2 = 146 :=
begin

  have h₃ := (pow_add x 2 y) * (y) + (x * pow_add y 2 x),
  rw [h₂, h₃] at h₁,
  ring at h₁,
  norm_num at h₁,
  exact h₁,

end
