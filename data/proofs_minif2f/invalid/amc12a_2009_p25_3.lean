import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem amc12a_2009_p25
  (a : ℕ → ℝ)
  (h₀ : a 1 = 1)
  (h₁ : a 2 = 1 / real.sqrt 3)
  (h₂ : ∀ n, 1 ≤ n → a (n + 2) = (a n + a (n + 1)) / (1 - a n * a (n + 1))) :
  abs (a 2009) = 0 :=
begin

  have h₃ : ∀ n, 1 ≤ n → a (n + 1) = 1 / (1 - a n),
  { intro n,
    cases n with n,
    { cases n with n,
      { exact absurd (1 ≤ 1) (not_le_of_lt zero_lt_one),
      { exact absurd (2 ≤ 1) (not_le_of_lt zero_lt_one),
      { exact absurd (1 ≤ 2) (not_le_of_lt zero_lt_one),
      { exact absurd (2 ≤ 2) (not_le_of_lt zero_lt_one),
      { exact absurd (3 ≤ 1) (not_le_of_lt zero_lt_one),
      { exact absurd (4 ≤ 1) (not_le_of_lt zero_lt_one),
      { exact absurd (5 ≤ 1) (not_le_of_lt zero_lt_one),
      { exact absurd (6 ≤ 1) (not_le_of_lt zero_lt_one),
      { exact absurd (7 ≤ 1) (not_le_of_lt zero_lt_one),
      { exact absurd (8 ≤ 1) (not_le_of_lt zero_lt_one),
      { exact absurd (9 ≤ 1) (not_le_of_lt zero_lt_one
end
