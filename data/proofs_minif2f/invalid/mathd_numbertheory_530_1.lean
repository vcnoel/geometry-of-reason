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

  have h₂ : (nat.lcm n k) / (nat.gcd n k) ≥ 5, by linarith,
  have h₃ : (nat.lcm n k) / (nat.gcd n k) ≥ 5, by linarith,
  have h₄ : (nat.lcm n k) / (nat.gcd n k) ≥ 6, by linarith,
  have h₅ : 6 ≤ (nat.lcm n k) / (nat.gcd n k), by linarith,
  have h₆ : 22 ≤ (nat.lcm n k) / (nat.gcd n k), by linarith,
  exact h₆,

end
