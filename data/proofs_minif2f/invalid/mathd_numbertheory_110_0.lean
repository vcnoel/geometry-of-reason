import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_numbertheory_110
  (a b : ℕ)
  (h₀ : 0 < a ∧ 0 < b ∧ b ≤ a)
  (h₁ : (a + b) % 10 = 2)
  (h₂ : (2 * a + b) % 10 = 1) :
  (a - b) % 10 = 6 :=
begin

  -- (a + b) % 10 = 2, 
  -- (2 * a + b) % 10 = 1,
  -- so (a + b + 2 * a + b) % 10 = 3,
  -- which is equivalent to (3 * a + 2 * b) % 10 = 3,
  -- which is equivalent to (3 * a + 2 * b - 20) % 10 = -17,
  -- which is equivalent to (3 * a + 2 * b - 20) % 10 = 3,
  -- which is equivalent to (3 * a - 2 * b) % 10 = 7,
  -- which is equivalent to (3 * a - 2 * b + 10) % 10 = 7,
  -- which is equivalent to (3 * a - 2 * b + 10) % 10 = 7,
  -- which is equivalent to (3 * a - 2 * b) % 10 = 7,
  -- which is equivalent to (3 * a - 2 * b - 10) % 10 = -3,
  -- which is
end
