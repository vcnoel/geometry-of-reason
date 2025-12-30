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

  -- 22 ≤ (n * k) / (gcd n k) by definition of lcm
  have h₂ : 22 ≤ (n * k) / (gcd n k),
  { rw nat.lcm_eq_gcd_mul, },
  -- (n / gcd n k) * (k / gcd n k) < 6
  have h₃ : (n / gcd n k) * (k / gcd n k) < 6,
  { rw h₀, },
  -- 5 < n / gcd n k
  have h₄ : 5 < n / gcd n k,
  { rw h₁, },
  -- 5 * 6 < n / gcd n k * k / gcd n k
  have h₅ : 5 * 6 < (n / gcd n k) * (k / gcd n k),
  { norm_num, },
  -- 5 * 6 < (n * k) / (gcd n k)^2
  have h₆ : 5 * 6 < (n * k) / (gcd n k)^2,
  { rw nat.gcd_mul_gcd_gcd, },
  -- (n * k)
end
