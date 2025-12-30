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

  have h₃ : x + 7 = real.logb b (8^7),
  by {rw h₂, exact real.logb_eq_log (pow_real_eq_pow_log b 8 7).symm},
  have h₄ : (7^7) * b = 8^7,
  by {rw h₃, exact (pow_real_eq_pow_log b 8 7).symm},
  have h₅ : b = (8^7) / (7^7),
  by {rw h₄, exact real.div_eq_mul_inv (8^7) (7^7)},
  have h₆ : b = (8/7)^7,
  by {rw h₅, exact real.pow_div_pow 8 7 7},
  have h₇ : b = 8/7,
  by {rw h₆, exact real.pow_div_pow 8 7 7},
  exact h₇,

end
