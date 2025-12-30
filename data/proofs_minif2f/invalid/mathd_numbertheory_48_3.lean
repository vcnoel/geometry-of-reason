import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_numbertheory_48
  (b : ℕ)
  (h₀ : 0 < b)
  (h₁ : 3 * b^2 + 2 * b + 1 = 57) :
  b = 4 :=
begin

  have h₂ : 3 * b^2 + 2 * b + 1 = 57,
  from h₁,

  have h₃ : 3 * b^2 + 2 * b = 56,
  from sub_eq_of_eq_add_right (eq_of_eq_sub h₂ 1),

  have h₄ : b^2 + (2/3) * b = 56/3,
  from div_eq_of_div_eq_mul_left (eq_of_eq_mul_div h₃ 3),

  have h₅ : b^2 + (2/3) * b = (8/3)^2,
  from (eq_of_eq_sub (eq_of_eq_add_right (eq_of_eq_add_right h₄ (8/3)^2)) (2/3) * 8/3),

  have h₆ : b = 8/3,
  from eq_of_eq_sub (eq_of_eq_mul_div h₅ 3) (2/3),

  have h₇ : 0 < 8/3,
  from div_pos_of_pos_mul_pos h₀ (3^0),

  have h₈ : b = 4,
  from eq_of_eq_sub
end
