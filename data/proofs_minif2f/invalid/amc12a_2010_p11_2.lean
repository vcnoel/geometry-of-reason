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
  have h₅ := h₃.trans (pow_eq_pow_logb h₄ (7^7)),
  have h₆ := h₅.trans (congr_arg (λ a, a * 7^7) (pow_add _ _)),
  have h₇ := h₆.trans (congr_arg (λ a, a * 7^7) (mul_comm _ _)),
  have h₈ := h₇.trans (congr_arg (λ a, a * 7^7) (pow_one _)),
  have h₉ := h₈.trans (congr_arg (λ a, a * 7^7) (mul_one _)),
  have h₁₀ := h₉.trans (congr_arg (λ a, a * 7^7) (congr_arg (λ a, a * 7^7) (h₂))),
  have h₁₁ := h₁₀.trans (congr_arg (λ a, a * 7^7) (pow_add _ _)),
  have h₁₂ := h₁₁.trans (congr_arg (λ a, a
end
