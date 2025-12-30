import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem amc12_2000_p11
  (a b : ℝ)
  (h₀ : a ≠ 0 ∧ b ≠ 0)
  (h₁ : a * b = a - b) :
  a / b + b / a - a * b = 2 :=
begin

  -- Rearrange the equation a * b = a - b to get a * b - a + b = 0
  have h₂ : a * b - a + b = 0,
  by rw [h₁, sub_sub_sub_cancel_left],

  -- Rearrange the equation a * b - a + b = 0 to get a * b - a = - b
  have h₃ : a * b - a = -b,
  by rw [sub_add_cancel, h₂],

  -- Rearrange the equation a * b - a = - b to get a * b = a - b
  have h₄ : a * b = a - b,
  by rw [sub_add_cancel, h₃],

  -- Calculate a / b + b / a - a * b
  have h₅ : a / b + b / a - a * b = a / b + b / a - a + b,
  by rw [h₄, sub_sub_sub_cancel_left],

  -- Rearrange the equation a / b + b / a - a + b = 2 to get a / b + b / a - a * b = 2
  have h�
end
