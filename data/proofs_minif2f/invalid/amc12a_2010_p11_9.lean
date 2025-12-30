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

  have h₃ := h₁,
  have h₄ := h₂,

  have h₅ := (h₃.trans (pow_logb 7 7)),

  have h₆ := h₅.trans (real.logb_eq_div _ _),

  have h₇ := h₆.trans (h₄.symm),

  have h₈ := (h₇.trans (div_eq_one_iff_eq _ _).mp),

  exact h₈,

end
