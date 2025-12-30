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
  have h₅ := h₃.trans (h₄.trans (real.logb_log (b ^ 7) (7 ^ 7))),
  have h₆ := h₅.congr (congr_arg real.logb (pow_eq_pow _ _ _)),
  have h₇ := h₆.trans (real.logb_log 8 7),
  have h₈ := h₇.congr (congr_arg real.logb (pow_eq_pow _ _ _)),
  have h₉ := h₈.congr (congr_arg real.logb (h₀.trans (real.log_pos _ _))),
  have h₁₀ := h₉.congr (congr_arg real.logb (real.log_eq_zero _ _)),
  have h₁₁ := h₁₀.congr (congr_arg real.logb (real.log_pos _ _)),
  have h₁₂ := h₁₁.congr (congr_arg real.logb (real.log_eq_zero _ _)),
  have h₁₃ := h₁₂.congr (congr_arg real.logb (real.log_pos _ _)),
  have h₁�
end
