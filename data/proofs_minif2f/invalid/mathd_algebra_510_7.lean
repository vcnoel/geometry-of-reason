import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_algebra_510
  (x y : ℝ)
  (h₀ : x + y = 13)
  (h₁ : x * y = 24) :
  real.sqrt (x^2 + y^2) = 11 :=
begin

  have h₂ : (x^2 + y^2) = 25,
  { calc (x^2 + y^2) = (x + y)^2 - 2 * x * y : by ring
       ... = 13^2 - 2 * 24 : by rw [h₀, h₁]
       ... = 169 - 48 : by ring
       ... = 121 : by ring
       ... = 25^2 : by ring
       ... = 25 : by ring },
  have h₃ : real.sqrt (x^2 + y^2) = 5,
  { calc real.sqrt (x^2 + y^2) = real.sqrt 25 : by rw h₂
       ... = 5 : by norm_num },
  have h₄ : real.sqrt (x^2 + y^2) = 11,
  { calc real.sqrt (x^2 + y^2) = 11 : by linarith },
  exact h₄,

end
