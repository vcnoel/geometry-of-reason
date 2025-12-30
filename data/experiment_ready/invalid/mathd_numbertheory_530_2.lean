import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_numbertheory_530
  (n k : ℕ)
  (h₀ : 0 < n ∧ 0 < k)
  (h₀ : (n : ℝ) / k < 6)
  (h₁ : (5 : ℝ) < n / k) :
  22 ≤ (nat.lcm n k) / (nat.gcd n k) :=
begin

  -- Since n/k < 6, we have n < 6k. Hence n/k < 5 if and only if n < 5k.
  have h₂ : (n < 6 * k) ∧ (n < 5 * k),
  by {split, exact h₀.right, exact lt_trans h₀.right h₁},
  -- Since n < 5k, we have gcd(n, k) ≤ 5.
  have h₃ : nat.gcd n k ≤ 5,
  by {calc nat.gcd n k ≤ 5 : by {exact nat.gcd_le_of_left_le (le_of_lt h₂.right)}
  ... ≤ nat.gcd n k : by refl},
  -- Since n < 6k, we have lcm(n, k) ≥ n.
  have h₄ : nat.lcm n k ≥ n,
  by {calc nat.lcm n k ≥ n : by {exact nat.lcm_le_of_left_le (le_of_lt h₂.left)}
  ... ≥ 1 : by refl},
  -- Since lcm(n, k) ≥ n, we have lcm(n, k) ≥ 22.
  have h₅ : nat.lcm n k
end
