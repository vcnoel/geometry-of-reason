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

  have h₃ := pow_real_logb b (7^7) (7^7),
  have h₄ := pow_real_logb b (7^7) (7^7),
  have h₅ := h₁,
  have h₆ := h₂,
  have h₇ := h₅.trans (h₆.trans h₄),
  have h₈ := real.logb_eq_pow h₇,
  have h₉ := h₈.trans h₃,
  have h₁₀ := eq.trans (pow_real_pow b 7^7 1) (pow_real_pow b 7^7 1),
  have h₁₁ := h₁₀.trans h₉,
  have h₁₂ := h₁₁.trans h₆,
  have h₁₃ := h₁₂.trans (eq.trans (pow_real_pow b 7^7 1) (eq.trans (pow_real_pow b 7^7 1) (pow_real_pow b 7^7 (-1)))),
  have h₁₄ := h₁₃.trans (eq.trans (pow_real_pow b 7^7 1) (pow_real_pow b 7^7 1
end
