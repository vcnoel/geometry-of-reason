import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_numbertheory_284
  (a b : ℕ)
  (h₀ : 1 ≤ a ∧ a ≤ 9 ∧ b ≤ 9)
  (h₁ : 10 * a + b = 2 * (a + b)) :
  10 * a + b = 18 :=
begin

  -- 10 * a + b = 2 * (a + b)
  -- 10 * a + b = 2 * a + 2 * b
  -- 10 * a + b = 2 * a + 2 * b
  -- 10 * a + b = 2 * a + 2 * b
  -- 8 * a = 2 * b
  -- 4 * a = b
  -- b = 4 * a
  -- 10 * a + b = 10 * a + 4 * a
  -- 10 * a + b = 14 * a
  -- 10 * a + b = 18
  -- 14 * a = 18
  -- a = 18 / 14
  -- a = 9 / 7
  -- a = 9 / 7
  -- a = 9 / 7
  -- contradiction
  have h₂ : 8 * a = 2 * b,
    by {
      -- 10 * a + b = 2 * (a + b)
      -- 10 * a + b = 2 * a + 2 * b
end
