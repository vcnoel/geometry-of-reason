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

  -- We can use the fact that 0 < a and 0 < b to get a lower bound on a and b.
  have h₃ : 1 ≤ a ∧ 1 ≤ b,
  from ⟨by linarith, by linarith⟩,

  -- We can use the fact that b ≤ a to get an upper bound on b.
  have h₄ : b ≤ a,
  from h₀.right,

  -- We can use the fact that (a + b) % 10 = 2 to get a congruence modulo 10 for a and b.
  have h₅ : a ≡ -b [MOD 10],
  from congr_arg2 (λ x y, x + y) (by linarith) (by linarith),

  -- We can use the fact that (2 * a + b) % 10 = 1 to get another congruence modulo 10 for a and b.
  have h₆ : 2 * a ≡ -b [MOD 10],
  from congr_arg2 (λ x y, 2 * x + y) (by linarith) (by linarith),

  -- We can use the fact that a ≡ -b
end
