import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_algebra_51
  (a b : ℝ)
  (h₀ : 0 < a ∧ 0 < b)
  (h₁ : a + b = 35)
  (h₂ : a = (2/5) * b) :
  b - a = 15 :=
begin

  have h₃ : a = 7 ∧ b = 28,
  by {split, exact (2/5) * 35 = 14, exact 35 - 14 = 21},
  have h₄ : b - a = 21,
  by {rw h₃.2 - h₃.1, exact 28 - 7 = 21},
  rw h₄,
  exact 15 = 15,

end
