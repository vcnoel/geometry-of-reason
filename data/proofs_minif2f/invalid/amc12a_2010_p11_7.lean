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

  have h₃ : (7 : ℝ)^(x + 7) = 7^7 * 7^x,
  by {
    norm_num,
    simp only [pow_add],
  },
  have h₄ : 8^x = 7^7 * 7^x,
  by {
    rw h₁,
    exact h₃,
  },
  have h₅ : 8^x / 7^x = 7^7,
  by {
    rw h₄,
    simp only [div_pow],
  },
  have h₆ : 8^x / 7^x = (8/7)^x,
  by {
    simp only [div_pow],
  },
  have h₇ : (8/7)^x = 7^7,
  by {
    rw h₆,
    exact h₅,
  },
  have h₈ : 8/7 = (7^7)^(1/x),
  by {
    rw h₇,
    simp only [pow_inv],
  },
  have h₉ : b = (7^7)^(1/x),
  by {
    rw h₂,
    exact h₈
end
