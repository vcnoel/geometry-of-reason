import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_algebra_144
  (a b c d : ℕ)
  (h₀ : 0 < a ∧ 0 < b ∧ 0 < c ∧ 0 < d)
  (h₀ : (c : ℤ) - b = d)
  (h₁ : (b : ℤ) - a = d)
  (h₂ : a + b + c = 60)
  (h₃ : a + b > c) :
  d < 10 :=
begin

  -- 1 / 1
  have h₃ : a < c, from lt_of_lt_of_le h₃ h₂,
  -- 2 / 2
  have h₄ : a < b, from lt_of_le_of_lt h₂ h₁,
  -- 3 / 3
  have h₅ : a < d, from lt_of_lt_of_le h₄ h₁,
  -- 4 / 4
  have h₆ : a + b + c - d = 0, from eq_zero_of_sub_eq_sub h₀ h₁,
  -- 5 / 5
  have h₇ : a + b - d + c = 0, from eq_sub_of_add_eq_zero h₆,
  -- 6 / 6
  have h₈ : a + b - d < c, from lt_of_lt_of_le h₃ h₇,
  -- 7 / 7
  have h₉ : a + b < d + c, from lt_add_of_sub_lt_sub h₈ h₇,
  -- 8 / 8
  have h₁₀ : 2 * (a + b) < 2 *
end
