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

  have h₃ : 35/2 < b, from
    lt_of_lt_of_le (lt_div_of_lt (lt_mul_of_lt_of_pos h₀.2 h₀.1) h₀.1)
      (div_le_of_le_mul_of_lt h₁ h₀.1),

  have h₄ : b < 70, from
    lt_of_lt_of_le h₃ (mul_le_of_le_div h₁ (1/2)),

  have h₅ : 35/2 < a, from
    lt_of_lt_of_le (lt_div_of_lt (lt_mul_of_lt_of_pos h₀.2 h₀.1) h₀.1)
      (div_le_of_le_mul_of_lt h₁ h₀.1),

  have h₆ : a < 70, from
    lt_of_lt_of_le h₅ (mul_le_of_le_div h₁ (1/2)),

  have h₇ : 7 < b, from
    lt_of_lt_of_le (lt_div_of_lt h₅ (1/2)) h₃,

  have h₈ : 7 < a, from
    lt_of_lt_of_le (lt_div_of_lt h
end
