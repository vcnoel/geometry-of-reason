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

  have h₅ : (7^(x + 7)) = (7^x) * (7^7),
  by rw mul_pow,

  have h₆ : 7^x * 7^7 = (8^x),
  by rw h₃,

  have h₇ : 7^x = 8^x / 7^7,
  by rw div_eq_mul_inv,

  have h₈ : 7^x = (b^(7^7)) / 7^7,
  by rw h₄,

  have h₉ : (7^7)^(-1) * (b^(7^7)) = 7^x,
  by rw h₈,

  have h₁₀ : (7^7)^(-1) * (b^(7^7)) = 1 * 7^x,
  by rw one_mul,

  have h₁₁ : 1 = (7^7)^(-1) * (b^(7^7)),
  by rw mul_comm,

  have h₁₂ : (7^7)^(-1) = 1
end
