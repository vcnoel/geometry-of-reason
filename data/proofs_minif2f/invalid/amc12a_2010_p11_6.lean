import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem amc12a_2010_p11
  (x b : ℝ)
  (h₀ : 0 < b)
  (h₁ : (7 : ℝ)^(x + 7) = 8^x)
  (h₂ : x = real.logb b (7^7)) :
  b = 8/7 :=
begin

  have h₃ : b = 7^7 / (7^7 / b),
  by {rw h₂, exact pow_inv_cancel h₀},
  have h₄ : 7^7 / b = 8^x / 7^x,
  by {rw h₁, exact pow_inv_cancel h₀},
  have h₅ : 7^7 / b = 8/7,
  by {rw h₄, exact pow_sub_cancel 7 x},
  exact h₃.symm.trans h₅,

end
